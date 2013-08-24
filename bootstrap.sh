#!/bin/bash

# upgrades and installs all dependencies
apt-get update
apt-get install -y build-essential ruby1.9.1-full libxml2 libxml2-dev libxslt1-dev postgresql redis-server nodejs git libpq-dev

# Virtualbox guest utils, for automatically mounting /vagrant
apt-get install -y linux-headers-$(uname -r) virtualbox-guest-utils

# make sure to use ruby1.9.1 as ruby
update-alternatives --set ruby /usr/bin/ruby1.9.1
gem install bundler

service postgresql restart
sudo -u postgres -s psql -f /vagrant/createuser.psql
