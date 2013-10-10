import os
import re
import operator
from functools import lru_cache, reduce

from ..lib.misc import file_scan, read_json, hash_files

import logging
log = logging.getLogger(__name__)

regex_file_filter_static   = re.compile(r'.*\.(js|css|jpg|png|ico|woff|ttf|svg)')
regex_file_filter_template = re.compile(r'.*\.mako')


class Mount(object):
    
    def __init__(self, path, data={}):
        self.path = path
        for key, value in data.items():
            setattr(self, key, value)
        self.paths = {}

    def add_path(self, name, path=None, file_filter=None):
        if not path:
            path = name
        self.paths[name] = dict(path=path, file_filter=file_filter)
    
    def get_path(self, name=None):
        if not name:
            return self.path
        return os.path.join(self.path, self.paths[name]['path'])
        
    def get_file_filter(self, name=None):
        return self.paths[name]['file_filter']
    
    @lru_cache(maxsize=32)
    def get_file_list(self, name=None):
        if name:
            return file_scan(self.get_path(name), self.get_file_filter(name))
        else:
            return reduce(operator.add, (self.get_file_list(key) for key in self.paths.keys()))
    
    @property
    @lru_cache(maxsize=32)
    def hash(self):
        return hash_files(map(operator.attrgetter('absolute'), self.get_file_list()))

    def _transform_static_list(self, name='static', path_join=[]):
        return list(
            map(lambda f: os.path.join(*path_join+[f.relative]), self.get_file_list(name) )
        ) 
    
    def _transform_template_list(self, name='templates'):
        return list(
            map(lambda f: f.relative.replace('.mako',''), filter(lambda f: not f.file.startswith('_'), self.get_file_list(name)))
        )
    

class Addon(Mount):
    """
    Wrap and Addon Folder
    Allows clean programatic access 
    """

    @staticmethod
    def scan(path, data_file_regex):
        addons = {}
        for f in file_scan(path, data_file_regex):
            addon = Addon(f.folder, data=read_json(f.absolute))
            addons[addon.name] = addon
        return addons
    
    def __init__(self, path, data):
        super().__init__(path, data)
        log.info('Addon - {0}'.format(data['name']))
        self.add_path('static'   , file_filter=regex_file_filter_static  )
        self.add_path('templates', file_filter=regex_file_filter_template)

    @property
    @lru_cache(maxsize=32)
    def mounted(self):
        return \
            self._transform_static_list  (name='static', path_join=['static', self.static_mount])+ \
            self._transform_template_list(name='templates')
