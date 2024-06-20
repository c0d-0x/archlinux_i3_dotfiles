#!/bin/sh

##
# Author: c0d_0x
# Description: Arch Linux i3-wm config script
#
#

INTALLERS=./installers
GOBALS_VaF=./globals.sh
source $GOBALS_VaF

for script in $(ls $INTALLERS/); do
  # echo "$script"
  run_script $INTALLERS/$script
  # echo $INTALLERS/$script

  if [[ $? -ne 0 ]]; then
    echo $ERROR: "${script}: Failed!!"
  fi
done

printf "${NOTE}: Installing dotfiles...\n"

if [ ! -d ~/.config ]; then
  mkdir ~./config
fi
cp -rv ../config/* ~/.config/

##
# Setting up sddm configs
#
if [ ! -d "/usr/share/sddm/themes" ]; then
  sudo mkdir -p /usr/share/sddm/themes
  printf "\n${WARNING}: Directory '/usr/share/sddm/themes' created...\n"
fi
sudo tar -xvf ../sddm_theme/simplesddm.tar --directory=/usr/share/sddm/themes/

printf "${NOTE}: Setting up sddm themes...\n"
if [ ! -d "/etc/sddm.conf.d" ]; then
  sudo mkdir /etc/sddm.conf.d
  printf "\n${WARNING}: Directory '/etc/sddm.conf.d' created...\n"
fi

sudo cp ../sddm.conf /etc/sddm.conf.d/

printf "${NOTE}: Setting up tab to click [Xorg mouse config]...\n"
if [ -d "/etc/X11/xorg.conf.d" ]; then
  sudo mkdir -p /etc/X11/xorg.conf.d/
  printf "\n${WARNING}: Directory '/etc/X11/xorg.conf.d/' created...\n"
fi

sudo cp ../touchpad-tap.conf /etc/X11/xorg.conf.d/touchpad-tap.conf

clear
printf "\n${NOTE}: Installation complete, plz restart your PC!!\n"
