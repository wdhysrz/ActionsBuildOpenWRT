#!/bin/bash

sed -i 's/PKG_INSTALL:=1/PKG_INSTALL:=1\nPKG_REPLACE:=l1util/' package/mtwifi-cfg/Makefile
# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

