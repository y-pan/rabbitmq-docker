sudo apt-get update
sudo apt-get upgrade
sudo apt install curl

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.0/docker-compose-$(uname -s)-$(uname -m)" \
            -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose -version
# docker-compose version 1.27.0, build 980ec85b