source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle unixorn/rvm-plugin
antigen bundle fzf

antigen theme afowler

if [[ $CURRENT_OS == 'OS X' ]]; then
	antigen bundle osx
fi

antigen apply

# for now, until I figure out a better "local things" setup
if [[ -r ~/.zshrc.cozy ]]; then
	. ~/.zshrc.cozy
fi

# silversearcher and fzf stuff
alias ag='ag --hidden'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
