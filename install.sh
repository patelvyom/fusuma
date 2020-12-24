#!/usr/bin/bash

sudo gpasswd -a $USER input
newgrp input
sudo apt update
sudo apt install -y libinput-tools xdotool ruby
sudo gem install fusuma
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

mkdir -p ~/.config/fusuma
cp ./config.yml ~/.config/fusuma/

# add fusuma in startup applications
