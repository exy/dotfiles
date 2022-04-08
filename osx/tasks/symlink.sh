#!/bin/bash

source $CONFIG_DIR/common/functions.sh

DOTFILE_DIR=$CONFIG_DIR/stow

DOTFILES=(
    "git"
    "tmux"
    "vim"
    "zsh"
    "gnupg"
)

cd $DOTFILE_DIR

for dotfile in "${DOTFILES[@]}";do
    msg_checking "Linking file to $HOME/${dotfile}"
    stow -vt ~ $dotfile
done