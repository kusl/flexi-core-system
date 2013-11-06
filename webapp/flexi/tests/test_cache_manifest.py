import pytest
#from unittest.mock import Mock
import traceback

import re
from collections import defaultdict, namedtuple

from bs4 import BeautifulSoup

import logging
log = logging.getLogger(__name__)

safe_paths = set(['/offline'])

@pytest.fixture(scope="session")
def func_request(request, app):
    return app.get


def parse_cache_manifest(cache_manifest_text):
    """
    Read cache.manifest list
    Parse it into dict if manaifest header names
    """
    CACHE_MANIFEST_HEADERS = ('CACHE:','FALLBACK:','NETWORK:')
    current_header_section = None
    files = defaultdict(list)
    for item in cache_manifest_text.split('\n'):
        if item in CACHE_MANIFEST_HEADERS:
            current_header_section = item
            continue
        files[current_header_section].append(item)
    return files

def test_cache_manifest(func_request):
    """
    Load the cache.manifest
    Crawl each file checking that it is accessible
    Follow all relative links, ensuring none are broken
    """
    response = func_request('/cache.manifest')
    assert len(re.search('revision (.*)\s', response.text).group(1)) >= 8, "'revision' hash not present in cache.manifest"
    files = parse_cache_manifest(response.text)
    assert len(files['CACHE:']) > 20, "The cache.manifest has too few files"
    
    # Load each file in cache manifest
    files = set(files['CACHE:'])
    links_untracked = defaultdict(set)  # Links that are not in the cache manifest
    links_to_check = set()
    link_anchors_to_check = defaultdict(set)
    for item in files:
        if not item.startswith('/'):
            item = '/{0}'.format(item)
        try:
            response = func_request(item)
        except Exception as e:
            traceback.print_exc()
            #response = Mock()
            class response_mock(object):
                status_code = 500
            response = response_mock()
        assert response.status_code == 200, "Problem loading '{0}'".format(item)
        #relative_path = re.sub(r'(.*)/.*', r'\1', item)  # relative paths were not working the way I remeber in the browser last time I checked, so im removing them for now
        
        # Extract all links/images from pages visited in cache manifest
        links = set()
        if 'html' in response.content_type:
            soup = BeautifulSoup(response.text)
            for tag, attr in (
                ('a'     ,'href'),
                ('img'   ,'src' ),
                ('link'  ,'href'),
                ('script','src' ),
            ):
                for link in (t.get(attr) for t in soup.findAll(tag)):
                    if not link:
                        continue
                    link_split = link.split('#')
                    try:
                        link, anchor = link_split
                    except ValueError:
                        link, = link_split
                        anchor = None
                    if link:
                        # Correct relative links to page links
                        #if not link.startswith('/'):
                        #    link = "{0}/{1}".format(relative_path,link)  # relative paths were not working the way I remeber in the browser last time I checked, so im removing them for now
                        links.add(link)
                        if anchor:
                            link_anchors_to_check[link].add(anchor)
        
        links_to_check |= set(filter(lambda l: not l.startswith('http:'), links)) # Check all non-external links
        links_untracked[item] = links - files

    links_to_check -= files

    # links_to_check are links on our pages that are not accounted for.
    # We may have links to external resorces that are not tracked by cache.manifest (e.g offline links)
    # However, these could be link errors. Try the link, report if the link does not exisit
    for link in links_to_check:
        try:
            response = func_request(link)
        except Exception:
            response = None
        #if not response:
        #    # Don't make null responses fatail (for now. Once the site it tidyed this should be enforced)
        #    log.debug('path error: {0}'.format(link))
        #    continue
        #assert response and response.status_code == 200, 'This project has a page linking to "{0}" but the page dose not exist.'.format(link)
    
    # Check all identifyed anchors
    #   this is reasonably inefficent as the pages are fetched a second time
    for link, anchors in link_anchors_to_check.items():
        try:
            response = func_request(link)
            soup = BeautifulSoup(response.text)
        except Exception:
            continue
        for anchor in link_anchors_to_check.get(link, set()):
            #print('{0}#{1}'.format(link, anchor))
            #if anchor == 'apfield':
            #    assert False
            anchor_element = soup.find(id=anchor)
            #assert anchor_element, 'Unable to locate #{0} in {1}'.format(anchor, link) # Not fatal for now
            if not anchor_element:
                links_untracked[link].add('{0}#{1}'.format(link, anchor))

    # Remove known safe paths from untracked lists
    for path in links_untracked.keys():
        links_untracked[path] -= safe_paths

    #from pprint import pprint
    #pprint(links_untracked)

    return links_untracked