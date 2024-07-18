##
# Author: c0d_0x
# Description: i3 installer script
#

source ./globals.sh
i3wm=(
  i3-wm
  i3lock-color
  systemd
  rofi
  polybar
  picom
  aylurs-gtk-shell
  curl
  gvfs
  gvfs-mtp
  imagemagick
  inxi
  jq
  kitty
  network-manager-applet
  pamixer
  pavucontrol
  polkit-kde-agent
  playerctl
  python-requests
  python-pyquery
  qt5ct
  qt6ct
  qt6-svg
  wget
  dunst
  xdg-user-dirs
  xdg-utils
)

goodies=(
  brightnessctl
  batsignal
  btop
  cava
  eog
  firefox
  chromium
  neofetch
  gnome-system-monitor
  mousepad
  mpv
  mpv-mpris
  nvtop
  nwg-look
  greenclip
  feh
  dunst
  xclip
  brightnessctl
  python-pywal
  python-pywalfox
  viewnior
  pacman-contrib
  vim
  neovim
  viewnior
  yt-dlp
)

if command -v yay &>/dev/null; then
  clear
  for pkg in ${i3wm[@]}; do

    if command -v $pkg &>/dev/null; then
      printf "${NOTE}: $pkg has already been Installed..\n"
      continue
    fi

    yay -S --noconfirm $pkg

    if [[ $? -ne 0 ]]; then
      printf "${ERROR}: ${pkg} Was Not Installed\n"
    fi
  done

  for pkg in ${goodies[@]}; do

    if command -v $pkg &>/dev/null; then
      printf "${NOTE}: $pkg has already been Installed..\n"
      continue
    fi

    yay -S --noconfirm $pkg

    if [[ $? -ne 0 ]]; then
      printf "${ERROR}: ${pkg} Was Not Installed\n"
    fi
  done

else
  echo $Error: "yay-bin is not installed [Install it Manually]"
  exit -1
fi
