# Aliases
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias ll="ls -al" # List all files in current directory in long list format

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Golang workspace
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"