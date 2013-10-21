# Core imports
import os
import re
import operator
from functools import reduce

# Pyramid imports
from pyramid.config import Configurator
from pyramid.request import Request
from pyramid.asset import abspath_from_asset_spec
from pyramid.scripts.pserve import add_file_callback
import pyramid.events

# Beaker Sessions
import pyramid_beaker

# Package Imports
from .traversal import GlobalRootFactory
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
    config = Configurator(settings=settings, root_factory=GlobalRootFactory)
    config.include('pyramid_mako')
    
    # Beaker Session Manager
    session_factory = pyramid_beaker.session_factory_from_settings(settings)
    config.set_session_factory(session_factory)
    
    # Parse/Convert setting keys that have specifyed datatypes
    settings = config.registry.settings
    for key in settings.keys():
        settings[key] = convert_str_with_type(settings[key])
    
    # Core Content Mount Tracker ----------------------------------------------
    
    mount_sys = Mount(path=abspath_from_asset_spec('flexi:.'))
    mount_sys.add_path('assets'   , file_filter=regex_file_filter_static)
    mount_sys.add_path('templates', file_filter=regex_file_filter_template)
    mount_sys.mounted = mount_sys._transform_template_list() + mount_sys._transform_static_list(name='assets', path_join=['assets'])

    # Addon Content Scan & Trackers -------------------------------------------
    
    settings['content.path.absolute']        = abspath_from_asset_spec(settings['content.path']       )
    settings['content.path.addons.absolute'] = abspath_from_asset_spec(settings['content.path.addons'])
    
    addon_core = Addon(path=settings['content.path.absolute'], data=dict(name='Core', static_mount=''))
    settings['addons'] = Addon.scan(
        path=settings['content.path.addons.absolute'],
        data_file_regex=settings['content.path.addons.identifyer']
    )
    addons = list(settings['addons'].values()) + [addon_core]  # Core is added last because if it first in the mount order it wont surface the addon content
    
    settings['mounts'] = [mount_sys] + addons
    
    # Server Researt on change -----------------------------------------------
    
    # Restart the server on content file change
    # If any of the mounted content files change, then we want the cache.manifest hash to change
    add_file_callback(lambda:  map(operator.attrgetter('absolute'), reduce(operator.add, (mount.get_file_list() for mount in settings['mounts']))))
    
    # Routes ------------------------------------------------------------------
    
    # Static Routes
    config.add_static_view(name='assets', path=mount_sys.get_path('assets')) #cache_max_age=3600
    for addon in addons:
        config.add_static_view(name='static/{0}'.format(addon.static_mount), path=addon.get_path('static'))
    
    settings['mako.directories'] = [
        mount_sys.get_path('templates'),
    ]
    for addon in addons:
        settings['mako.directories'].append(addon.get_path('templates'))
    
    # View Routes
    config.add_route('cache_manifest', 'cache.manifest')
    config.add_route('favicon', 'favicon.ico') # Surpress repeated requests
    
    # Views -------------------------------------------------------------------
    
    config.add_view('flexi.views.misc.traversal_template', context='flexi.traversal.FlexiResource')
    
    # Events ------------------------------------------------------------------
    config.add_subscriber(add_template_helpers_to_event, pyramid.events.BeforeRender)
    
    # Return ------------------------------------------------------------------
    config.scan(ignore='.tests')
    return config.make_wsgi_app()


def add_template_helpers_to_event(event):
    event['h'] = template_helpers
    event['a'] = template_helpers.a # Special case for transition (should be replaced in future)
