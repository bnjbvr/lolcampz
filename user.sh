#!/bin/bash
export USERNAME=admin
export PASSPHRASE='$2a$10$l.uRfCGWqVzXUkXpRA.SnOIhnk6UtlCPo8F3BelIXRdXPp/SQSnhG'

# if you want to host several VM, use a subnetwork
export URL=http://192.168.0.50:8080
# if you want to host only one VM, use localhost
#export URL=http://localhost:8080

export SESSION_SECRET=yo1234mang5678sup910!
export DATABASE_URL=postgres://vagrant:tent@localhost/tentd
export REDIS_URL=redis://localhost:6379

cd
git clone git://github.com/tent/tentd-omnibus tent
cd tent
git pull

bundle install
bundle exec rake assets:precompile

echo "localhost:5432:*:vagrant:tent" > /home/vagrant/.pgpass
chmod 0600 /home/vagrant/.pgpass

bundle exec rake db:create
bundle exec rake db:migrate
bundle exec unicorn -p 8080

