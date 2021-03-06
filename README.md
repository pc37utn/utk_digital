# utk_digital

## Introduction
 This is a custom islandora vagrant for the utk digital library.
 
The is a development environment virtual machine for Islandora 7.x-1.x.

N.B. This virtual machine **should not** be used in production.

## Requirements

1. [VirtualBox](https://www.virtualbox.org/)
  * Be sure to install a version of VirtualBox that [is compatible with Vagrant](https://www.vagrantup.com/docs/virtualbox/)
2. [Vagrant](http://www.vagrantup.com)
3. [git](https://git-scm.com/)

Note that virtualization must be enabled in the host machine's BIOS settings.

## Variables

### System Resources

By default the virtual machine that is built uses 4GB of RAM.
 Your host machine will need to be able to support that. You can override the CPU and RAM allocation by creating `ISLANDORA_VAGRANT_CPUS` and `ISLANDORA_VAGRANT_MEMORY` environment variables and setting the values. For example, on an Ubuntu host you could add to `~/.bashrc`:

```bash
export ISLANDORA_VAGRANT_CPUS=4
export ISLANDORA_VAGRANT_MEMORY=4096
```
### Hostname and Port Forwarding

If you use a DNS or host file management plugin with Vagrant,  you may want to set a specific hostname for the virtual machine and disable port forwarding. You can do that with the `ISLANDORA_VAGRANT_HOSTNAME` and `ISLANDORA_VAGRANT_FORWARD` variables. For example:

```bash
export ISLANDORA_VAGRANT_HOSTNAME="islandora.vagrant.test"
export ISLANDORA_VAGRANT_FORWARD="FALSE"
```

## Use

1. `git clone https://github.com/islandora-labs/islandora_vagrant`
2. `cd islandora_vagrant`
3. `vagrant up`

## Connect
Note: The supplied links apply only to this local vagrant system. They could vary in other installations. 

You can connect to the machine via the browser at [http://localhost:8000](http://localhost:8000).

To restart apache:
  - systemctl restart httpd
  
To restart MariaDB/MySQL:
  - systemctl restart mariadb
  
To restart tomcat:
  - systemctl restart tomcat

The default Drupal login details are:
  - username: admin
  - password: islandora

MySQL:
  - username: root
  - password: islandora

[Tomcat Manager:](http://localhost:8080/manager)
  - username: islandora
  - password: islandora

[Fedora:](http://localhost:8080/fedora/) ([Fedora Admin](http://localhost:8080/fedora/admin) | [Fedora Risearch](http://localhost:8080/fedora/risearch) | [Fedora Services](http://localhost:8080/fedora/services/))
  - username: fedoraAdmin
  - password: fedoraAdmin

[GSearch:](http://localhost:8080/fedoragsearch/rest)
  - username: fedoraAdmin
  - password: fedoraAdmin

ssh, scp, rsync:
  - username: vagrant
  - password: vagrant
  - Examples
    - `ssh -p 2222 vagrant@localhost` or `vagrant ssh`
    - `scp -P 2222 somefile.txt vagrant@localhost:/destination/path`
    - `rsync --rsh='ssh -p2222' -av somedir vagrant@localhost:/tmp`
    
## Environment

- CentOS 7.x (current)
- Drupal 7.xx 
- MariaDB
- Apache 2.4.x
- Tomcat 7.x
- Solr 4.2.0
- Fedora 3.8.1
- GSearch HEAD
- PHP 5.6 (from ext. remi repo)
- Java 8 (Oracle)
- FITS 1.1.1
- drush 8.x (current in Redhat/CentOS)

## Maintainers

* [Paul Cummins](https://github.com/pc37utn)

## Acknowledgements

This project was inspired by Islandora's [islandora_vagrant](https://github.com/Islandora-Labs/islandora_vagrant) which was inspired by Ryerson University Library's [Islandora Chef](https://github.com/ryersonlibrary/islandora_chef), which was inspired by University of Toronto Libraries' [LibraryChef](https://github.com/utlib/chef-islandora). So, many thanks to [Graham Stewart](https://github.com/whitepine23), and [MJ Suhonos](http://github.com/mjsuhonos/).

