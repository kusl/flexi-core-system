PROJECT=flexi

INI_DEV  = development.ini
INI_PROD = production.ini
INI_VAGRANT = vagrant.ini

VER_JQUERY = 1.9.1
VER_JQUERYUI = 
VER_BOOTSTRAP = 

help:
	# Usage: make <target>, where target is
	# setup          -- setup python egg & install dependencys/env if needed
	# run            -- run the site in development mode
	# run_production -- run in production mode
	# clean          -- reset the folder to clean git checkout (removes virtual python env)
	# shell

env:
	if dpkg -s python-virtualenv ; then \
		echo virtualenv already installed; \
	else \
		echo installing virtualenv; \
		sudo apt-get install python-virtualenv -y ; \
	fi
	if dpkg -s python3-setuptools ; then \
		echo python 3 already installed; \
	else \
		echo installing python 3; \
		sudo apt-get install python3-setuptools -y ; \
	fi
	# Reference - http://docs.pylonsproject.org/projects/pyramid/en/1.3-branch/narr/install.html
	virtualenv --no-site-packages -p python3 env
	env/bin/easy_install pyramid

ext:
	mkdir ext
ext/jquery-${VER_JQUERY}.js: ext
	touch ext/jquery-${VER_JQUERY}.js
	#cd ext ; curl http://stuff.com/jquery-${VER_JQUERY}.js -O
	cd ${PROJECT}/assets/js ; ln -s ../../../ext/jquery-${VER_JQUERY}.js jquery.js
ext_: ext/jquery-${VER_JQUERY}.js
	echo "ext_all"

setup: env
	env/bin/python setup.py develop

run:
	env/bin/pserve --reload $(INI_DEV)

run_production: ini_production
	env/bin/pserve $(INI_PROD)

shell:
	env/bin/pshell $(INI_DEV)

ini_vagrant:
	env/bin/python3 $PROJECT/scripts/make_ini.py vagrant

start_webapp_daemon: ini_vagrant
	start-stop-daemon --start --pidfile webapp.pid --name flexi --make-pidfile --background --exec /bin/bash -- -c "$(CURDIR)/env/bin/pserve $(CURDIR)/$(INI_VAGRANT)"
stop_webapp_daemon:
	start-stop-daemon --stop  --pidfile webapp.pid && rm webapp.pid
