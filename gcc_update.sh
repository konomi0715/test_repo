#! /usr/bin/bash
# update gcc

# install centos-release-scl
sudo yum install centos-release-scl
sudo yum install devtoolset-7-gcc*
scl enable devtoolset-7 bash

# Backup & Setting up soft connection
mv /usr/bin/gcc /usr/bin/gcc_bak
ln -s /opt/rh/devtoolset-7/root/bin/gcc /usr/bin/gcc
mv /usr/bin/g++ /usr/bin/g++_bak
ln -s /opt/rh/devtoolset-7/root/bin/g++ /usr/bin/g++

# Check the updated version
gcc --verson
g++ --version


# src：https://blog.csdn.net/csdn18740599042/article/details/108951385
