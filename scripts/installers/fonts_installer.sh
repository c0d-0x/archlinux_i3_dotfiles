#!/bin/sh

##
# Author: c0d_0x
# Description: fonts installer script
#

source ./globals.sh
fonts=(
 ttf-droid 
 ttf-fira-code
 noto-fonts-emoji
 ttf-font-awesome-4
 ttf-jetbrains-mono 
 ttf-jetbrains-mono-nerd 
 ttf-cascadia-mono-nerd
 otf-comicshanns-nerd
 adobe-source-code-pro-fonts 
)

if command -v yay &>/dev/null; then
  clear

  printf "${NOTE} Installing necessary fonts \n"

  for font in ${fonts[@]}; do

    if command -v $font &>/dev/null; then
      printf "${NOTE}: $font has already been Installed..\n"
      continue
    fi


    yay -S $font --noconfirm
    if [[ $? -ne 0  ]]; then
      printf "${ERROR}: ${font} Was Not Installed\n"
    fi
  done

else
  clear
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

