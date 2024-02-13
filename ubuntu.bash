# this is a script to run to install dependencies on ubuntu for my dotfiles and such
#
# I hope to eventually roll this into the main install.sh script but for now having it be a separate thing is fine
#

# before we even get this cloned locally:
# sudo apt update && sudo apt install -y zsh git
# then once that's done we can clone:
# git clone git@github.com:kitchen/dotfiles.git ~/.dotfiles
#
# from there run this script

sudo apt update
sudo apt -y install apt-transport-https gnupg2 curl

sudo apt -y install \
	autojump \
	build-essential \
	clang \
	direnv \
	editorconfig \
	emacs \
	fd-find \
	fzf \
	lsd \
	ripgrep \
	shellcheck \
	software-properties-common \
	stow \
	tar \
	thefuck \
	tmux \
	tmuxinator \
	vim \
	zsh

# if the machine is a server, do this. I am unsure about desktops
# https://bugs.launchpad.net/ubuntu/+source/openssh/+bug/920749?comments=all
# sudo localectl set-locale en_US.utf8
# also on raspberry pi the default timezone is set to london
# sudo dpkg-reconfigure tzdata
