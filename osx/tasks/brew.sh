#!/usr/bin/env bash

# Install command-line tools using Homebrew.

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

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Brew Tap (Third-Party Repositories)
#brew tap homebrew/bundle #https://github.com/Homebrew/homebrew-bundle
#brew tap homebrew/core #https://github.com/Homebrew/homebrew-core
brew tap homebrew/cask #https://github.com/Homebrew/homebrew-cask
brew tap homebrew/cask-fonts #https://github.com/Homebrew/homebrew-cask-fonts

# Install font
brew install --cask font-hack
brew install --cask font-hack-nerd-font
brew install --cask font-fira-code

# Install useful packages/binaries
#brew install cmake
#brew install exa
brew install fd
brew install fzf
brew install git
#brew install gnu-sed
#brew install gpac
#brew install gpatch
brew install mas
brew install pandoc # convertion Markdown tool
#brew install ripgrep
brew install stow # symlink manager
brew install tldr
brew install neovim
brew install tmux
brew install tree
brew install z

# This is needed for fzf to know how to ignore files listed in .gitignore
# and know how to show hidden files
# It is also a good CLI tool
brew install the_silver_searcher # ag

# Dev tools
brew install docker
brew install docker-compose
brew install --cask phpstorm
brew install --cask visual-studio-code
brew install --cask sequel-ace
brew install --cask postman
brew install --cask ngrok

# Install cask packages
#brew install --cask alacritty
brew install --cask iterm2
brew install --cask firefox
brew install --cask imageoptim
brew install --cask slack
brew install --cask discord
brew install --cask element
brew install --cask spotify
brew install --cask bitwarden
brew install --cask itsycal
brew install --cask dozer
#brew install --cask grammarly
brew install --cask rectangle
#brew install --cask drawio
brew install --cask obsidian
brew install --cask cyberduck
brew install --cask appcleaner
brew install --cask authy
brew install --cask joplin
brew install --cask monitorcontrol
brew install --cask calibre
brew install --cask keybase
brew install --cask fork
brew install --cask onyx
brew install --cask the-unarchiver
#brew install --cask flycut # clipboard manager

# Remove outdated versions from the cellar.
brew cleanup
