stows=(
	bash
	doom-emacs
	git
	gpg
	hg
	squarespace
	ssh
	thefuck
	tmux
	vim
	zsh
)

retired_stows=(
	spacemacs
)

if ! which stow > /dev/null; then
	echo "stow required, please install"
	echo "`brew install stow` or `sudo apt install stow`"
	exit 2
fi

stow -D -v ${retired_stows[@]}

stow -R -v ${stows[@]}
