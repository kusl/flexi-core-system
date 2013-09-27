import pytest

INI = 'test.ini'

# Fixtures ---------------------------------------------------------------------

@pytest.fixture(scope="session")
def settings(request, ini_file=INI):
    from pyramid.paster import get_appsettings
    return get_appsettings(ini_file)

@pytest.fixture(scope="session")
def app(request, settings):
    from webtest import TestApp
    from flexi import main as flexi_main
    
    #print('setup WebApp')
    app = TestApp(flexi_main({}, **settings))
    
    def finalizer():
        #print('tearDown WebApp')
        pass
    request.addfinalizer(finalizer)
    
    return app
