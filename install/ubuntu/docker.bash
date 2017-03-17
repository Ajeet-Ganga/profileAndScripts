sudo apt-get update && sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install  linux-image-extra-$(uname -r)  linux-image-extra-virtual
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
# confirm
sudo docker run hello-world
