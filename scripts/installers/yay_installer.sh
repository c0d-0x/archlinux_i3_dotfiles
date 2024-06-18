#!/bin/sh

##
# Author: c0d_0x
# Description: yay-bin installer script
#

source ./globals.sh
install_yay() {
  echo ${CAT} - "Installing yay-bin..."
  pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
  echo ${OK} - "Installation Done!!"
  cd ..
  return 0
}

if yay ! command -v yay &> /dev/null ; then
  echo ${OK} - "yay-bin has already been installed"
  return 1
fi

if [ -d yay-bin ]; then
    echo ${WARNING} - "Yay-bin Installation dir found.."
    echo ${CAT} - "Cleaning up..."
    rm -rf yay-bin 
    echo ${OK} - "Done"
fi

install_yay
