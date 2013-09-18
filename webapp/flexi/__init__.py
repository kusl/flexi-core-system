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
from .lib.addon import Mount, Addon, regex_file_filter_static, regex_file_filter_template

# HACK! - Monkeypatch Mako 0.8.1 - HACK!
import mako.filters
html_escape_mako = mako.filters.html_escape
mako.filters.html_escape = lambda s: html_escape_mako(str(s) if not isinstance(s, str) else s)


def main(global_config, **settings):
    """
        This function returns a Pyramid WSGI application.
    """
    # Setup -------------------------------------------------------------------
    
    # Pyramid Global Settings
    config = Configurator(settings=settings) #, root_factory=GlobalRootFactory
    
    # Beaker Session Manager
    session_factory = pyramid_beaker.session_factory_from_settings(settings)
    config.set_session_factory(session_factory)
    
    # Parse/Convert setting keys that have specifyed datatypes
    settings = config.registry.settings
    for key in settings.keys():
        settings[key] = convert_str_with_type(settings[key])
    
    # Core Content Mount Tracker ----------------------------------------------
    settings['content.path.absolute'] = abspath_from_asset_spec(settings['content.path'])
    
    mount_sys = Mount(path=abspath_from_asset_spec('flexi:.'))
    mount_sys.add_path('assets'   , file_filter=regex_file_filter_static)
    mount_sys.add_path('templates', file_filter=regex_file_filter_template)
    
    mount_content = Mount(path=settings['content.path.absolute'])
    mount_content.add_path('static'   , file_filter=regex_file_filter_static  )
    mount_content.add_path('templates', file_filter=regex_file_filter_template)
    
    # Addon Content Scan & Trackers -------------------------------------------
    
    settings['addons'] = Addon.scan(
        path=os.path.join(settings['content.path.absolute'], settings['content.path.addons']),
        data_file_regex=settings['content.path.addons.identifyer']
    )
    addons = settings['addons'].values()
    
    # Routes ------------------------------------------------------------------
    
    # Static Routes
    config.add_static_view(name='assets', path=mount_sys.get_path('assets')) #cache_max_age=3600
    for addon in filter(operator.attrgetter('static_mount'), addons):
        config.add_static_view(name='static/{0}'.format(addon.static_mount), path=addon.get_path('static'))
    config.add_static_view(name='static', path=mount_content.get_path('static'))
    
    settings['mako.directories'] = [
        mount_sys.get_path('templates'),
        mount_content.get_path('templates'),
    ]
    for addon in addons:
        settings['mako.directories'].append(addon.get_path('templates'))
    
    # Template Routes
    config.add_route('root', '/') # To be replaced with traversal eventually
    config.add_route('cache_manifest', 'cache.manifest')
    config.add_route('favicon', 'favicon.ico') # Surpress repeated requests
    config.add_route('mako_renderer', '/{path:.*}') # To be replaced with traversal eventually
    
    # Events ------------------------------------------------------------------
    config.add_subscriber(add_template_helpers_to_event, pyramid.events.BeforeRender)
    
    # Return ------------------------------------------------------------------
    config.scan(ignore='.tests')
    return config.make_wsgi_app()


def add_template_helpers_to_event(event):
    event['h'] = template_helpers
    event['a'] = template_helpers.a # Special case for transition (should be replaced in future)
