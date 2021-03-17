#!/bin/bash
vagrant plugin install vagrant-disksize

vagrant up docker1

echo $(cat /cygdrive/d/Tobia/Desktop/iac-challenge/.vagrant/machines/docker1/virtualbox/private_key) > \
           /cygdrive/d/Tobia/Desktop/iac-challenge/playbooks/templates/ssh-keys

vagrant up docker2
