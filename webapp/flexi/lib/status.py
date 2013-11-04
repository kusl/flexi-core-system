from pyramid.request import Request

from flexi.tests.test_cache_manifest import test_cache_manifest

def get_page_status(request):
    response = request.invoke_subrequest(Request.blank('/cache.manifest'))
    #import pdb ; pdb.set_trace()
    return {}
