import os
import json
import re

from ..lib.misc import get_fileext

import logging
log = logging.getLogger(__name__)


def read_json(filename):
    with open(filename, 'r') as source:
        #try:
        if hasattr(source,'read'):
            data = source.read()
        if isinstance(data, bytes):
            data = data.decode('utf-8')
        return json.loads(data)
        #except Exception as e:
        #    log.warn('Failed to process %s' % source)


def addon_content_scan(path, file_regex):
    if isinstance(file_regex, str):
        file_regex = re.compile(file_regex)
    log.debug('Scanning for addons in {0}'.format(path))
    addons = {}
    for root, dirs, files in os.walk(path):
        for json_filename in [f for f in files if get_fileext(f)=='json']:
            if file_regex.match(json_filename):
                absolute_filename = os.path.join(root, json_filename)
                addon = read_json(absolute_filename)
                log.info('Addon - {0}'.format(addon['name']))
                addon['folder'] = root
                addons[addon['name']] = addon
    return addons
