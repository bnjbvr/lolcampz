LOLCAMPZ
========

This collection of scripts make it easy to set up your own tent instance on your server, provided you have installed
`vagrant`.

CONFIGURE
=========

Modify the files `user.sh` (export URL line) and `Vagrantfile` (network configuration) so that they fit your needs.


HOW TO
======

- `vagrant up`
- `vagrant -c /vagrant/user.sh`
- open the URL you've set in user.sh in your browser (Firefox).
- except if you changed them: username: admin / password: tent
- voila!

