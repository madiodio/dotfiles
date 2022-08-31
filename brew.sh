#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew install grep
brew install node

# Install useful binaries.
brew install ffmpeg
brew install git
brew install rename
brew install ssh-copy-id
brew install tree
brew install legit
brew install deno
brew install nvm
brew install snappy
brew install starship
brew install thefuck
brew install z
brew install zsh
brew install yarn


# Installs Casks
brew tap caskroom/cask

## Apps I use
brew install --cask vlc
brew install --cask transmission
brew install --cask insomnia


# Remove outdated versions from the cellar.
brew cleanup

curl https://bun.sh/install | bash
