# Aliases
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias ll="ls -al" # List all files in current directory in long list format

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang workspace
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"