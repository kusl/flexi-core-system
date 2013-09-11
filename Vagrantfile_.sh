#!/usr/bin/env bash

set -e

# Variables --------------------------------------------------------------------

HOME="/home/vagrant"
SHARE="/vagrant"
GIT_REPO="https://github.com/flexi-system/flexi-core-system.git"
GIT_PROJECT_NAME="flexi-core-system"
INSTALLED_FILE="$HOME/.installed"
# Check if installation required

if [ -f "$INSTALLED_FILE" ]
then
	echo "Install previously completed"
else
	echo "Installing packages"

# Root Setup -------------------------------------------------------------------

#if dpkg -s git ; then
#    echo prerequesits already installed
#else
apt-get update
apt-get install -y git make
#fi


# User Setup -------------------------------------------------------------------

sudo -u vagrant sh << EOF
set -e

# Vagrant does not update the HOME env when switching to normal 'vagrant' user
HOME=$HOME
cd $HOME
#GIT_PROJECT_NAME="flexi-core-system"


if [ -f "$GIT_PROJECT_NAME" ]
then
	echo "codebase already checked out"
else
	git clone $GIT_REPO
fi

# Setup Website Python Project
cd $HOME/$GIT_PROJECT_NAME
make setup


echo 'Installation complete'
touch $INSTALLED_FILE

EOF

fi


# VM Startup -------------------------------------------------------------------
sudo -u vagrant sh << EOF
set +e
cd $HOME/$GIT_PROJECT_NAME
echo 'Updating repo'
git pull
echo 'Start server daemon'
make start_webapp_daemon
EOF