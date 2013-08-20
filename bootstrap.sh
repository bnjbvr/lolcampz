#!/bin/bash

# upgrades and installs all dependencies
apt-get update
apt-get dist-upgrade -y
apt-get remove --purge -y ruby1.8*
apt-get install -y build-essential ruby1.9.1-full libxml2 libxml2-dev libxslt1-dev postgresql redis-server nodejs git ruby-bundler libpq-dev

service postgresql restart
sudo -u postgres -s psql -f /vagrant/createuser.psql
