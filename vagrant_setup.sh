apt-get -y update
apt-get -y install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get -y update
#apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get -y install docker-engine
service docker start
groupadd docker
usermod -aG docker ubuntu

apt-get -y install curl wget git unzip
mkdir /home/ubuntu/packer
cd /home/ubuntu/packer
wget https://releases.hashicorp.com/packer/0.11.0/packer_0.11.0_linux_amd64.zip
unzip *.zip
echo "export PATH=$PATH:/home/ubuntu/packer" >> ~/.bashrc
