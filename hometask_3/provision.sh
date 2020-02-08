sudo apt-get update -y
echo "-----------------------Download Atlasian Confluence -----------------------"
#wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.3.1-x64.bin 
touch response.varfile
echo "
app.confHome=/var/atlassian/application-data/confluence7_3_1
app.install.service$Boolean=false
portChoice=custom
httpPort$Long=8080
rmiPort$Long=8001
launch.application$Boolean=false
sys.adminRights$Boolean=true
sys.confirmedUpdateInstallationString=false
sys.installationDir=/opt/atlassian/confluence7_3_1
sys.languageId=en" >> response.varfile
cd /
chmod +x /vagrant/atlassian-confluence-7.3.1-x64.bin
vagrant/./atlassian-confluence-7.3.1-x64.bin -q -varfile /home/vagrant/response.varfile

touch /etc/systemd/system/confluence.service
echo "
[Unit]
Description=Confluence
After=network.target

[Service]
Type=forking
User=confluence
PIDFile=/opt/atlassian/confluence7_3_1/work/catalina.pid
ExecStart=/opt/atlassian/confluence7_3_1/bin/start-confluence.sh
ExecStop=/opt/atlassian/confluence7_3_1/bin/stop-confluence.sh
TimeoutSec=200
LimitNOFILE=4096
LimitNPROC=4096

[Install]
WantedBy=multi-user.target" >> /etc/systemd/system/confluence.service


#chmod 664 /etc/systemd/system/confluence.service
#cd /home/vagrant/
#sudo /etc/init.d/confluence start
#systemctl daemon-reload
#systemctl enable confluence
#systemctl start confluence
#systemctl status confluence
