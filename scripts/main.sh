#!/bin/sh

##
# Author: c0d_0x
# Description: Arch Linux i3-wm config script
#
#

INTALLERS=./installers
GOBALS_VaF=./globals.sh
source $GOBALS_VaF

for script in $(find $INTALLERS/ -name "*.sh" | sort); do
  # echo "$script"
  run_script $script
  # echo $INTALLERS/$script

  if [[ $? -ne 0 ]]; then
    echo $ERROR: "${script}: Failed!!"
  fi
done

printf "${NOTE}: Installing dotfiles...\n"

if [ ! -d ~/.config ]; then
  mkdir -p ~./config
fi
cp -rv ../config/* ~/.config/

printf "${ACTION}: Activating configs...\n"
chown $(whoami) -R ~/.config/

printf "${NOTE}: Done Installing dotfiles...\n"

printf "${NOTE}: Setting up sddm theme...\n"

printf "${NOTE}: Setting up tab to click [Xorg mouse config]...\n"
if [ ! -d "/etc/X11/xorg.conf.d" ]; then
  sudo mkdir -p /etc/X11/xorg.conf.d/
  printf "\n${WARNING}: Directory '/etc/X11/xorg.conf.d/' created...\n"
fi

sudo cp ../touchpad-tap.conf /etc/X11/xorg.conf.d/touchpad-tap.conf
printf "\n${NOTE}: Setting up user locale folder!!\n"
mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Music ~/Pictures ~/Videos
xdg-user-dirs-update

printf "\n${NOTE}: Installation complete, plz restart your PC!!\n"
