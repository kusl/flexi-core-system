"""
Template helpers
These will be accessible as 'h.' in all mako templates
"""
import logging
log = logging.getLogger(__name__)

import random

from ..lib.misc import get_fileext, substring_in

def a(path):
    return path

def static(path):
    return '/static/'+path
