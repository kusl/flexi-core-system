import os.path
from functools import lru_cache
from collections import defaultdict
import pyramid

from pyramid.traversal import resource_path

from flexi.lib.misc import defaultdict_recursive


def get_mounts():
    return pyramid.threadlocal.get_current_registry().settings.get('mounts')

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

@lru_cache(maxsize=32)
def get_template_root(mount_ids):
    return TemplateResourceRoot(global_template_dict_tree_for_mounts(mount_ids))

def GlobalRootFactory(request):
    mount_ids = (mount.id for mount in get_mounts() if hasattr(mount,'id'))
    return get_template_root(mount_ids)

class TemplateResource(object):
    def __init__(self, root, route=()):
        self.root = root
        self.route = route
    
    @property
    def tree(self):
        if hasattr(self, 'root_tree'):
            return self.root_tree
        return self.root.root_tree
    
    def __getitem__(self, key):
        return TemplateResource(self.root, self.route+(key,))
    
    @property
    def __parent__(self):
        if self.route:
            return TemplateResource(self.root, self.route[:-1])
    
    @property
    def __name__(self):
        if self.route:
            return self.route[-1]
    
    def keys(self):
        return self.current_tree.keys()
    def values(self):
        return (self.__getitem__(key) for key in self.keys())
    def items():
        return zip(self.keys(), self.values())
    
    @property
    def name(self):
        """
        Visible display name
        """
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
    
    @property
    def template(self):
        current_tree = self.current_tree
        # Leaf node
        if not current_tree:
            return os.path.join(*self.route)
        leafs = self.leafs
        if len(leafs)==1:
            return os.path.join(*(self.route+(leafs.pop(),)))
        if 'index' in leafs:
            return os.path.join(*(self.route+('index',)))

    @property
    def path(self):
        return self.root._path_shortest(self.template)


class TemplateResourceRoot(TemplateResource):
    def __init__(self, root_tree):
        self.root_tree = root_tree
        super().__init__(self)
        self.path_map = self._generate_path_map()
        self.paths = self._generate_paths()
    
    def _generate_path_map(self):
        """
        Generate every possible route to get to every template in the tree
        indexed by actual template filepath
        Typically only called on root resource
        """
        path_map = defaultdict(list)
        def append_paths(resource):
            path_map[resource.template].append(resource_path(resource))
            for sub_resource in resource.values():
                append_paths(sub_resource)
        append_paths(self)
        return path_map

    def _generate_paths(self):
        """
        Return a list of shortest paths for each template
        """
        return sorted(filter(None,map(self._path_shortest, self.path_map.keys())))

    def _path_shortest(self, template):
        """
        Used by sub resorces to return a true single path to the template
        """
        if template:
            return sorted(self.path_map[template], key=len)[0]

