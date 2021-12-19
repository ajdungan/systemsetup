#!/bin/bash
#must run as root!

sudo apt update
sudo apt-get install ssh -y #the meta package0 alternative package install openssh-server

#set configurations
cd /etc/ssh/
nano nano ssh_config # needs for scripting for automation, idealy a standized/personalized config file in this repository.
