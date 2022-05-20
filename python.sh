# Activate Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# install python versions
pyenv install 3.9.11
pyenv install 3.10.4

# add virtual environments
pyenv virtualenv 3.9.11 py39
pyenv virtualenv 3.10.4 py310
pyenv virtualenv 3.10.4 ml

pyenv global py39

# install basic requirements