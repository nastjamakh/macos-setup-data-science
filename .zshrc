# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# docker on M1
export DOCKER_DEFAULT_PLATFORM="linux/amd64"

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

## bookmarking
alias j="jump"
alias m="bookmark"

## Data Science scripts
alias jp="jupyter lab"
alias ds="./bin/docker-start.sh"
alias ns="./bin/notebook-start.sh"
alias dr="./bin/docker-remove.sh"
alias de="./bin/docker-exec.sh"
alias ws="./bin/docker-exec.sh ./bin/webserver-start.sh"
alias utests="./bin/dev/docker-exec.sh poetry run pytest -s"
alias redis="docker run -p 6379:6379 redis"

## Hugo blog
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

