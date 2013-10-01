"""
Template helpers
These will be accessible as 'h.' in all mako templates
"""
import logging
log = logging.getLogger(__name__)

import re
import random

from ..lib.misc import OrderedDefaultdict

def a(path):
    return path

def encode_id(*items):
    """
    Safe encoder to transform 'title' string to 'id' string. Remove spaces and lowercase 
    """
    # TODO urlencode
    return "-".join(re.sub(r'[^0-9a-zA-Z]','_', item.lower()) for item in items)

def folder_path(template):
    """
    Reflect to find the template path hirerachy
    """
    return template.module.__name__.split('_')[:-2]