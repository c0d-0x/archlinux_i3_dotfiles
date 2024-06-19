##
# Author: c0d_0x
# Description: bluez installer script
#

source ./global.sh
bluepkgs=(
  bluez
  bluez-utils
  blueman
)

if yay ! command -v yay &>/dev/null; then

  printf "${NOTE} Installing Bluetooth Packages...\n"

  for pkg in ${bluepkgs[@]}; do
    sudo pacman -S --noconfirm $pkg
  done
else
  echo $ERROR: "yay-bin is not installed"
  exit -1
fi

if $? -e 0; then
  printf "${NOTE} bluez Installation complete\n"
fi
