from pyramid.view import view_config
from pyramid.response import Response
from pyramid.renderers import render_to_response

from pyramid.httpexceptions import HTTPForbidden

import logging
log = logging.getLogger(__name__)

#-------------------------------------------------------------------------------
# Misc
#-------------------------------------------------------------------------------

@view_config(route_name='favicon')
def favicon(request):
    return Response('')


#@view_config(route_name='status')
def status(request):
    """
    Web frontend diagnostics of broken pages
    """
    if not request.registry.settings.get('debug'):
        raise HTTPForbidden()
    status = {}  # Unimplemented
    return render_to_response(
        '_status.mako',
        dict(status=status),
        request=request,
    )

def template_response(request, template_path):
    log.debug(template_path)
    template_variables = dict(
        asset_url='/assets/',  # Could be replaced with request.registery.settings.mounts?
        static_url='/static/',
    )
    if request.matchdict:
        template_variables.update(request.matchdict)
    return render_to_response(
        '{0}.mako'.format(template_path),
        template_variables,
        request=request,
    )

def traversal_template(request):
    template_path = request.context.get_template()
    return template_response(request, template_path)
    
