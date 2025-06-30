#!/bin/bash
set -e

echo "=== Installing Neovim ==="
NVIM_VERSION="v0.11.2"
curl -LO "https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"
tar xzvf nvim-linux-x86_64.tar.gz
sudo mv nvim-linux-x86_64 /opt/nvim
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
rm nvim-linux-x86_64.tar.gz

echo "=== Installing Neovim config ==="
CONFIG_TEMP="/tmp/nvim-krisplanb"
CONFIG_TARGET="$HOME/.config/nvim"

git clone https://github.com/Krisplanb/nvim-krisplanb.git "$CONFIG_TEMP"
rm -rf "$CONFIG_TARGET"
mkdir -p "$HOME/.config"
cp -r "$CONFIG_TEMP/config/nvim" "$CONFIG_TARGET"
rm -rf "$CONFIG_TEMP"

echo "=== Installing dependencies ==="

# ASCII image converter
echo "deb [trusted=yes] https://apt.fury.io/ascii-image-converter/ /" | \
    sudo tee /etc/apt/sources.list.d/ascii-image-converter.list
sudo apt update
sudo apt install -y ascii-image-converter

echo "✅ All done. Neovim and environment set up!"

# Install packages
sudo apt update
sudo apt install -y \
    luarocks \
    build-essential \
    git \
    curl \
    unzip \
    ripgrep \
    fd-find \
    npm \
    python3 \
    python3-pip \
    golang \
    pylint \
    isort

# LuaRocks packages
sudo luarocks install pcre2

# Python/JS linters
sudo npm install -g pyright


