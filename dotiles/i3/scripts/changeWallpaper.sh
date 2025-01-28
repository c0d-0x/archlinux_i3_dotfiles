#!/bin/bash
# Authur: c0d_0x
# pywal random wallpaper script for i3-wm
##

# Specify the directory containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Check if feh is installed
if ! command -v feh &>/dev/null; then
  echo "feh is not installed. Please install it using your package manager."
  exit 1
fi

# Check if the wallpaper directory exists
if [[ ! -d "$WALLPAPER_DIR" ]]; then
  echo "Wallpaper directory not found: $WALLPAPER_DIR"
  exit 1
fi

# Get a list of wallpaper files in the directory
wallpaper_files=($(find "$WALLPAPER_DIR" -type f -name "*.jpg" -o -name "*.png"))

# Choose a random wallpaper file
random_wallpaper="${wallpaper_files[$RANDOM % ${#wallpaper_files[@]}]}"

# Set the wallpaper using pywal
wal -i "$random_wallpaper" > /dev/null && pywalfox update
