import os.path
from functools import lru_cache
import pyramid

from flexi.lib.misc import defaultdict_recursive


def get_mounts():
    return pyramid.threadlocal.get_current_registry().settings.get('mounts')


@lru_cache(maxsize=32)
def global_template_dict_tree_for_mounts(mount_ids):
    mounts = filter(lambda mount: not hasattr(mount,'id') or mount.id in mount_ids, get_mounts())
    # Create combined dict or dicts structure for the current mounts
    tree = defaultdict_recursive()
    for mount in mounts:
        def merge(destination, source):
            for key, value in source.items():
                if value:
                    merge(destination[key], value)
                else:
                    destination[key] = value
        merge(tree, mount._template_dict_tree())
    # Humm .. is this next bit needed? - as long as we NEVER modify the return
    # Convert defaultdict of defaultdicts into frozendict of frozendicts/strings
    return tree


def GlobalRootFactory(request):
    mount_ids = (mount.id for mount in get_mounts() if hasattr(mount,'id'))
    return FlexiResource(request, global_template_dict_tree_for_mounts(mount_ids))


class FlexiResource(object):
    def __init__(self, request, template_tree):
        self.tree = template_tree
        self.route = ()
    
    def __getitem__(self, key):
        self.route += (key,)
        return self
    
    def _get_trees(self, route=(), key=None):
        if not route:
            route = self.route
        if key:
            route += (key,)
        trees = []
        tree = self.tree
        trees.append(tree)
        for value in route:
            tree = tree[value] # ?? WTF?? 'value'
            trees.append(tree)
        return trees
    
    @staticmethod
    def _get_single_key(tree):
        """
        """
        single = None
        for key, value in tree.items():
            if not value:
                if single:
                    return None
                single = key
        return single
    
    def get_current_tree(self):
        return self._get_trees()[-1]
    def get_parent_tree(self):
        return self._get_trees()[-2]
    
    def get_template(self, route=None):
        if not route:
            route = self.route
        trees = self._get_trees(route)
        current_tree = trees[-1]
        # Leaf node
        if not current_tree:
            return os.path.join(*route)
        # Single template
        single_key = self._get_single_key(current_tree)
        if single_key:
            return os.path.join(*(route+(single_key,)))
        if 'index' in current_tree:
            return os.path.join(*(route+('index',)))
    
    def get_route(self):
        return self.route