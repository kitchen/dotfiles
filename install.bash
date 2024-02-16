stows=(
	aws
	bash
	fdfind
	fzf
	gcloud
	git
	golang
	gpg
	hg
	kubernetes
	lsd
	nvim
	osx
	rg
	ruby
	rust
	ssh
	terraform
	thefuck
	tmux
	zoxide
	zsh
)

stows_to_delete=(
)

export PATH=$PATH:/opt/homebrew/bin

if ! which stow >/dev/null; then
	echo "stow required, please install"
	echo '`brew install stow` or `sudo apt install stow`'
	exit 2
fi

git submodule init && git submodule update

echo installing stows
stow -R ${stows[@]}

for stow in stows; do
	if [[ -f "${stow}/post-install-hook" ]]; then
		echo "found post-install-hook for ${stow}, running"
		(
			cd "${stow}"
			. post-install-hook
		)
	fi
done
