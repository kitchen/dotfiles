# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# since I can't set my shell to zsh at GN
# and centos5 has too old of a zsh
# we'll do it this way
if [ -e "/bin/zsh" ]; then
	if [[ ! -z `zsh --version | grep 4.3` ]]; then
		exec /bin/zsh
	fi
fi

# since centos5 doesn't know wtf screen-256color is ...
# anddddddd since I added the .terminfo stuff, this shouldn't be needed any longer
#export TERM=screen
# but it is, so fuck it! I'm tired of fucking exporting that shit
export TERM=screen

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
