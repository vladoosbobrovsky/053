apt-get update -y
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
mkdir hello-world
cd hello-world
sudo nano docker-compose.yml
echo "version: '3.1'
services:

  db:
    image: 20000903/devops:vbmysql
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: 12345

  wordpress:
    image: 20000903/devops:wordpresss
    restart: always
    ports:
      - 4080:80" >> docker-compose.yml
sudo docker-compose up -d
echo "======================================================="
echo "===================SUCCESS============================="
echo "======================================================="