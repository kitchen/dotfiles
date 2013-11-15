# don't do things like ~rvm_rvmrc_cwd etc
# https://rvm.io/integration/zsh/
unsetopt auto_name_dirs

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
#export ZSH_CUSTOM=$HOME/.

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="blinks"

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
plugins=(git svn bundler rvm autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# turn off the annoying !12345 stuff over on the right. sorry but it fucks with my copy/paste and I don't use it
unset RPROMPT

export EDITOR=vim

umask 0022

# used to refresh ssh connection for tmux
# http://justinchouinard.com/blog/2010/04/10/fix-stale-ssh-environment-variables-in-gnu-screen-and-tmux/
function r() {
  if [[ -n $TMUX ]]; then
    NEW_SSH_AUTH_SOCK=`tmux showenv|grep '^SSH_AUTH_SOCK'|cut -d = -f 2`
    if [[ -n $NEW_SSH_AUTH_SOCK ]] && [[ -S $NEW_SSH_AUTH_SOCK ]]; then
      export SSH_AUTH_SOCK=$NEW_SSH_AUTH_SOCK
    fi
  fi
}

alias cap='env SSL_CERT_FILE=/usr/local/share/ca-bundle.crt cap'

alias mutt="skmutt"
alias skmutt="mutt -F ~/.mutt/sk/sk.rc"
alias nbmutt="mutt -F ~/.mutt/nb/nb.rc"

if which ack-grep > /dev/null 2>&1;  then
	alias ack="ack-grep"
fi

export NBUILD="$HOME/Development/nbuild"
export PATH=/usr/local/bin:$PATH
export DEBFULLNAME="Jeremy Kitchen"
export DEBEMAIL="jeremy@nationbuilder.com"

alias wal-e='sudo -u postgres /usr/bin/envdir /etc/wal-e.d/env /usr/local/bin/wal-e'
