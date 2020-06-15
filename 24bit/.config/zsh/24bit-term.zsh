# set us up for 24 bit color
# pretty rudimentary, but I'll need to figure out how to change my TERM on my devices
if [[ $TERM == "xterm-256color" ]]; then
    export TERM=xterm-24bit
fi

if [[ $TERM =~ "24bit" ]]; then
    # because root's terminfo knows bupkis about 24 bit terminals, of course
    alias sudo="env TERM=$(basename $TERM -24bit)-256color sudo"
    # probably gonna have to do something like this with ssh, but not really sure how I'm going to go about doing that ...
fi

