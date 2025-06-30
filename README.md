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
  - snacks.lua
    - changed cmd = "ascii-image-converter ~/Desktop/Others/profiles.JPG -C -c"
       - new location for assets = .config/nvim/assets
       - changed from a static picture into a function that selects pictures dynamically
- first time cloning to new system
  -
  
### first time cloning
- forgot to change a bunch of req(sethy.something) to req(krisplanb.samething)
- lots of red text. need to run | sudo apt install -y build-essential

- 
- 
### Installs
- sudo apt install luarocks
- luarocks install pcre2
-
## Neovim installation Ubuntu server 24.04
# i had a hard time figuring this out since im used to apt install, that leads to neovim 9.0 as of me writing this. had to learn a bit more about tarball to get version 11.2.
- this is how i ended up doing it and having it work for me. im very open to other ways than this, i dont realy like it, but im not entierly sure why.

  - curl -LO https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz
  - tar xzvf nvim-linux-x86_64.tar.gz
  - sudo mv nvim-linux-x86_64 /opt/nvim
  - sudo ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim
 
  
