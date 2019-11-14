
dirs = .ssh .config
symlinks = .antigen .bash_aliases .bash_profile .bashrc .gitconfig .hgrc .tmux.conf .vimrc .zshrc .vim .ssh/authorized_keys .ssh/config.d/ .ssh/is-osx .config/zsh .config/git .config/tmuxinator .ssh/config

homed_dirs = $(addprefix ${HOME}/,$(dirs))
homed_symlinks = $(addprefix ${HOME}/,$(symlinks))


$(homed_dirs):
	mkdir -p $@
	chmod 700 $@

$(homed_symlinks):
	ln -s $(subst ${HOME},${CURDIR},$@) $@

.DEFAULT_GOAL :=
all: $(homed_dirs) $(homed_symlinks)
