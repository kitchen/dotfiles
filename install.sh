stows=(
	bash
	doom-emacs
	git
	gpg
	hg
	#spacemacs
	squarespace
	ssh
	thefuck
	tmux
	vim
	zsh
)

if ! which stow > /dev/null; then
	echo "stow required, please install"
	echo "`brew install stow` or `sudo apt install stow`"
	exit 2
fi

stow -R -v ${stows[@]}
