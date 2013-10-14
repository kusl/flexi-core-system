import operator
import re

from ..lib.misc import file_scan, hash_files, random_string
from functools import reduce

from pyramid.view import view_config
from pyramid.renderers import render_to_response

import logging
log = logging.getLogger(__name__)


random_revision = random_string()


@view_config(route_name='cache_manifest')
def cache_manifest(request):
    log.debug('cache.manifest')
    mounts = request.registry.settings['mounts']
    request.response.cache_expires(request.registry.settings.get('template.offline.cache_expires'))
    if request.registry.settings['template.offline.enabled']:
        files = reduce(operator.add, map(operator.attrgetter('mounted'), mounts))
        files.remove('offline')
        files.append('/')
        cache = dict(
            revision = "".join(map(operator.attrgetter('hash'), mounts)),
            cache = files,
        )
    else:
        cache = dict(
            revision = random_revision,
            network = '*',
        )
    return render_to_response('_cache.manifest.mako', dict(cache=cache), request=request)
