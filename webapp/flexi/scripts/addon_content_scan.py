from ..lib.misc import file_scan, read_json

import logging
log = logging.getLogger(__name__)

def addon_content_scan(path, file_regex):
    addons = {}
    for root, filename, joined_path, relative_joined_path in file_scan(path, file_regex):
        addon = read_json(joined_path)
        log.info('Addon - {0}'.format(addon['name']))
        addon['folder'] = root
        addons[addon['name']] = addon
    return addons
