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
       - changed from a static picture into a function that selects pictures dynamically from assets folder
- first time cloning to new system - fixed errors and reqs, made install guide.
- second time cloning from git, went over install guide. found minor inconsistencies and errors. decide to make installation script.
- third time try installation script
  
## first time cloning
- forgot to change a bunch of req(sethy.something) to req(krisplanb.samething)
- lots of red text. need to run | sudo apt install -y build-essential
- snacks.lua
  - dashboard cmd doesnt accept functions directly. changed it. remember! change in git
- several issues with missing installs. gradually finding out which is needed.
- making an install list.
- apt install neovim gives wrong version, need to learn other ways to install.
- make install guide for neovim 11.2
- now stable
- make a new vm start from scratch. follow instructions to see if it is complete.

## second time cloning
- nvim install went fine.
- all apt installs fine.
- forgot to change the dashboard function in git, error still there this time
- issues with ascii-image converter. changed the way it was installed.
- mason giving warnings about not installing pylint and isort, commented out.
- installs seem to work fine now.
- make installation script
  - as an atempt at saving time. i tried feeding this into chat gippity and asking for a setup script. for fun i wont check it before running it on the next VM.
## third time cloning
- trying setup.
  - gippity didnt know the repo structure and asumed wrong. fixed it and trying again.
  - 

### Installs
- sudo apt install luarocks
- luarocks install pcre2
- sudo apt install -y build-essential
- sudo apt install -y git curl unzip ripgrep fd-find n pm
- sudo apt install ascii-image-converter
- sudo apt install npm
- sudo apt install unzip python3 python3-pip golang
- sudo apt install pylint isort
- sudo npm install -g pyright

- ascii image converter
  - echo 'deb [trusted=yes] https://apt.fury.io/ascii-image-converter/ /' \
  | sudo tee /etc/apt/sources.list.d/ascii-image-converter.list
  - sudo apt update
  - sudo apt install -y ascii-image-converter

## Neovim installation Ubuntu server 24.04
### i had a hard time figuring this out since im used to apt install, that leads to neovim 9.0 as of me writing this. had to learn a bit more about tarball to get version 11.2.
- this is how i ended up doing it and having it work for me. im open to other ways than this because i dont realy like it, im not entierly sure why.

  - curl -LO https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.tar.gz
  - tar xzvf nvim-linux-x86_64.tar.gz
  - sudo mv nvim-linux-x86_64 /opt/nvim
  - sudo ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim

### config installation:
- git clone https://github.com/Krisplanb/nvim-krisplanb.git /tmp/nvim-krisplanb
- rm -rf ~/.config/nvim
- mkdir -p ~/.config
- cp -r /tmp/nvim-krisplanb/.config/nvim ~/.config/
- rm -rf /tmp/nvim-krisplanb
this should delete any old config, replace with this config and remove itw own temp files and dirs. 
