#!/bin/bash

set -e

echo "Installing packages..."
sudo pacman -S --needed \
    hyprland alacritty fish \
    stow git

echo "Stowing dotfiles..."
PACKAGES=(hypr waybar yazi)
for package in "${PACKAGES[@]}"; do
	rm -rf ~/.config/$package
    	stow --target="$HOME" "$package"
done

echo "Done!"
