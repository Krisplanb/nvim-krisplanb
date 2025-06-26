# Neovim Config (Experimental)

This is my personal **experimental** Neovim configuration, primarily intended for a headless **Linux**.

> ⚠️ Use at your own risk. This setup is a work in progress and may change frequently.

## Inspiration

The base setup is adapted from [sin-cy's dotfiles](https://github.com/Sin-cy/dotfiles),  with my own custom changes and additions.

## Goals

- Minimal but functional
- Fast startup
- Plugin management via [lazy.nvim](https://github.com/folke/lazy.nvim)

## Notes

- the base from sin-cy was made for mac
- This config is built and tested on Linux only.
- Some features may not work on macOS or Windows.

## Intentions and Milestones

- first goal is to adapt to linux based setup
  - image-support.lua isnt needed for headless linux. removed entierly
  - oil.lua
    - Changed setting delete_to_trash to false. Most Linux server environments do not include a trash system by default.
      Alternative: Set it to true and install trash-cli (sudo apt install trash-cli).
  - noice.lua
    - icons came up as 󰥻, changed them to digraph symbols (minor change not important)

### Installs
- sudo apt install luarocks \
- luarocks install pcre2      \>- these two installed in order
- 
