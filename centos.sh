#!/bin/bash

# According to:
# How To Set Up Python 2.7.6 and 3.3.3 on CentOS 6.4
# https://www.digitalocean.com/community/tutorials/how-to-set-up-python-2-7-6-and-3-3-3-on-centos-6-4
yum -y update
yum groupinstall -y 'development tools'
yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel
yum install xz-libs
wget http://www.python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz
xz -d Python-2.7.10.tar.xz
tar -xvf Python-2.7.10.tar
cd Python-2.7.10
./configure --prefix=/usr/local 
make
make altinstall
export PATH="/usr/local/bin:$PATH"
