#!/bin/sh

echo Enter your git username:
read gitusername
echo Enter your git email:
read gitemail
git config --global user.name gitusername
git config --global user.email gitemail
git config --global credential.helper osxkeychain

# Generate new SSH key pair
ssh-keygen -t ed25519 -C gitemail
eval "$(ssh-agent -s)"
echo 'Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519' >> ~/.ssh/config
ssh-add -K ~/.ssh/id_ed25519

# add SSH key to GitHub (you must be logged in)
pbcopy < ~/.ssh/id_ed25519.pub
open https://github.com/settings/ssh/new