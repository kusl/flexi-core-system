from pyramid.view import view_config
from pyramid.response import Response
#from pyramid.renderers import render_to_response

@view_config(route_name='cache_manifest')
def cache_manifest(request):
    return Response('Test')
    #return render_to_response('Test', {}, request=request)
