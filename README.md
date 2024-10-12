<!--# Archlinux i3-Dotfiles-->
<!---->
<!--This is a collection of my I3-wm dotfiles with installation scripts.-->
<!---->
<!--<img class="fit-picture" src="./resources/Rice_img.png" alt="RICE IMG" />-->
<!---->
<!--# Installation-->
<!--These scaripts are to be ran on a fresh minimal arch-install.-->
<!--```bash-->
<!--git clone https://github.com/c0d-ox/archlinux_i3_dotfiles.git-->
<!--cd archlinux_i3_dotfiles/scripts-->
<!--./main.sh-->
<!--```-->


# c0d-0x's Arch Linux i3 Dotfiles
Welcome to my Arch Linux i3 configuration repository! This repo contains all the dotfiles I use to configure my lightweight and efficient Arch Linux environment with the i3 window manager.

## Table of Contents
+ Introduction
+ Installation
+ Features
+ Dependencies
+ Screenshots
+ Customization
+ Contributing
+ License

### Introduction
This repository contains dotfiles for setting up a fully functional, minimal, and fast Arch Linux environment with the i3 window manager. It includes configurations for i3, polybar, rofi, and other tools to streamline workflows and enhance the desktop experience.

Installation
To get started with these dotfiles, follow the instructions below:

```bash
# Clone the Repository
git clone https://github.com/c0d-0x/archlinux_i3_dotfiles.git
cd archlinux_i3_dotfiles
```
#### Install the Dotfiles on a fresh minimal arch-install
```bash
cp scripts
./setup.sh #This setup should only be ran within the scripts dir
# This scripts run multiple scripts to setup your minamal install by
#installing i3 and  all of it's dependencies. 
```


#### Copy Dotfiles on a existing setup

##### Backup Your Existing Dotfiles
It's a good practice to back up your existing dotfiles before overwriting them:

```bash
mkdir ~/dotfiles_backup
mv ~/.config/i3 ~/.config/polybar ~/.config/rofi ~/dotfiles_backup/
```

```bash
cp -r dotfiles/* ~/.config/
```
##### Reload i3
After installation, reload i3 using:

```bash
$mod+Shift+R

#This will load the new configuration without needing to log out.
```
### Features
+ i3 Window Manager: A highly customizable, tiling window manager.
+ Polybar: A sleek status bar with system information, workspaces, and more.
+ Rofi: A powerful application launcher and window switcher.
+ Picom: A lightweight compositor for transparency and window effects.
+ Custom Keybindings: Optimized shortcuts for efficient workflows.
+ Theming: A minimalist aesthetic with custom colors, fonts, and icons.
+ Color: colors are base on wallpaper store in ~/pictures/wallpapers. These colors are generate using pywal.

### Dependencies
Make sure to install the following packages on your Arch Linux system:

+ i3: `sudo pacman -S i3-wm`
+ Polybar: `sudo pacman -S polybar`
+ Rofi: `sudo pacman -S rofi`
+ Picom: `yay -S picom-simpleanims-next-git` (compositor with clean animations)
+ Feh: `sudo pacman -S feh` (for setting wallpapers)
+ Dunst: `sudo pacman -S dunst` (for notifications)
+ kitty: `sudo pacman -S kitty` (terminal emulator)
You can install these dependencies with:

### Screenshots
Here are a few screenshots of my Arch Linux i3 setup:
<img class="fit-picture" src="./resources/Rice_img.png" alt="RICE IMG" />

Desktop with Polybar and Rofi:

Window Tiling in i3:

### Customization
Feel free to modify the following files to suit your preferences:

+ i3 configuration: ~/.config/i3/config
+ Polybar: ~/.config/polybar/config
+ Rofi: ~/.config/rofi/config.rasi
+ Picom: ~/.config/picom/picom.conf
+ Alacritty: ~/.config/alacritty/alacritty.yml
You can also change the color schemes, keybindings, and add custom scripts to make it your own.

### Contributing
If you have any suggestions or improvements, feel free to open an issue or submit a pull request. Contributions are always welcome!

### License
This repository is licensed under the MIT License. See the LICENSE file for more details.
