dirs=(
	~/.config
	~/.ssh
)

stows=(
	bash
	git
	hg
	squarespace
	ssh
	tmux
	vim
	zsh
)

trap "exit" INT

if ! which stow > /dev/null; then
	echo "stow required, please install"
	echo "`brew install stow` or `sudo apt install stow`"
	exit 2
fi

for dir in ${dirs[@]}; do
	echo "checking on $dir"
	if [[ ! -d $dir ]]; then
		if [[ -e $dir ]]; then
			echo "$dir exists and is not a directory! eek!"
			exit 2
		fi

		echo "creating $dir"
		mkdir $dir
	fi
done

for stow in ${stows[@]}; do
	echo "stowing $stow"
	stow $stow
	if [[ $? -ne 0 ]]; then
		echo "stow ${stow} exited non-zero, bailing"
		exit 2
	fi
done
