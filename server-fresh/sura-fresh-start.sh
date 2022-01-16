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

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# append zsh-auto suggestion in config file
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' .zshrc
chsh -s $(which zsh)


# install nodejs 
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

snap install bpytop
sudo apt-get install neofetch 

sudo npm install -g yarn 
sudo npm install -g pm2 
sudo npm install -g pnpm

mkdir projects 
mkdir temps 
