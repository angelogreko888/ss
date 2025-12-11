#!usr/bin/env bash

cd ~

lst=($(cat ~/ss/0inst/bpkg.lst))

for PKG in "${lst[@]}";do
        sudo xbps-install -y "$PKG"
done
