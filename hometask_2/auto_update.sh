#!/bin/bash
sudo apt-get install cron-apt -y
sudo touch /var/log/update-$(date +%Y%m%d).log
sudo apt-get update
sudo apt-get upgrade -y > /var/log/update-$(date +%Y%m%d).log
sudo apt-get autoclean
sudo mv /home/user/desktop/auto_update.sh  /etc/cron.weekly
