from pyramid.view import view_config
from pyramid.renderers import render_to_response

from ..lib.misc import file_scan, hash_files
import operator
import re

@view_config(route_name='cache_manifest')
def cache_manifest(request):
    template_regex = re.compile(r'.*\.mako')
    file_list = file_scan(request.registry.settings['content.path.templates'], template_regex)
    
    for addon_name, addon in request.registry.settings['addons'].items():
        #if addon_name in include_addons:
            file_list += file_scan(addon['path_templates'], template_regex)
    
    # TODO - use named tuple - this index stuff is readable
    _hash = hash_files(map(lambda f: f[2], file_list))
    file_list = map(lambda x: x[3].replace('.mako',''), filter(lambda x: not x[1].startswith('_'), file_list))
    cache = dict(
        revision = _hash,
        cache = file_list,
    )
    return render_to_response('cache.manifest.mako', dict(cache=cache), request=request)
