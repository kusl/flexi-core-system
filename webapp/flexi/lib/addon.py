import os
import re
import operator
from functools import lru_cache, reduce

from ..lib.misc import file_scan, read_json, hash_files

import logging
log = logging.getLogger(__name__)

regex_file_filter_static   = re.compile(r'.*\.(js|css|jpg|png|ico)')
regex_file_filter_template = re.compile(r'.*\.mako')

class Mount(object):
    paths = {}
    
    def __init__(self, path, data={}):
        self.path = path
        for key, value in data.items():
            setattr(self, key, value)

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
    
    @lru_cache(maxsize=32)
    def hash(self):
        return hash_files(map(operator.attrgetter('absolute'), self.get_file_list()))

    def _transform_template_list(self, file_list):
        return [i for i in
            map(lambda f: f.relative.replace('.mako',''), filter(lambda f: not f.file.startswith('_'), file_list))
        ]
    

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

    @lru_cache(maxsize=32)
    def mounted(self):
        return \
            [i for i in
                map(lambda f: os.path.join('static', self.static_mount, f.relative), self.get_file_list('static') )
            ] + \
            self._transform_template_list(self.get_file_list('templates'))
