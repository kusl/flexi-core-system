import operator
import re

from ..lib.misc import file_scan, hash_files
from functools import reduce

from pyramid.view import view_config
from pyramid.renderers import render_to_response


@view_config(route_name='cache_manifest')
def cache_manifest(request):
    mounts = request.registry.settings['mounts']
    
    cache = dict(
        revision = "".join(map(operator.attrgetter('hash'), mounts)),
        cache = reduce(operator.add, map(operator.attrgetter('mounted'), mounts)),
    )
    return render_to_response('_cache.manifest.mako', dict(cache=cache), request=request)
