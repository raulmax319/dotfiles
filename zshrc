
# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
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

alias ls='ls -lAFh'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
# Add Visual Studio Code (code)
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
