# 🚀 Arch Linux Dotfiles

A curated collection of configuration files for a modern Arch Linux desktop environment featuring Hyprland, Waybar, and beautiful aesthetics.

## ✨ Features

- **🪟 Hyprland**: Wayland compositor with stunning animations and tiling capabilities
- **📊 Waybar**: Highly customizable status bar with modern styling
- **🐱 Kitty**: GPU-accelerated terminal emulator
- **🌸 Catppuccin Theme**: Consistent theming across all applications
- **💻 Neovim**: Fully configured with LazyVim and LSP support
- **🔍 Wofi**: App launcher and menu system
- **🎨 Wallpaper Collection**: Curated anime, nature, and artistic wallpapers
- **🔧 Zsh + Powerlevel10k**: Beautiful and fast shell experience

## 📦 Included Configurations

### Window Manager & Compositor
- **Hyprland**: Main configuration with modular setup
  - Animations and transitions
  - Window rules and workspace management
  - Keybindings and shortcuts
  - Monitor configuration
  - NVIDIA GPU support

### Status Bar & UI
- **Waybar**: Custom status bar with system information
- **Wofi**: Application launcher with custom styling
- **Hyprlock**: Screen locking utility
- **Hypridle**: Idle management

### Terminal & Development
- **Kitty**: Terminal emulator configuration
- **Neovim**: Complete IDE setup with:
  - LSP configurations
  - Syntax highlighting (Treesitter)
  - Git integration
  - File explorer (Neo-tree)
  - Code completion
  - Linting and formatting

### Shell Environment
- **Zsh**: Shell configuration
- **Powerlevel10k**: Prompt theme

## 🎨 Screenshots

*Beautiful, modern desktop environment with consistent theming*

## 📋 Prerequisites

Before installation, ensure you have the following packages installed:

```bash
# Essential packages
sudo pacman -S hyprland waybar kitty neovim zsh wofi git

# Additional dependencies
sudo pacman -S ttf-fira-code ttf-font-awesome
```

## 🚀 Quick Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/dotfiles-arch.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Run the installation script**:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Restart your shell or source the configuration**:
   ```bash
   source ~/.zshrc
   ```

## 🔧 Manual Installation

If you prefer to install manually:

```bash
# Create necessary directories
mkdir -p ~/.config

# Symlink configuration directories
ln -sf ~/dotfiles/config/hypr ~/.config/hypr
ln -sf ~/dotfiles/config/kitty ~/.config/kitty
ln -sf ~/dotfiles/config/nvim ~/.config/nvim
ln -sf ~/dotfiles/config/waybar ~/.config/waybar
ln -sf ~/dotfiles/config/wofi ~/.config/wofi

# Symlink shell configurations
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/p10k.zsh ~/.p10k.zsh

# Make scripts executable
chmod +x ~/dotfiles/config/scripts/*.sh
```

## 🎯 Post-Installation

1. **Set Zsh as default shell**:
   ```bash
   chsh -s $(which zsh)
   ```

2. **Install Powerlevel10k** (if not already installed):
   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
   ```

3. **Configure Powerlevel10k**:
   ```bash
   p10k configure
   ```

## 📁 Structure

```
dotfiles/
├── config/
│   ├── hypr/           # Hyprland configuration
│   ├── kitty/          # Terminal emulator
│   ├── nvim/           # Neovim IDE setup
│   ├── waybar/         # Status bar
│   ├── wofi/           # App launcher
│   ├── scripts/        # Utility scripts
│   └── assets/         # Wallpapers and resources
├── zshrc               # Zsh configuration
├── p10k.zsh            # Powerlevel10k theme
├── install.sh          # Installation script
└── README.md           # This file
```

## 🎨 Customization

### Wallpapers
The `config/assets/wallpapers/` directory contains curated wallpaper collections:
- Anime-themed wallpapers
- Nature photography
- Abstract and artistic designs

### Themes
The configuration uses the Catppuccin color scheme. To change themes, modify the theme files in each application's config directory.

### Keybindings
Hyprland keybindings are defined in `config/hypr/keybindings.conf`. Customize them according to your preferences.

## 🔧 Utility Scripts

- `scripts/swww.sh`: Wallpaper management with swww
- `scripts/update.sh`: System update automation
- `scripts/gitswitch.sh`: Git branch switching utility

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for improvements or additional configurations.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- [Hyprland](https://hyprland.org/) - Amazing Wayland compositor
- [Catppuccin](https://catppuccin.com/) - Beautiful color palette
- [LazyVim](https://lazyvim.org/) - Neovim configuration framework
- The amazing Arch Linux community

---

⭐ **Star this repository if you found it helpful!**