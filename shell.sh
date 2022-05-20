#!/bin/sh

brew install --cask iterm2
brew install zsh                        # UNIX shell (command interpreter)

# zsh extensions
brew install zsh-autosuggestions        # 
brew install zsh-syntax-highlighting    # Fish shell like syntax highlighting for zsh

# Copy ZSH config
cp -R .zshrc ~/.zshrc

# Set up iTerm
# download Menlo fonts