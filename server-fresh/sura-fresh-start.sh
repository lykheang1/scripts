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
sudo apt-get install zsh wget curl -y 
snap install docker
sudo apt-get install nginx -y 


# install zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install zsh-autosuggestions -y

# append zsh-auto suggestion in config file
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' .zshrc

# install nodejs 
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

snap install bpytop
sudo apt-get install neofetch 
