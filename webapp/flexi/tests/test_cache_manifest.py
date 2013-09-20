import re
from collections import defaultdict


def test_cache_manifest(app):
    """
    Load the cache.manifest
    Crawl each file checking that it is accessible
    Follow all relative links, ensuring none are broken
    """
    CACHE_MANIFEST_HEADERS = ('CACHE:','FALLBACK:','NETWORK:')
    
    response = app.get('/cache.manifest')
    
    # Check a hash is present in the cache
    assert len(re.search('revision (.*)\s', response.text).group(1)) > 8
    
    # Read cache.manifest list
    current_header_section = None
    files = defaultdict(list)
    for item in response.text.split('\n'):
        if item in CACHE_MANIFEST_HEADERS:
            current_header_section = item
            continue
        files[current_header_section].append(item)
    
    assert len(files['CACHE:']) > 20
    
    # Load each file in cache manifest
    for item in files['CACHE:']:
        if not item.startswith('/'):
            item = '/{0}'.format(item)
        response = app.get(item)
        assert response.status_code == 200

        # TODO - if content type = html -> beautiful soup each page and follow all relative links
