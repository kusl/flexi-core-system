import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
README = open(os.path.join(here, 'README.md')).read()
#CHANGES = open(os.path.join(here, 'CHANGES.txt')).read()

install_requires = [
    'pyramid',
    'pyramid_mako',
    'pyramid_tm',
    'waitress',
    'pyramid_beaker', # Session/Cache framework
    'decorator',
    'beautifulsoup4',
    'python-dateutil',
    'dogpile.cache',
]
test_requires = [
    'pyramid_debugtoolbar',
    'pytest',
    'webtest',
    #'pudb',
]
# http://stackoverflow.com/questions/4734292/specifying-where-to-install-tests-require-dependecies-of-a-distribute-setuptoo


setup(name='flexi',
    version='0.0',
    description='Flexi Core System',
    long_description=README, #+ '\n\n' +  CHANGES,
    classifiers=[
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Framework :: Pyramid",
        "Topic :: Internet :: WWW/HTTP",
        "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
    ],
    author='',
    author_email='',
    url='http://github.com/flexi-system/flexi-core-system',
    keywords='web wsgi pyramid bootstrap rpg mobile',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    test_suite='py.test',
    tests_require = test_requires,
    install_requires=install_requires + test_requires,
    entry_points="""\
    [paste.app_factory]
    main = flexi:main
    [console_scripts]
    """,
)
