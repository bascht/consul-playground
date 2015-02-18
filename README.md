# Consul 3-tier Demo

Give [Consul](http://consul.io) a try using a small stack with local
Vagrant machines:

* one HTTP load balancer
* 3 app servers
* two databases

## Prerequisites

* Vagrant
* Ansible

## Getting started

```shell
# Install ansible vendor modules
$ ansible-galaxy install -r ops/ansible/requirements.yaml -p ops/ansible/vendor/roles/ --force
$ vagrant up
```

### Screenshot

![Screenshot](http://i.imgur.com/f5xa5dJ.png)
