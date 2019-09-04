#!/bin/bash -eux
sudo -i
yum install -y ntp
systemctl start ntpd
systemctl enable ntpd
yum install -y net-tools
yum install -y tcpdump

