source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-syntax-highlighting

eval "$(direnv hook zsh)"

for zshrc in ~/.config/zsh/*.zsh; do
	source $zshrc
done

antigen apply

export PATH=$PATH:$HOME/bin

alias e=emacsclient

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
