#!/bin/sh

# Activate Pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init --path)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

# install python versions
pyenv install 3.9.11
pyenv install 3.10.4

# add virtual environments
pyenv virtualenv 3.9.11 py39
pyenv virtualenv 3.10.4 py310
pyenv virtualenv 3.10.4 ml

pyenv global py39
brew link python@3.9

# install basic requirements

echo 'export LLVM_CONFIG="/usr/local/opt/llvm/bin/llvm-config"' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/opt/llvm/lib"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/usr/local/opt/llvm/include"' >> ~/.zshrc

# pulumi on M1
echo 'export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1' >> ~/.zshrc
echo 'export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1' >> ~/.zshrc
echo 'export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"' >> ~/.zshrc

# Conda
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/$USER/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/$USER/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/$USER/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/$USER/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
