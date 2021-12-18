#!/bin/bash
#must run as root!

#####install glances via pip
apt update
apt install python-pip -y
pip install 'glances[action,browser,cloud,cpuinfo,docker,export,folders,gpu,graph,ip,raid,snmp,web,wifi]'

#alternative install script
#curl -L https://bit.ly/glances | /bin/bash


##########
#run setup scripts to create persistance startup service

./glancessetup.sh
./glancesservice.sh

