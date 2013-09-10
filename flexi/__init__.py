# Pyramid imports
from pyramid.config import Configurator
from pyramid.request import Request
import pyramid.events

# Beaker Sessions
import pyramid_beaker

# Other imports
import re

# Package Imports
from .lib.misc import convert_str_with_type
from .templates import helpers as template_helpers


def main(global_config, **settings):
    """
        This function returns a Pyramid WSGI application.
    """
    # Setup --------------------------------------------------------------------

    # Pyramid Global Settings
    config = Configurator(settings=settings) #, autocommit=True
    
    # Beaker Session Manager
    session_factory = pyramid_beaker.session_factory_from_settings(settings)
    config.set_session_factory(session_factory)
    
    # Parse/Convert setting keys that have specifyed datatypes
    for key in config.registry.settings.keys():
        config.registry.settings[key] = convert_str_with_type(config.registry.settings[key])
        
    # Routes -------------------------------------------------------------------
    
    # Static Routes
    config.add_static_view(name='static', path='flexi:{0}'.format(settings["static.assets"])) #cache_max_age=3600 # settings["static.assets"]    

    config.add_route('home', '/')
        
    # Events -------------------------------------------------------------------
    config.add_subscriber(add_template_helpers_to_event, pyramid.events.BeforeRender)
    
    # Return -------------------------------------------------------------------
    config.scan(ignore='.tests')
    return config.make_wsgi_app()


def add_template_helpers_to_event(event):
    event['h'] = template_helpers

    