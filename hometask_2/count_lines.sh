#!/bin/bash
echo "hello"
sudo apt install wget

wget -O version.txt http://yoko.ukrtux.com:8899/versions.txt
sort version.txt | uniq -c | sort -rn | head -n 1
