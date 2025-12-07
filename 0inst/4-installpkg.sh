#!/bin/bash

cd ~

lst=($(cat ~/ss/0inst/pkg.lst))

for PKG in "${lst[@]}";do
        sudo xbps-install -y "$PKG"
done
