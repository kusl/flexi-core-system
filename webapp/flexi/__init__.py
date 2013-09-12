# Pyramid imports
from pyramid.config import Configurator
from pyramid.request import Request
import pyramid.events

# Beaker Sessions
import pyramid_beaker

# Other imports
import re

# Package Imports
#from .traversal import GlobalRootFactory
from .lib.misc import convert_str_with_type
from .templates import helpers as template_helpers


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
    for key in config.registry.settings.keys():
        config.registry.settings[key] = convert_str_with_type(config.registry.settings[key])
    
    # Routes -------------------------------------------------------------------
    
    # Static Routes
    config.add_static_view(name='assets', path=settings["static.assets"]) #cache_max_age=3600
    config.add_static_view(name='static', path=settings["static.content"])
    
    config.add_route('root', '/') # To be replaced with traversal eventually
    config.add_route('mako_renderer', '/{path:.*}') # To be replaced with traversal eventually
    
    # Events -------------------------------------------------------------------
    config.add_subscriber(add_template_helpers_to_event, pyramid.events.BeforeRender)
    
    # Return -------------------------------------------------------------------
    config.scan(ignore='.tests')
    return config.make_wsgi_app()


def add_template_helpers_to_event(event):
    event['h'] = template_helpers
    event['a'] = template_helpers.a # Special case for transition (should be replaced in future)
