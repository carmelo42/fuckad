#!/bin/bash
wget https://sebsauvage.net/hosts/hosts
wget https://ybad.name/DL/hosts.gz
mv hosts hosts_seb
gunzip hosts.gz 
mv hosts hosts_ybad
cat hosts_seb >> hosts_ybad 
sort hosts_ybad | uniq >> hosts
sed -i '1s/^/127.0.0.1 localhost /' hosts
cp hosts /etc/hosts
rm hosts
rm hosts_seb
rm hosts_ybad
