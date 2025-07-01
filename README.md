# Neovim Config (Experimental) 🧪

This is my personal **experimental** Neovim configuration, designed for a clean and efficient **headless Linux environment**. It focuses on minimalism, fast startup, and a smooth plugin system powered by [lazy.nvim](https://github.com/folke/lazy.nvim).

> ⚠️ This setup is actively developed and may break or change frequently.

🛠️ This configuration is heavily based on [Sin-cy's dotfiles](https://github.com/Sin-cy/dotfiles), originally created for macOS.
This project is licensed under the GNU General Public License v3.0 (GPLv3), in accordance with the original license.

![Built for Linux Headless](https://img.shields.io/badge/Linux-Headless-informational?logo=linux)
![Neovim](https://img.shields.io/badge/Neovim-v0.11.2-success?logo=neovim)
![Status](https://img.shields.io/badge/status-experimental-orange)

---

## 🚀 Quick Install

Run this on a fresh system:

 ```bash
bash <(curl -s https://raw.githubusercontent.com/Krisplanb/nvim-krisplanb/main/setup.sh)
```

This script will:

- Install Neovim v0.11.2 from GitHub  
- Clone this config into `~/.config/nvim`  
- Install all required dependencies via `apt`, `npm`, `luarocks`, etc.

---

## 🧰 Manual Setup

### Install Neovim (v0.11.2)
```bash 
curl -LO https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz  
tar xzvf nvim-linux-x86_64.tar.gz  
sudo mv nvim-linux-x86_64 /opt/nvim  
sudo ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim  
```

### Clone Config

```bash 
  git clone https://github.com/Krisplanb/nvim-krisplanb.git /tmp/nvim-krisplanb
  rm -rf ~/.config/nvim mkdir -p ~/.config cp -r /tmp/nvim-krisplanb/.config/nvim ~/.config/
  rm -rf /tmp/nvim-krisplanb
```

---

## 🧠 Features

- Plugin management: `lazy.nvim`  
- Navigation & Search: `telescope.nvim`, `harpoon`  
- UI Enhancements: `lualine`, `incline`, `noice`  
- Code editing: `mini.*`, `comment`, `auto-pair`, `surround`  
- Language support: `mason`, `cmp`, `luasnip`, `pyright`  
- Fun extras: dynamic ASCII splash using `ascii-image-converter`  

---

## ⚠️ Notes / Known Issues

- `oil.nvim` has `delete_to_trash = false` because most headless systems don’t have trash  
- Some icons in `noice.nvim` were replaced due to lack of font support in terminals  
- This config is based on [sin-cy's dotfiles](https://github.com/Sin-cy/dotfiles) (originally for macOS)  

---

## 📓 Work Log

See [`worklog.md`](./worklog.md) for daily development notes and history.

---

## 🤝 Contributions

This is a personal project, but feel free to fork or suggest improvements.  
Just be aware it's built for **my headless Linux workflow** and may not suit other setups.
