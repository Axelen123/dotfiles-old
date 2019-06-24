export NVM_DIR="$HOME/.nvm"
export GO111MODULE=on
export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.rvm/bin:"
source $HOME/.cargo/env

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"