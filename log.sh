#!/bin/sh
sudo apt-get update
sudo apt-get upgrade

# gnome desktop install
sudo apt-get ubuntu-gnome-desktop
# install dash-to-dock
git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock
make
make install
cd ..
rm -rf dash-to-dock

# gnome lock screen background greeter
sudo apt-get install lightdm-gtk-greeter-settings
## using LightDM GTK+ Greeter: settings

# package install
sudo apt-get install -y ssh
sudo apt-get install -y git


# neovim
sudo apt-get install -y software-properties-common
sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
pip2 install neovim
pip3 install neovim
sudo apt-get install -y neovim

mkdir -p ~/.config/nvim


curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.local/share/dein

sudo apt-get install clang

# python package
# ref : https://cjh5414.github.io/ubuntu-pyenv-virtualenv
## Requirements: Ubuntu/Debian
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev

## pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
## pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
## autoenv
git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv

## jupyterhub
sudo apt-get install npm nodejs-legacy
sudo npm install -g configurable-http-proxy
sudo pip3 install jupyterhub 
sudo pip3 install --upgrade notebook
sudo mkdir /etc/jupyterhub
cd /etc/jupyterhub
### ip, port, dir setting
jupyterhub --generate-config

### ipykernel
sudo python3 -m ipykernel install
sudo chmod 777 kernels/
pyenv install 3.6.3
pyenv virtualenv 3.6.3 Python3_6_3
pyenv virtualenv Python3_6_3
python3 -m ipykernel install --name Python3_6_3 --display-name "Python 3.6.3"

# x11vnc
sudo apt-get update
sudo apt-get install x11vnc
## passwoard add
x11vnc -storepasswd
## configuration
cat > /libsystemd/system/x11vnc.service << EOF
[Unit]
Description=Start x11vnc at startup.
After=multi-user.target
 
[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth "/home/$USER/.vnc/passwd" -rfbport 5900 -shared
 
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service

# andorid studio
sudo apt-get install openjdk-8-jdk
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
## Download android
## unzip android... -d /opt/
## kvm
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils

# hard disk
## http://www.whatwant.com/686
