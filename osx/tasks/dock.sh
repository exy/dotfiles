#!/usr/bin/env bash

source $CONFIG_DIR/common/functions.sh
source $CONFIG_DIR/osx/tasks/dock_utils.sh

# WARNING: permanently clears existing dock
clear_dock
disable_recent_apps_from_dock

msg_install "Dock"
add_app_to_dock "System Preferences"
add_app_to_dock "iTerm"
add_app_to_dock "Firefox"
add_app_to_dock "PhpStorm"
add_app_to_dock "Slack"
add_app_to_dock "Microsoft Outlook"
add_app_to_dock "Microsoft Teams"
add_app_to_dock "Spotify"
add_app_to_dock "Obsidian"
add_spacer_to_dock
add_folder_to_dock $HOME/Downloads -d 0 -s 2 -v 0
msg_ok "OK"

killall Dock