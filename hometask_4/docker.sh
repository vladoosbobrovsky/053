doc_id = 20000903


apt-get update -y
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt updsate -y
apt install -y docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
docker -v

docker login -u "20000903" -p "dota2vlad" docker.io

cp /vagrant/MyKey.key  /root/certs/


cd /
cd /vagrant/wp

docker build -t vbwordpress .
docker tag vbwordpress 20000903/devops:wordpresss
docker push 20000903/devops:wordpresss
cd /
cd /vagrant/db
docker build -t vbmysql .

docker tag vbmysql 20000903/devops:vbmysql
#docker push 20000903/devops:vbmysql
 
 #Build is complete,pushin to Hub
 
 