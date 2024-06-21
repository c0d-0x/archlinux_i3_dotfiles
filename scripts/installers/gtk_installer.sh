#!/bin/sh

##
# Author: c0d_0x
# Description: fonts installer script
#

source ./globals.sh

gtkpkgs=(
    unzip
    gtk-engine-murrine
  )

if command -v yay &>/dev/null; then
  clear

  printf "${NOTE} Installing necessary gtk parkages...\n"

for pkg in ${gtkpkgs[@]}; do

  if command -v $pkg &>/dev/null; then
    printf "${NOTE}: $pkg has already been Installed...\n"
    continue
  fi


  yay -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  clear
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi


