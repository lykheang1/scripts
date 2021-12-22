#!usr/bin/sh

echo "=> Sura Fresh ServerStarter"

# check is it ubuntu
if [ "$(lsb_release -is)" != "Ubuntu" ]; then
    echo "currently not support other os rather than linux/ubuntu"
    exit 1
fi

# update system 
sudo apt-get update && sudo apt-get upgrade -y

# install essential software 
sudo apt-get install zsh wget curl 
snap install docker
sudo apt-get install nginx 


# install zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install zsh-autosuggestions -y

