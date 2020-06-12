# set us up for 24 bit color
# pretty rudimentary, but I'll need to figure out how to change my TERM on my devices
if [[ $TERM == "xterm-256color" ]]; then
    export TERM=xterm-24bit
fi
