#!/bin/sh

##
# Author: c0d_0x
# Description: sddm installer script
#

sddmpkgs=(
  qt6-5compat 
  qt6-declarative 
  qt6-svg
  sddm
)

if yay ! command -v yay &>/dev/null; then

  printf "${NOTE} Installing sddm Packages...\n"

for pkg in ${sddmpkgs[@]}; do
  yay -S $pkg --noconfirm
  if [[ $? -ne 0  ]]; then
    printf "${ERROR}: ${pkg} Was Not Installed\n"
  fi
done
printf "${NOTE}: Activating sddm"
sudo systemctl enable sddm
else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

