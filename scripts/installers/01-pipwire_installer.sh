#!/bin/sh

##
# Author: c0d_0x
# Description: pipewire installer script
#

source ./globals.sh
pipewirepkgs=(
    pipewire
    wireplumber
    pipewire-audio
    pipewire-alsa
    pipewire-pulse
)
if command -v yay &>/dev/null; then

  printf "${NOTE} Installing pipewire Packages...\n"

for pkg in ${pipewirepkgs[@]}; do
  if command -v $pkg &>/dev/null; then
    printf "${NOTE}: $pkg has already been Installed..\n"
    continue
  fi

  sudo pacman -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

