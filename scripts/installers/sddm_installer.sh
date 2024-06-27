#!/bin/sh

##
# Author: c0d_0x
# Description: sddm installer script
#

source ./globals.sh
sddmpkgs=(
  qt6-5compat 
  qt6-declarative 
  qt6-svg
  sddm
)

if command -v yay &>/dev/null; then

  printf "${NOTE} Installing sddm Packages...\n"

  for pkg in ${sddmpkgs[@]}; do
    yay -S $pkg --noconfirm
    if [[ $? -ne 0  ]]; then
      printf "${ERROR}: ${pkg} Was Not Installed\n"
    fi
  done
  printf "${NOTE}: Activating sddm...\n"
  sudo systemctl enable sddm

##
# Setting up sddm configs
#
if git clone https://github.com/JaKooLit/simple-sddm-2.git ; then

  if [ ! -d "/usr/share/sddm/themes" ]; then
    sudo mkdir -p /usr/share/sddm/themes
    printf "\n${WARNING}: Directory '/usr/share/sddm/themes' created...\n"
  fi
  sudo mv simple-sddm-2 /usr/share/sddm/themes/

  printf "${NOTE}: Setting up sddm themes...\n"
  if [ ! -d "/etc/sddm.conf.d" ]; then
    sudo mkdir -p /etc/sddm.conf.d
    printf "\n${WARNING}: Directory '/etc/sddm.conf.d' created...\n"
  fi
clear 
  echo "[theme]" > ./theme.conf
  echo "Current=simple-sddm-2" >> theme.conf
  sudo mv ./theme.conf /etc/sddm.conf.d/

fi
else
  printf "${ERROR}: yay-bin is not Installed - [install it manually]\n"
fi

