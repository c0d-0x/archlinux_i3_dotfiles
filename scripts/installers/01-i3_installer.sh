##
# Author: c0d_0x
# Description: i3 installer script
#

source ./globals.sh
i3wm=(
  i3-git
  i3lock-color
  systemd
  rofi-git
  polybar-git
  picom-git
  aylurs-gtk-shell
  systemd
  curl
  gvfs
  gvfs-mtp
  imagemagick
  inxi
  jq
  kitty
  kvantum
  network-manager-applet
  pamixer
  pavucontrol
  pipewire-alsa
  playerctl
  polkit-gnome
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
  xautoluck
  feh
  dunst
  xclip
  thuner
  brightnessctl
  pywal
  viewnior
  pacman-contrib
  vim
  neovim
  viewnior
  yt-dlp
)

if yay ! command -v yay &>/dev/null; then
  clear
  for pkg in ${i3wm[@]}; do

    if $pkg ! command -v $pkg &>/dev/null; then
      printf "${NOTE}: $pkg has already been Installed..\n"
      continue
    fi

    yay -S --noconfirm $pkg

    if [[ $? -ne 0 ]]; then
      printf "${ERROR}: ${pkg} Was Not Installed\n"
    fi
  done

  for pkg in ${goodies[@]}; do

    if $pkg ! command -v $pkg &>/dev/null; then
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
