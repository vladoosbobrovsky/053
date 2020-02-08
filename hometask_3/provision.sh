#!/usr/bin/env bash
apt-get update
apt-get install mysql-server -y
sudo mysql -e 'use mysql;

update user set authentication_string=PASSWORD("123456") where User="root";
flush privileges;
CREATE DATABASE CONFLUENCE;
quit'
/etc/init.d/mysql start

echo "-----------------------Download Atlasian Confluence -----------------------"
#wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.3.1-x64.bin

#echo "
#app.confHome=/var/atlassian/application-data/confluence7_3_1
#app.install.service$Boolean=false
#portChoice=default
#launch.application$Boolean=false
#sys.adminRights$Boolean=true
#sys.confirmedUpdateInstallationString=false
#sys.installationDir=/opt/atlassian/confluence7_3_1
#sys.languageId=en" >> response.varfile
 
 #touch /etc/systemd/system/confluence.service

#echo "
#[Unit]
#Description=Confluence
#After=network.target

#[Service]
#Type=forking
#User=confluence
#PIDFile=/opt/atlassian/confluence7_3_1/work/catalina.pid
#ExecStart=/opt/atlassian/confluence7_3_1/bin/start-confluence.sh
#ExecStop=/opt/atlassian/confluence7_3_1/bin/stop-confluence.sh
#TimeoutSec=200
#LimitNOFILE=4096
#LimitNPROC=4096

#[Install]
#WantedBy=multi-user.target" >> /etc/systemd/system/confluence.service

cd /vagrant 
sudo chmod +x atlassian-confluence-7.3.1-x64.bin
./atlassian-confluence-7.3.1-x64.bin -q -varfile /vagrant/response.varfile
cd /opt/atlassian/confluence7_3_1/bin
./start-confluence.sh

#chmod 664 /etc/systemd/system/confluence.service
#cd /home/vagrant/
#sudo /etc/init.d/confluence start
#systemctl daemon-reload
#systemctl enable confluence
#systemctl start confluence
#systemctl status confluence
