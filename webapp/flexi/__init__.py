# Pyramid imports
from pyramid.config import Configurator
from pyramid.request import Request
from pyramid.asset import abspath_from_asset_spec
import pyramid.events

# Beaker Sessions
import pyramid_beaker

# Other imports
import os
import re
import operator

# Package Imports
#from .traversal import GlobalRootFactory
from .lib.misc import convert_str_with_type
from .templates import helpers as template_helpers
from .scripts.addon_content_scan import addon_content_scan

def main(global_config, **settings):
    """
        This function returns a Pyramid WSGI application.
    """
    # Setup --------------------------------------------------------------------
    
    # Pyramid Global Settings
    config = Configurator(settings=settings) #, root_factory=GlobalRootFactory
    
    # Beaker Session Manager
    session_factory = pyramid_beaker.session_factory_from_settings(settings)
    config.set_session_factory(session_factory)
    
    # Parse/Convert setting keys that have specifyed datatypes
    settings = config.registry.settings
    for key in settings.keys():
        settings[key] = convert_str_with_type(settings[key])
    
    for key in ['content.path.static', 'content.path.addons', 'mako.directories']:
        settings[key] = abspath_from_asset_spec(settings['content.path'] + settings[key])
    
    # Addon Content Scan -------------------------------------------------------
    
    settings['addons'] = addon_content_scan(settings["content.path.addons"], settings['content.path.addons.identifyer'])
    addons = settings['addons'].values()
    
    # Routes -------------------------------------------------------------------
    
    # Static Routes
    config.add_static_view(name='assets', path=settings["static.assets"]) #cache_max_age=3600
    for addon in filter(operator.itemgetter('static_mount'), addons):
        config.add_static_view(name='static/{0}'.format(addon['static_mount']), path=os.path.join(addon['folder'],'static'))
    config.add_static_view(name='static', path=settings["content.path.static"])
    
    # Template Routes
    config.add_route('root', '/') # To be replaced with traversal eventually
    config.add_route('mako_renderer', '/{path:.*}') # To be replaced with traversal eventually
    
    settings['mako.directories'] = [settings['mako.directories']]
    for addon in addons:
        settings['mako.directories'].append(os.path.join(addon['folder'],'templates'))
    
    # Events -------------------------------------------------------------------
    config.add_subscriber(add_template_helpers_to_event, pyramid.events.BeforeRender)
    
    # Return -------------------------------------------------------------------
    config.scan(ignore='.tests')
    return config.make_wsgi_app()


def add_template_helpers_to_event(event):
    event['h'] = template_helpers
    event['a'] = template_helpers.a # Special case for transition (should be replaced in future)
