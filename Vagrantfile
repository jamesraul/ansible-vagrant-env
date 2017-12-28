# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "acs" do |acs|
    acs.vm.box = "bento/ubuntu-16.04"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
    acs.vm.provision :shell, :path => "bootstrap.sh"
    acs.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=666"]

  end

  config.vm.define "node0" do |node0|
    node0.vm.box = "ubuntu/trusty64"
    node0.vm.hostname = "node0"
    node0.vm.network "private_network", ip: "192.168.33.11"
  end

  config.vm.define "web" do |web|
    web.vm.box = "nrel/CentOS-6.5-x86_64"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest: 80, host: 8080
  end
  
  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.30"
  end
#  config.vm.define "db" do |db|
#    db.vm.box = "centos/7"
#    db.vm.hostname = "db"
#    db.vm.network "private_network", ip: "192.168.33.30"
#  end

end