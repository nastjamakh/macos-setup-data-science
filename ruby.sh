#!/bin/sh

rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv install -l | grep -v - | tail -1)

brew install brew-gem
brew gem install bundler

echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc

echo 'export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="~/.gem/ruby/2.6.0/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"' >> ~/.zshrc