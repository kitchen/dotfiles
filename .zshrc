# don't do things like ~rvm_rvmrc_cwd etc
# https://rvm.io/integration/zsh/
unsetopt auto_name_dirs

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
#export ZSH_CUSTOM=$HOME/.

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="sunrise"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# uncomment to disable automatic window titles
export DISABLE_AUTO_TITLE="true"

export ZSH_CUSTOM=$HOME/.zsh/oh-my-zsh-custom/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn bundler rvm autojump zsh-syntax-highlighting nvm knife)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# turn off the annoying !12345 stuff over on the right. sorry but it fucks with my copy/paste and I don't use it
unset RPROMPT

export EDITOR=vim

umask 0022

alias mutt="skmutt"
alias skmutt="mutt -F ~/.mutt/sk/sk.rc"

if which ack-grep > /dev/null 2>&1;  then
	alias ack="ack-grep"
fi

if [[ `expr $$ % 20` == "0" ]]; then
  if which doge 2>&1 > /dev/null ; then
    doge
  fi
fi

# for now, until I figure out a better "local things" setup
if [[ -r ~/.zshrc.cozy ]]; then
	. ~/.zshrc.cozy
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
