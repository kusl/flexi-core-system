from pyramid.view import view_config
from pyramid.renderers import render_to_response

import logging
log = logging.getLogger(__name__)

#-------------------------------------------------------------------------------
# Misc
#-------------------------------------------------------------------------------
@view_config(route_name='home')
def home(request):
    return render_to_response(
        'flexi:templates/html/{0}.mako'.format('home'),
        request.matchdict,
        request=request,
    )
