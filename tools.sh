#!/bin/sh

############
### Taps ###
############

brew tap homebrew/core
brew tap homebrew/bundle
brew tap homebrew/services
brew tap jondot/tap

# Install Java as dependency
brew install --cask java

##########################
###### System Tools ######
##########################

brew install ack                        # Search tool like grep, but optimized for programmers
brew install bash                       # Bourne-Again SHell, a UNIX command interpreter
brew install bat                        # Clone of cat(1) with syntax highlighting and Git integration
brew install cloc                       # Statistics utility to count lines of code
brew install cmake                      # Cross-platform make
brew install coreutils                  # GNU File, Shell, and Text utilities
brew install curl                       # Get a file from an HTTP, HTTPS or FTP server
brew install denisidoro/tools/navi      # An interactive cheatsheet tool for the command-line ➜  navi
brew install direnv                     # Load/unload environment variables based on $PWD
brew install editorconfig               # Maintain consistent coding style between multiple editors
brew install exa                        # modern replacement for ls
brew install fd                         # Simple, fast and user-friendly alternative to find
brew install gcc                        # GNU compiler collection
brew install glow                       # Render markdown on the CLI
brew install grex                       # Command-line tool for generating regular expressions
brew install httpie                     # User-friendly cURL replacement (command-line HTTP client)
brew install jless                      # Command-line pager for JSON data
brew install mas                        # Mac App Store command-line interface
brew install neovim --HEAD              # NeoVim
brew install pkg-config                 # Manage compile and link flags for libraries
brew install readline                   # Library for command-line editing
brew install ruby                       # Powerful, clean, object-oriented scripting language
brew install rbenv                      # Ruby version manager
brew install slugify                    # Convert filenames and directories to a web friendly format
brew install tmate                      # Instant terminal sharing
brew install tmux                       # Terminal multiplexer
brew install tmuxinator                 # Create and manage tmux sessions easily
brew install tree                       # Display directories as trees (with optional color/HTML output)
brew install urlview                    # URL extractor/launcher (needed for tmux-urlview)
brew install watchman                   # Watch files and take action when they change
brew install wget                       # Internet file retriever
brew install yarn                       # JavaScript package manager
brew install z                          # Tracks most-used directories to make cd smarter

#############
### Git ###
#############
brew install git                        # Distributed revision control system
brew install git-lfs                    # Git extension for versioning large files
brew install gh                         # GitHub command-line tool
brew install bfg                        # Remove large files or passwords from Git history like git-filter-branch
brew install gource                     # Version Control Visualization Tool
brew install pre-commit                 # 

################################
### Data Science Development ###
################################
brew install cookicutter                # Create new projects from boilerplates
brew install six                        # Python 2 and 3 compatibility library
brew install circleci                   # CircleCI command-line tools for CI/CD pipelines
brew install awscli                     # AWS command-line tools
brew install openjdk                    # Open-Source JDK
brew install pyenv                      # Separate python environments
brew install python                     # Interpreted, interactive, object-oriented programming language
brew install docker                     # Pack, ship and run any application as a lightweight container
brew install postgresql                 # Open source relational database management system
brew install sqlite                     # Command-line interface for SQLite
brew install pyenv-virtualenv           # 
brew install libomp                     # LLVM's OpenMP runtime library