#!/usr/bin/env bash

source $CONFIG_DIR/common/functions.sh

# Install non-brew various tools (PRE-BREW Installs)
if which xcode-select &> /dev/null; then
    msg_checking "Xcode Command Line"
else
    msg_install "Xcode Command Line"

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? ' XCode Command Line Tools Installed'

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10
    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

    msg_ok "OK"
fi


# Homebrew
if which brew &> /dev/null; then
    msg_checking "Homebrew"
else
    msg_install "Homebrew" "/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    msg_ok "OK"
fi

# oh-my-zsh - https://ohmyz.sh
if which zsh &> /dev/null; then
    msg_checking "Oh My Zsh"
else
    msg_install "Oh My Zsh" "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    msg_ok "OK"
fi