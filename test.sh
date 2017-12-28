#!/bin/bash

netstat -an | grep 22 | grep "LISTEN "

echo  avoids ssh prompt or disable of of host_key_checking in config
ssh-keyscan 127.0.0.1 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.33.11 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.33.20 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.33.30 >> ~/.ssh/known_hosts

echo  use Ansible to ping localhost
echo  connect as 'vagrant' user, -k is 'ask for password' SSH password is 'vagrant'
ansible 127.0.0.1 -i /vagrant/ansible/inventory -m ping -u vagrant -k

echo  use shell module to check free memory on localhost
ansible 127.0.0.1 -i /vagrant/ansible/inventory -m shell -a "free -m" -u vagrant -k

echo  use shell module to show bound ports on localhost
ansible 127.0.0.1 -i /vagrant/ansible/inventory -m shell -a "netstat -an | grep 'LISTEN '" -u vagrant -k

echo  test ping to all hosts in /vagrant/home/inventory
ansible all -i /vagrant/ansible/inventory -m ping -u vagrant -k
