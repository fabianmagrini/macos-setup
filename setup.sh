#!/bin/sh
#
# This script should be run via curl:
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/fabianmagrini/macos-setup/master/setup.sh)"
# or via wget:
#   sh -c "$(wget -qO- https://raw.githubusercontent.com/fabianmagrini/macos-setup/master/setup.sh)"
# or via fetch:
#   sh -c "$(fetch -o - https://raw.githubusercontent.com/fabianmagrini/macos-setup/master/setup.sh)"
#
# As an alternative, you can first download the script and run it afterwards:
#   wget https://raw.githubusercontent.com/fabianmagrini/macos-setup/master/setup.sh
#   sh setup.sh
#

# set default values
hostname="localhost"
install_dotnet="N"
install_azurecli="N"

# override from config file if it exists
if [ -f setup.conf ]
then
    source setup.conf
fi

# xcode command line utilities
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git
brew install jq
brew install tree
brew install wget

brew tap homebrew/cask-versions

brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask postman

brew install --cask google-chrome
brew install --cask firefox
brew install --cask firefox@developer-edition

brew install --cask 1password
brew install --cask calibre
brew install --cask dropbox
brew install --cask idrive
brew install --cask vlc

# install from the app store
brew install mas

# xcode
mas install 497799835
sudo xcodebuild -license accept

# dotnet
if [[ "$install_dotnet" == "Y" ]]
then 
    brew install --cask dotnet
fi

# node using nvm
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc
source ~/.zshrc
nvm install node
node -v
npm list

# golang
brew install golang
go version
echo 'export GOPATH="$HOME/go"' >> ~/.zshrc
echo 'export PATH="$GOPATH/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
mkdir ~/go

# python
brew install python3 pipenv

# azure cli
if [[ "$install_azurecli" == "Y" ]]
then 
    brew update && brew install azure-cli
fi

