#!/bin/zsh

# ::::::::::::::::::::::::::::::::::::::::: Variables ::
export DOTFILES_DIR=$HOME/dotfiles/archlinux/dotfiles

# :::::::::::::::::::::::::::::::::: Terminal & Shell ::
# Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf $HOME/.zshrc
ln -s $DOTFILES_DIR/.zshrc $HOME/.zshrc
source $HOME/.zshrc

# Terminator
mkdir -p $HOME/.config/terminator/plugins
wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"
cp -R $DOTFILES_DIR/.config/terminator/config $HOME/.config/terminator/

# ::::::::::::::::::::::::::::::::::::::::::::: Dev ::
# Docker
sudo systemctl enable docker.service
sudo systemctl enable docker.socket
sudo systemctl start docker.service
sudo systemctl start docker.socket
sudo groupadd docker
sudo usermod -aG docker $USER

# :::::::::::::::::::::::::::::::::::::::::: Session ::
# Lightdm
sudo systemctl enable lightdm
sudo systemctl start lightdm
sudo chown -R lightdm:lightdm /run/lightdm
sudo chown -R lightdm:lightdm /var/lib/lightdm-data
sudo chmod 700 /run/lightdm
sudo chmod 700 /var/lib/lightdm-data
sudo systemctl enable accounts-daemon
sudo systemctl start accounts-daemon

# ::::::::::::::::::::::::::::::::::::::::::: Devices ::

# make sure user is in the input group to allow libinput-gestures to work
sudo gpasswd -a $USER input
libinput-gestures-setup autostart start
libinput-gestures-setup stop desktop autostart start

#devices set up (touchpad, mouse)
sudo cp -R etc/X11/xorg.conf.d/40-libinput.conf /usr/share/X11/xorg.conf.d/ 

#remove system beep
sudo cp etc/modprobe.d/nobeep.conf /etc/modprobe.d/

sudo systemctl enable libinput-gestures.service
sudo systemctl start libinput-gestures.service

# ::::::::::::::::::::::::::::::::::::::::::: Drivers ::
# Bluetooth
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
