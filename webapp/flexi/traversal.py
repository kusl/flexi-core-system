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
    return FlexiResource(global_template_dict_tree_for_mounts(mount_ids))


class FlexiResource(object):
    def __init__(self, template_tree, route=()):
        self.tree = template_tree
        self.route = route
    
    def __getitem__(self, key):
        return FlexiResource(self.tree, self.route+(key,))
    
    @property
    def __parent__(self):
        if self.route:
            return FlexiResource(self.tree, self.route[:-1])
    
    @property
    def __name__(self):
        if self.route:
            return self.route[-1]
    
    @property
    def name(self):
        return self.__name__.capitalize().replace('_',' ')
    
    @lru_cache(maxsize=32)
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
    
    @property
    def current_tree(self):
        return self._get_trees()[-1]
    
    @property
    def leafs(self):
        return [key for key, value in self.current_tree.items() if not value]
    
    def get_template(self):
        current_tree = self.current_tree
        # Leaf node
        if not current_tree:
            return os.path.join(*self.route)
        leafs = self.leafs
        if len(leafs)==1:
            return os.path.join(*(self.route+(leafs.pop(),)))
        if 'index' in leafs:
            return os.path.join(*(self.route+('index',)))
