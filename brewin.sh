#!/usr/bin/env bash

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
brew install tree
brew install bash-completion
brew install zsh-completion
brew install libyubikey
brew install zsh-syntax-highlighting
brew install jq
brew install jo
brew install blueutil
brew install go
brew install hub
brew install terraform

# Remove outdated versions from the cellar.
brew cleanup

