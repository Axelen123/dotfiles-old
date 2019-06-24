# Dotfiles
This repo contains my config for neovim and zsh.

I usually use VSCode but sometimes when I am in the terminal I just use neovim because I don't want to wait for VSCode to load.

## Setup
### Prerequisites
- git
- sudo access
- [nerd font](#fonts)
- MacOS only: [homebrew](https://brew.sh) and XCode CLI Tools (`xcode-select --install`)
### Installation
```sh
# Make sure to backup your .dotfiles folder if you have one (and other files too incase something goes wrong)
git clone https://github.com/Axelen123/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

If you only want the NVIM config:
```sh
# Again, backup your nvim config and your .dotfiles folder if they exist
git clone https://github.com/Axelen123/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
cp ~/.dotfiles/nvim ~/.config/nvim
cd ~/.config/nvim
# Read the README.md of the nvim folder to see things that you need before running install script (they are automatically installed with the install script in the root of the repo)
./install.sh
```

## Fonts
I currently use FiraCode "Nerd Font", which you can download [here](https://github.com/ryanoasis/nerd-fonts/releases/latest). You can test if the font is working by running:

```sh
curl https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/bin/scripts/test-powerlines.sh | bash
```
