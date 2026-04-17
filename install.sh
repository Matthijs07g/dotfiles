#!/bin/bash
set -e

# Warn if running inside Hyprland
if [ "$XDG_CURRENT_DESKTOP" = "Hyprland" ]; then
    echo "WARNING: You are running this inside Hyprland."
    echo "It is recommended to run this from a TTY (Ctrl+Alt+F3) or another DE."
    read -p "Continue anyway? (y/N) " confirm
    if [ "$confirm" != "y" ]; then
        echo "Aborted."
        exit 1
    fi
fi

echo "Installing packages..."
sudo pacman -S --needed \
    hyprland alacritty \
    zsh zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search \
    stow git \
    hyprpolkitagent mako\
    pipewire wireplumber pipewire-pulse \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk \
    yazi eza ttf-jetbrains-mono-nerd \
    keychain sddm cliphist wl-clipboard \
    wofi starship quickshell

echo "Starting services..."
systemctl --user enable --now \
	hyprpolkitagent \
	pipewire pipewire-pulse wireplumber \

sudo systemctl enable sddm

echo "Stowing dotfiles..."
PACKAGES=(hypr alacritty mako yazi zsh wofi starship quickshell)
for package in "${PACKAGES[@]}"; do
    rm -rf ~/.config/$package
    stow --target="$HOME" "$package"
done

echo "Done!"
