# docker-puppet
Original code created by Richard Woudenberg (https://github.com/rchrd)

Puppet environment running in docker
Code is based on Open Source version of Puppet (for now).

## Preparation
Create the following directories
* cache
* cache/puppet
* cache/hiera
* cache/yum
* cache/wget

The *puppet* and *hiera* directories are linked to the Puppet Master. Modules and manifests go in the *puppet* directory, and hieradata goes into the *hiera* directory.

## Run
Run `make master` to bring up the master
Run `make agent1` to bring up agent1 (and any other agents defined in *docker-compose.yml*).