#!/bin/bash

# xcode command line utilities
xcode-select --install

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

brew tap homebrew/cask-versions

brew cask install iterm2
brew cask install visual-studio-code
brew cask install docker
brew cask install fork

brew cask install google-chrome
brew cask install firefox
brew cask install firefox-developer-edition

brew cask install atom
brew cask install calibre
brew cask install dropbox
brew cask install skype
brew cask install transmission
brew cask install vlc


# install from the app store
brew install mas

# xcode
mas install 497799835

# node using nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
source ~/.bash_profile
nvm install node
node -v
npm list

# golang
brew install golang
go version
echo 'export GOPATH="$HOME/go"' >> ~/.bash_profile
echo 'export PATH="$GOPATH/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
mkdir ~/go

# python
brew install python3 pipenv

# azure cli
brew update && brew install azure-cli


