from pyramid.view import view_config
from pyramid.response import Response
from pyramid.renderers import render_to_response

import logging
log = logging.getLogger(__name__)

#-------------------------------------------------------------------------------
# Misc
#-------------------------------------------------------------------------------

@view_config(route_name='root')
def root(request):
    request.matchdict['path'] = 'index'
    return mako_renderer(request)

@view_config(route_name='mako_renderer')
def mako_renderer(request):
    return render_to_response(
        '{0}.mako'.format(request.matchdict.get('path','index')), #flexi:templates/html/
        request.matchdict,
        request=request,
    )

@view_config(route_name='favicon')
def favicon(request):
    return Response('')