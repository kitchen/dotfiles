# TODO change this to use $OSTYPE and also probably remove some/all of it?
if [[ $TERM_PROGRAM == 'iTerm.app' ]]; then
    antigen bundle osx
    export PATH=$PATH:/usr/local/sbin
    export EDITOR=emacsclient
    export ALTERNATE_EDITOR=vim
fi
