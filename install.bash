stows=(
	autojump
	aws
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
	python
	rg
	ruby
	rust
	squarespace
	ssh
	terraform
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
