#!/bin/bash

echo "apt-get update"
sudo apt-get update > /dev/null 2>&1

echo "installing python2"
sudo apt-get install python-minimal -y > /dev/null 2>&1

echo "installing common python software and pip"
sudo apt-get install software-properties-common python python-pip -y > /dev/null 2>&1

echo "installing sshpass"
sudo apt-get install sshpass -y > /dev/null 2>&1

echo "installing apt-get https transport ca certs"
sudo apt-get install apt-transport-https ca-certificates -y > /dev/null 2>&1

echo "installing python dev tools"
sudo apt-get install python-dev libffi-dev libssl-dev -y > /dev/null  2>&1

echo "upgrading pip"
sudo -H pip install pip --upgrade > /dev/null 2>&1

echo "pip install setup tools sshpass"
sudo -H pip install setuptools --upgrade > /dev/null 2>&1

echo "python openssl httpsclient"
sudo -H pip install pyopenssl ndg-httpsclient pyasn1 > /dev/null 2>&1

echo "installing ansible"
sudo -H pip install ansible > /dev/null 2>&1

echo "displaying installed version of Ansible"
/usr/local/bin/ansible --version
