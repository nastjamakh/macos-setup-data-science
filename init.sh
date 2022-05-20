#!/bin/sh

# https://gist.github.com/jbelke/4496b2b1d7900d7971802332234bd781
# https://github.com/kogakure/dotfiles/tree/master/setup

# Install Xcode Developer Tools
xcode-select --install

# Install TMUX Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

chmod -R 755 .

# Installing Homebrew packages
source ./tools.sh

# Installing Homebrew Cask and App Store apps
source ./apps.sh

# Setting up shell with zsh
source ./shell.sh

# Setting up git
source ./git.sh

# Installing Node.js
source ./nvm.sh

# Installing Python version manager
source ./python.sh

# Install current version of Ruby
source ./ruby.sh

# Install Visual Studio Code Extensions
source ./vscode.sh

# System configuration
source ./config.sh