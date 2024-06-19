#!/bin/sh

##
# Author: c0d_0x
# Description: fonts installer script
#

fonts=(
 adobe-source-code-pro-fonts 
 noto-fonts-emoji
 otf-font-awesome 
 ttf-droid 
 ttf-fira-code
 ttf-jetbrains-mono 
 ttf-jetbrains-mono-nerd 
)

if yay ! command -v yay &>/dev/null; then

  printf "${NOTE} Installing necessary fonts \n"

for pkg in ${thunerpkgs[@]}; do
  yay -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

##
# TODO
# Handle locale fonts in .fonts
# in a separate script
#
