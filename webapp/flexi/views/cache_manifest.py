from pyramid.view import view_config
from pyramid.renderers import render_to_response

@view_config(route_name='cache_manifest')
def cache_manifest(request):
    cache = dict(
        revision=1,
        cache=[
            '/index',
        ],
    )
    return render_to_response('cache.manifest.mako', dict(cache=cache), request=request)
