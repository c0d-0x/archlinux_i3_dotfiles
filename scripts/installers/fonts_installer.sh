#!/bin/sh

##
# Author: c0d_0x
# Description: fonts installer script
#

source ./globals.sh
fonts=(
 adobe-source-code-pro-fonts 
 noto-fonts-emoji
 otf-font-awesome 
 ttf-droid 
 ttf-fira-code
 ttf-jetbrains-mono 
 ttf-jetbrains-mono-nerd 
 otf-cascadia-code
 otf-comicshanns-nerd
)

if command -v yay &>/dev/null; then
  clear

  printf "${NOTE} Installing necessary fonts \n"

for pkg in ${thunerpkgs[@]}; do

  if command -v $pkg &>/dev/null; then
    printf "${NOTE}: $pkg has already been Installed..\n"
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

##
# TODO
# Handle locale fonts in .fonts
# in a separate script
#
