if type emacsclient > /dev/null; then
	export EDITOR=emacsclient
	export ALTERNATE_EDITOR=vi
else
	export EDITOR=vi
fi
