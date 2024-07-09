#!/bin/sh

##
# Author: c0d_0x
# Description: thunar installer script
#

source ./globals.sh
thunerpkgs=(
  thunar
  thunar-volman
  tumbler
  ffmpegthumbnailer
  file-roller
  xarchiver
  xautolock
  thunar-archive-plugin
)

if command -v yay &>/dev/null; then

  printf "${NOTE} Installing Thunar Packages...\n"

for pkg in ${thunerpkgs[@]}; do
  sudo pacman -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

