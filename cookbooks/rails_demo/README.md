Description
===========

Installs Rails Demo

Requirements
============

Requires Chef 0.10.0

## Platform

The `db_bootstrap` recipe requires using the Opscode application cookbook.

Tested on Ubuntu 9.04, uses the Opscode Apache2 cookbook which is Ubuntu/Debian specific.

Requires Chef 0.7.12 for Deploy resource when installing from Radiant's git repo.

The `db_bootstrap` recipe requires Chef 0.9.10+ for the notifies resource syntax.

## Cookbooks

Opscode cookbooks (http://github.com/opscode/cookbooks/tree/master)

* git
* sqlite
* rails
* apache2
* passenger_apache2
