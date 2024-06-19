#!/bin/sh

##
# Author: c0d_0x
# Description: Arch Linux i3-wm config script
#
#

INTALLERS=./installers
GOBALS_VaF=./globals.sh
source $GOBALS_VaF

run_script $INTALLERS/yay_installer.sh
echo $? : "is printed"

if [[ $? -e 1 ]]; then
  echo $OK: Test Pass!
fi
