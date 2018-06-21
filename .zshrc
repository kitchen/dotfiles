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

if which ack-grep > /dev/null 2>&1;  then
	alias ack="ack-grep"
fi

export PATH=$HOME/stripe/pay-server/scripts/bin:/usr/local/bin:$PATH

alias wal-e='sudo -u postgres /usr/bin/envdir /etc/wal-e.d/env /usr/local/bin/wal-e'

if [[ `expr $$ % 20` == "0" ]]; then
  if which doge 2>&1 > /dev/null ; then
    doge
  fi
fi

typeset -A projects
projects[sc]="$HOME/stripe/space-commander"
projects[puppet]="$HOME/stripe/puppet-config"
projects[payserver]="$HOME/stripe/pay-server"
projects[mongodash]="$GOPATH/src/github.com/stripe/mongodash"
projects[mongosloth-jira]="$GOPATH/src/github.com/stripe-internal/mongosloth-jira"

project() {
	dir=""
	if [ ! -z ${projects[$1]} ]; then
		dir=${projects[$1]}
	else
		dir="$HOME/stripe/${1}"
	fi
	if cd $dir; then
		/usr/local/bin/atom .
	else
		echo "failed to change into project directory"
	fi
	unset dir
}

areweup () {
	(
		set -ex;
		api-checker -r "$@";
		api-checker -rad "$@";
		api-checker -rV "$@"
	)
}

export GOPATH=~/golang
export PATH=$GOPATH/bin:$PATH

if which sc-ssh-wrapper 2>&1 >/dev/null; then
	alias ssh='sc-ssh-wrapper'
fi

export GOPATH=$HOME/Development/golang/
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$HOME/.composer/vendor/bin




# for now, until I figure out a better "local things" setup
. ~/.zshrc.cozy

