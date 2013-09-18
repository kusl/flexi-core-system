from pyramid.view import view_config
from pyramid.renderers import render_to_response

from ..lib.misc import file_scan, hash_files
import operator
import re

@view_config(route_name='cache_manifest')
def cache_manifest(request):
    file_list = []
    
    #file_list += file_scan(request.registry.settings['content.path.templates'], template_regex)
    
    _hash = '1234'
    file_list = []
    cache = dict(
        revision = _hash,
        cache = file_list,
    )
    return render_to_response('cache.manifest.mako', dict(cache=cache), request=request)
