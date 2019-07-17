# Dotfiles
This repo contains my config for neovim and zsh.

I usually use VSCode but sometimes when I am in the terminal I just use neovim because I don't want to wait for VSCode to load.

## Setup
### Prerequisites
- git
- sudo access
- [nerd font](#fonts)
- MacOS only: [homebrew](https://brew.sh) and XCode CLI Tools (`xcode-select --install`)
You also need to configure your terminal
to run your shell as a login shell (Gnome Terminal: Menu -> Preferences -> PROFILE (default: Unnamed) -> Command -> Run my shell as a login shell)

### Installation

To install my dotfiles, simply symlink or copy these files/folders to your home:
- repo/.zshrc -> ~/.zshrc
- repo/.zsh-custom -> ~/.zsh-custom
- repo/nvim -> ~/.config/nvim

also run the `install.sh` script found inside the nvim folder (after you copy/symlink it!),
after you are done you should run the `postinstall.sh` script to make sure that everything was installed properly.
#### Install script (not recommended, experimental)
```sh
# Make sure to backup your .dotfiles folder if you have one (and other files too incase something goes wrong)
git clone https://github.com/Axelen123/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
# Warning: the install script will symlink ~/.zsh-custom to REPO_LOCATION/.zsh-custom and ~/.config/nvim to REPO_LOCATION/nvim
# If you don't want to symlink then run "NO_SYMLINK=true ./install.sh" instead.
# The script will try to install bison. If bison is not in your package repository then run "NO_BISON=true ./install.sh" instead.
./install.sh
chsh -s /usr/bin/zsh
exec zsh --login
```

#### NVim config only
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
