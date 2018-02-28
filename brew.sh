#!/usr/bin/env bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/ Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install wget

# Java related
brew cask install java
brew install maven
brew cask install eclipse-java

brew install bash-completion
brew install git-gerrit

brew cask install google-chrome

# Remove outdated versions from the cellar.
brew cleanup
