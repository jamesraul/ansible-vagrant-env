# ansible-vagrant-env

vagrant ansible dev enviornment with install scripts and tests for latest ansible server

## prereq

- install virtualbox
- install vagrant

## usage

clone and vagrant up/ssh to first vm

    git clone https://github.com/jamesraul/ansible-vagrant-env.git
    vagrant up
    vagrant reload acs
    vagrant ssh acs

ansible should be installed - once in the ansible control server / acs, run the ansible test script

    sh /vagrant/ansible-test.sh


