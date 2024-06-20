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
if yay ! command -v yay &>/dev/null; then

  printf "${NOTE} Installing pipewire Packages...\n"

for pkg in ${pipewirepkgs[@]}; do
  yay -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done

else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

