#!/bin/sh

############
### Taps ###
############

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

# XQuartz needs to be installed first
brew install --cask xquartz

###########################
####### Development #######
###########################

brew install --cask dbeaver-community                               # SQL client
brew install --cask miniforge                                       # Minimalistic conda installer
brew install --cask devutils                                        # 
brew install --cask raycast                                         # Spotlight replacement
brew install --cask visual-studio-code                              # IDE
brew install --cask postman                                         # HTTP requests
brew install --cask authy                                           # Authentificator app
brew install --cask hugo                                            # Static site generator

#########################
####### Utilities #######
#########################

brew install --cask raycast                                         # Spotlight replacement
brew install --cask google-chrome
brew install --cask pdf-expert
brew install --cask 1password
brew install --cask bartender
brew install --cask the-unarchiver
brew install --cask vlc
brew install --cask itsycal
mas install 937984704                                               # Amphetamine
mas install 441258766                                               # Magnet
mas install 1191449274                                              # ToothFairy

############################
####### Productivity #######
############################

brew install --cask notion                                          # Notes and to-dos
brew install --cask pdf-expert                                      # PDF reader
brew install --cask google-chrome                                   # Browser
mas install 1091189122                                              # Bear - markdown notes
mas install 1006087419                                              # SnippetsLab
mas install 409201541                                               # Spark - email client
mas install 1487937127                                              # Craft

######################
####### Social #######
######################

brew install --cask skype
brew install --cask zoom
brew install --cask telegram
brew install --cask whatsapp
brew install --cask slack

###############
##### Fun #####
###############
brew install --cask spotify
brew install --cask affinity-designer
brew install --cask affinity-photo
brew install --cask affinity-publisher
brew install --cask adobe-creative-cloud
