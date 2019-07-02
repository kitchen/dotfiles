source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle unixorn/rvm-plugin
antigen bundle fzf
antigen bundle mercurial
antigen bundle github
antigen bundle thefuck
antigen bundle berkshelf/berkshelf-zsh-plugin

eval "$(direnv hook zsh)"

antigen theme afowler

if [[ $TERM_PROGRAM == 'iTerm.app' ]]; then
	antigen bundle osx
	. ~/.zshrc.osx
fi

antigen apply

export EDITOR=vim

# for now, until I figure out a better "local things" setup
if [[ -d ~/cozy ]]; then
	. ~/.zshrc.cozy
fi

# silversearcher and fzf stuff
alias ag='ag --hidden'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export PATH=$PATH:$HOME/go/bin

