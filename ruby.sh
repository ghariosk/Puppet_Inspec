#!/bin/bash

yum install gcc-c++ patch readline readline-devel zlib zlib-devel -y

yum install libyaml-devel libffi-devel openssl-devel make -y

yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel -y

curl -sSL https://rvm.io/mpapis.asc | gpg --import -

curl -L get.rvm.io | bash -s stable

curl ftp://195.220.108.108/linux/centos/7/os/x86_64/Packages/libyaml-devel-0.1.4-11.el7_0.x86_64.rpm --output libyaml-devel-0.1.4-11.el7_0.x86_64.rpm

rpm -Uvh libyaml-devel-0.1.4-11.el7_0.x86_64.rpm
source /etc/profile.d/rvm.sh

rvm reload

rvm install 2.2.4

rvm use 2.2.4 --default


