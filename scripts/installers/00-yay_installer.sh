#!/bin/sh

##
# Author: c0d_0x
# Description: yay-bin installer script
#

source ./globals.sh

install_yay() {
if command -v yay &> /dev/null ; then
  printf "${OK}: yay-bin has already been installed\n"
  return 0 
fi

  echo "${NOTE}: Installing yay-bin..."
  sudo  pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
  echo "${OK}: Installation Done!!"
  cd ..
}


if [ -d yay-bin ]; then
    echo ${WARNING}: "Yay-bin Installation dir found.."
    echo ${ACTION}: "Cleaning up..."
    rm -rvf yay-bin 
    echo ${OK}: "Done"
fi

install_yay
