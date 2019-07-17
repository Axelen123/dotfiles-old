#!/bin/zsh --login
sep() {
    echo "==================="
}

sep
echo "rvm:"
rvm --version || true
sep
echo "ruby:"
ruby --version || true
sep
echo "gem:"
gem --version || true
sep
echo "nvm:"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm --version || true
sep
echo "node:"
node --version || true
sep
echo "npm:"
npm --version || true
sep
echo "gvm:"
gvm version || true
sep
echo "go:"
go version || true
sep
echo "rustup:"
rustup --version || true
sep
echo "rustc:"
rustc --version || true
sep
echo "cargo:"
cargo --version || true
sep
echo "python2:"
python2 --version || true
sep
echo "pip2:"
pip2 --version || true
sep
echo "python3:"
python3 --version || true
sep
echo "pip3:"
pip3 --version || true
sep
echo "nvim:"
if nvim --version; then
    if ! nvim --version | grep -oP "NVIM v(0.[3-9]+|[1-9]+.[0-9]+).[0-9]+"; then
        echo "NVIM version needs to be 0.3.0 or higher.\nDownload from https://github.com/neovim/neovim/releases/latest or build from source."
    fi
fi
sep

