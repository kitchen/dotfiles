source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle unixorn/rvm-plugin
antigen bundle fzf
antigen bundle mercurial
antigen bundle github
antigen bundle thefuck

eval "$(direnv hook zsh)"
antigen bundle tmuxinator

antigen theme afowler

if [[ $TERM_PROGRAM == 'iTerm.app' ]]; then
	antigen bundle osx
	. ~/.zshrc.osx
fi

antigen apply

# silversearcher and fzf stuff
alias ag='ag --hidden'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export PATH=$PATH:$HOME/go/bin:$HOME/bin

export EDITOR=vim

alias pohara='mosh -p 60000:60250 pohara'
