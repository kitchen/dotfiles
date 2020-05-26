stows=(
	bash
	doom-emacs
	fzf
	gcloud
	git
	golang
	gpg
	hg
	kubernetes
	osx
	ruby
	rust
	squarespace
	ssh
	thefuck
	tmux
	vim
	zsh
)

if ! which stow > /dev/null; then
	echo "stow required, please install"
	echo '`brew install stow` or `sudo apt install stow`'
	exit 2
fi

stow -R -v ${stows[@]}
