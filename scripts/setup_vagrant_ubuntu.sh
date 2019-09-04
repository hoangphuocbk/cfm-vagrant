#!/bin/bash -v

sudo apt update
sudo apt install -y wget git bridge-utils python python-pip tmux apt-transport-https software-properties-common

# VirtualBox Installation
# Add following line in "/etc/apt/sources.list"
sudo apt -y install virtualbox

### Vagrant install
# wget https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.deb
sudo apt -y install vagrant

## Ansible Install
sudo apt -y install ansible

## Install JunOS Ansible Module and Python Modules
sudo ansible-galaxy install Juniper.junos

pip install --upgrade pip
sudo apt update
pip install jxmlease
pip install junos-eznc

## vQFX Box Addition
vagrant box add juniper/vqfx10k-re
vagrant box add juniper/vqfx10k-pfe

# Download and Addd CentOS-7.5 Box
vagrant box add centos/7


echo "List Box"
vagrant box list
