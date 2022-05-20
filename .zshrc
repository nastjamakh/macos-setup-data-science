# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="bin:$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
eval "$(thefuck --alias)"

# docker
export DOCKER_DEFAULT_PLATFORM="linux/amd64"

export LLVM_CONFIG='/usr/local/opt/llvm/bin/llvm-config'
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# pulumi on M1
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"


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

# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias c="code ."

## Git aliases
alias gpl="git pull"
alias gph="git push"
alias ga="git add"
alias gf="git fetch"
alias gct="git checkout"
alias gcm="git commit -m"
alias git-work="ssh-add -D && ssh-add ~/.ssh/id_ed25519_tier"
alias git-personal="ssh-add -D && ssh-add ~/.ssh/id_ed25519"

## bookmarking
alias j="jump"
alias m="bookmark"

## Data Science
alias jp="jupyter lab"
alias ds="./bin/docker-start.sh"
alias ns="./bin/notebook-start.sh"
alias dr="./bin/docker-remove.sh"
alias de="./bin/docker-exec.sh"
alias ws="./bin/docker-exec.sh ./bin/webserver-start.sh"
alias utests="./bin/dev/docker-exec.sh poetry run pytest -s"
alias redis="docker run -p 6379:6379 redis"

## Hugo
alias hugoclean="hugo mod clean --themesDir ../.. && rm -r public"
alias hugorun="hugo server --gc --disableFastRender --ignoreCache --renderToDisk --cleanDestinationDir --themesDir ../.."

# ZSH setup
export ZSH_THEME="agnoster-fcamblor"
export TERM="xterm-256color"

plugins=(git 
	colored-man-pages 
	colorize 
	pip 
	python 
	brew 
	copypath 
	copyfile 
	dirhistory 
	history 
	macos 
	zsh-autosuggestions
	zsh-syntax-highlighting 
	pyenv 
	zshmarks )

source $ZSH/oh-my-zsh.sh