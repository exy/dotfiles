#!/usr/bin/env bash

# Setup a macOS environment quickly and easily!

# Set current directory ~/dotfiles to CONFIG_DIR
export CONFIG_DIR=$(dirname "$0")

echo "🔧 Setting up your Mac..."

sh $CONFIG_DIR/osx/tasks/install_packages.sh
sh $CONFIG_DIR/osx/tasks/brew.sh
sh $CONFIG_DIR/osx/tasks/symlink.sh
sh $CONFIG_DIR/osx/tasks/dock.sh

# Set zsh as your default shell
sudo chsh -s $(which zsh)

echo "⚡️All right! Restart your machine to complete the configuration."
