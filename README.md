LOLCAMPZ
========

This collection of scripts make it easy to set up your own tent instance on your server, provided you have installed
`vagrant`.

configure
=========

Modify the files `user.sh` (export URL line) and `Vagrantfile` (network configuration) so that they fit your needs.

how to (VM version)
===================

- `vagrant up`
- go prepare yourself a coffee
- `vagrant ssh -c /vagrant/user.sh`
- go have another coffee, a longer this time
- open the URL you've set in user.sh in your browser (Firefox).
- unless you changed them: username: admin / password: tent
- voila!

how to (hosted version)
=======================

- `sudo ./bootstrap.sh`
- `./user.sh`
- same steps as the VM version then.
