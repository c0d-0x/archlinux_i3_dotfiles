#!/bin/sh

##
# Author: c0d_0x
# Description: thunar installer script
#

thunerpkgs=(
  thunar-git
  thunar-volman-git
  tumbler
  ffmpegthumbnailer
  file-roller
  xarchiver
  thunar-archive-plugin
)

if yay ! command -v yay &>/dev/null; then

  printf "${NOTE} Installing Thunar Packages...\n"

for pkg in ${thunerpkgs[@]}; do
  yay -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

