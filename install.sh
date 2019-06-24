#!/bin/bash --login

pkg_mgr() {
    if [ -z "$PKG_CMD" ]
    then
        command -v $1
        if [ "$?" -eq 0 ]
        then
            if [ "$1" == "brew" ]
            then
                NO_BISON=true
            fi
            PKG_CMD=$2
        fi
    fi
}

pkg_mgr apt-get "sudo apt-get install -y"
pkg_mgr dnf "sudo dnf install -y"
pkg_mgr yum "sudo yum install -y"
if [ -z "$HOMEBREW_PREFIX" ]
then
    pkg_mgr brew "brew install -y"
else
    pkg_mgr brew "sudo brew install -y"
fi
pkg_mgr pacman "sudo pacman -S"

if [ -z "$PKG_CMD" ]
then
    echo "Could not find a valid package manager and PKG_CMD not specified,"
    echo "please run PKG_CMD=\"sudo YOUR_PACKAGE_MANAGER install\" ./install.sh"
    exit 1
fi

cmd() {
    command -v "$1"
    if [ "$?" -eq 1 ]
    then
        echo "$1 not found. Installing"
        if [ -z "$2" ]
        then
            sh -c "$PKG_CMD $1"
        else
            sh -c "$PKG_CMD $2"
        fi
    fi
}

run() {
    echo
    sh -c "curl -fsSL $2 | $1"
    if [ "$?" -ne 0 ]
    then
        echo "Script exited with status $?. Please check logs." && exit $?
    fi
}

cmd pip2 python-pip
cmd pip3 python3-pip
cmd ps procps
cmd git
cmd zsh
cmd curl
cmd nvim neovim
cmd gpg2 gnupg2
if [ -z "$NO_BISON"]
then
    $PKG_CMD bison
fi

cp -r `dirname $0`/.zsh-custom ~/.zsh-custom
echo "Backing up .zshrc (if it exists)"
(mv ~/.zshrc ~/.zshrc.zsh-backup > /dev/null 2>&1) || true
echo "Backed up .zshrc"

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

run bash https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh
run bash https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer
. ~/.nvm/nvm.sh
. ~/.gvm/scripts/gvm
nvm install stable
# Gets latest go version
LATEST_GO=`gvm listall | python3 -c "import sys, re; r = re.compile(\"^go1.[0-9]+.[0-9]+$\"); print(\"\".join(list(filter(r.match, sys.stdin.read().split(\"   release.r\")[0].split(\"   \")))[-1].split(\"\n\")))"`

gvm install $LATEST_GO --prefer-binary
gvm use $LATEST_GO --default
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
run bash https://get.rvm.io
run "sh -s -- -y --default-toolchain stable" https://sh.rustup.rs
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/.rvm/bin:$PATH"
rvm get stable
rvm install ruby --latest
rvm alias create default ruby
if [ "$OS_TYPE" == "darwin" ]
then
    export GEM_HOME=`readlink $HOME/.rvm/rubies/default`
else
    export GEM_HOME=`readlink -f $HOME/.rvm/rubies/default`
fi
export GEM_PATH="$GEM_HOME:$GEM_HOME@global"
export PATH="$GEM_HOME/bin:$GEM_HOME@global/bin:$PATH"
cargo install lsd
echo "Backing up nvim config (if it exists)"
(mv ~/.config/nvim ~/.config/nvim.backup > /dev/null 2>&1) || true
echo "Backed up nvim config"
cp -r `dirname $0`/nvim ~/.config/nvim
cd ~/.config/nvim
./install.sh
cd -
cp `dirname $0`/.zshrc ~/.zshrc
echo "Installation complete. Running postinstall checks..."
TERM=xterm-256color zsh -c `echo "$(dirname $0)/postinstall.sh"`
echo "Done. Make sure to check the logs for errors."
echo "To use zsh, run \"exec zsh\"."
echo "You can change your default shell to zsh by running \"chsh $USER /bin/zsh\"."