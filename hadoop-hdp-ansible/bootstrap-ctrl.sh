#!/usr/bin/env bash

# install ansible on ctrl host
yum install -y epel-release
yum install -y ansible

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL
192.168.50.50   ctrl
192.168.50.51   hdp1
192.168.50.52   hdp2
192.168.50.53   hdp3
EOL