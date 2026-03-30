#!/bin/bash

set -e

echo "Restowing dotfiles..."
PACKAGES=(hypr waybar yazi)
for package in "${PACKAGES[@]}"; do
    stow --restow --target="$HOME" "$package"
done

echo "Done!"
