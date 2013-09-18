<% request.response.content_type = "text/cache-manifest; charset=utf-8"  %>\
CACHE MANIFEST
% if cache.get('revision'):
# revision ${cache['revision']}
% endif
% if cache.get('cache'):
CACHE:
% for location in cache['cache']:
${location}
% endfor
% endif
% if cache.get('fallbacks'):
FALLBACK:
% for location, fallback in cache['fallbacks']:
${location} ${fallback}
% endfor
% endif
% if cache.get('network'):
NETWORK:
% for location in cache['network']:
${location}
% endfor
% endif