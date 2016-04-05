# Update package information, ensure that APT works with the https method, and that CA certificates are installed.
apt-get update
apt-get install apt-transport-https ca-certificates

# Add the new GPG key.
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Ubuntu 14.0.4 trusty
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list

# Update the APT package index
apt-get update

# Purge the old repo if it exists
apt-get purge lxc-docker

# Verify that APT is pulling from the right repository.
apt-cache policy docker-engine


## Install

sudo apt-get install docker-engine

sudo service docker start

# Verify docker is installed correctly.
sudo docker run hello-world

# Allow non-root access to docker
sudo usermod -aG docker ubuntu

# Install Docker-Compose
curl -L https://github.com/docker/compose/releases/download/1.7.0rc-1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
