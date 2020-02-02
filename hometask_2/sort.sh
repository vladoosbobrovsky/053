#!/bin/bash
wget -O version.txt http://yoko.ukrtux.com:8899/versions.txt
touch sorted.txt
sort --version-sort version.txt > sorted.txt
