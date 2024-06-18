##
# Author: c0d_0x
# Description: i3 installer script
#

source ./global.sh
i3wm=(
  i3-git
  i3lock-color
  rofi-git
  picom-git
  )

if  yay ! command -v yay &> /dev/null; then
    for pkg in ${i3wm[@]} ; do
    yay -S --noconfirm $pkg   
  done     
else
   echo $Error: "yay-bin is not installed"
   exit -1

fi


