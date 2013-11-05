from pyramid.view import view_config
from pyramid.response import Response
from pyramid.renderers import render_to_response

from pyramid.httpexceptions import HTTPForbidden
from flexi.lib.status import get_page_status

import logging
log = logging.getLogger(__name__)

#-------------------------------------------------------------------------------
# Misc
#-------------------------------------------------------------------------------

@view_config(route_name='favicon')
def favicon(request):
    return Response('')


@view_config(route_name='status')
def status(request):
    """
    Web frontend diagnostics of broken pages
    """
    if not request.registry.settings.get('pyramid.debug_templates'):
        raise HTTPForbidden()
    
    from flexi.tests.test_cache_manifest import test_cache_manifest
    from pyramid.request import Request
    #from unittest.mock import patch
    #with patch.dict(request.registry.settings, {'template.offline.enabled':True}):
    python_3_2_does_not_have_mock_builtin = request.registry.settings['template.offline.enabled']
    request.registry.settings['template.offline.enabled'] = True
    links_untracked = test_cache_manifest(lambda path: request.invoke_subrequest(Request.blank(path)))
    request.registry.settings['template.offline.enabled'] = python_3_2_does_not_have_mock_builtin
    
    return render_to_response(
        '_status.mako',
        dict(status=links_untracked),
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
    template_path = request.context.template
    return template_response(request, template_path)
    
