
# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}

function dev () {
	cd ~/Developer
	cd "$@"
}

function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
# Enable substitution in the prompt.
setopt prompt_subst

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/raulmax319/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Customize Prompt
PROMPT='%(?.%F{green}⚙️ .%F{red}👹 %B%?)%f %F{154}%1~ %B%F{red}$(parse_git_branch)%F{black} %# %f%b' 

# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias android='open -a /Applications/Android\ Studio.app ./android'
alias pods='cd ios && pod install'

export HOMEBREW_CASK_OPTS="--no-quarantine"
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# npm global folder
export PATH=~/.npm-global/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
