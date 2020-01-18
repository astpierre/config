#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update
brew upgrade --all

brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install moreutils
brew install findutils
brew install gnu-sed
brew install wget --with-iri
brew install python
brew install python3
brew install ruby-build
brew install rbenv
LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra
brew install vim --override-system-vi
brew install git
brew install tree
brew install docker
brew install bash-completion
brew install zsh-completion
brew install libyubikey
brew install zsh-syntax-highlighting
brew install jq
brew install jo
brew install blueutil
brew install go
brew install hub

# Remove outdated versions from the cellar.
brew cleanup

echo "Git config"
git config --global user.name "Andrew St Pierre"
git config --global user.email andrew.stpierre@gmail.com