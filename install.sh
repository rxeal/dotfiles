#!/bin/bash

# Dotfiles installation script
# This script creates symlinks for all configuration files

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create .config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ -L "$target" ]; then
        echo "Removing existing symlink: $target"
        rm "$target"
    elif [ -e "$target" ]; then
        echo "Backing up existing file: $target -> $target.backup"
        mv "$target" "$target.backup"
    fi
    
    echo "Creating symlink: $target -> $source"
    ln -sf "$source" "$target"
}

# Symlink config directories
echo "Setting up config directories..."
create_symlink "$DOTFILES_DIR/config/hypr" "$CONFIG_DIR/hypr"
create_symlink "$DOTFILES_DIR/config/kitty" "$CONFIG_DIR/kitty"
create_symlink "$DOTFILES_DIR/config/nvim" "$CONFIG_DIR/nvim"
create_symlink "$DOTFILES_DIR/config/waybar" "$CONFIG_DIR/waybar"
create_symlink "$DOTFILES_DIR/config/wofi" "$CONFIG_DIR/wofi"

# Symlink shell configuration files
echo "Setting up shell configuration..."
create_symlink "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/p10k.zsh" "$HOME/.p10k.zsh"

# Make scripts executable
echo "Making scripts executable..."
chmod +x "$DOTFILES_DIR/config/scripts"/*.sh

echo "Dotfiles installation complete!"
echo "You may need to restart your shell or run 'source ~/.zshrc' to apply changes."