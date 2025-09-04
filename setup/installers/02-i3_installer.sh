##
# Author: c0d_0x
# Description: i3 installer script
#

source ./globals.sh
i3wm=(
    aylurs-gtk-shell
    batsignal
    brightnessctl
    curl
    dex
    dunst
    feh
    gvfs
    gvfs-mtp
    i3lock-color
    i3-wm
    imagemagick
    inxi
    jq
    kitty
    network-manager-applet
    nwg-look
    pamixer
    pavucontrol
    picom-git
    playerctl
    polkit-kde-agent
    polybar
    python-pyquery
    python-pywal
    python-pywalfox
    python-requests
    qt5ct
    qt6ct
    qt6-svg
    rofi
    rofi-greenclip
    rofimoji
    systemd
    wget
    xautolock
    xdg-user-dirs
    xdg-utils
    xorg-xrdb
    xclip
    xss-lock
)

goodies=(
    btop
    cava
    chromium
    gnome-system-monitor
    mousepad
    mpd
    mpv
    mpv-mpris
    neofetch
    neovim
    nvtop
    pacman-contrib
    viewnior
    vim
    yt-dlp
    zen-browser
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
