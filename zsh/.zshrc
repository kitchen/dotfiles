source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

eval "$(direnv hook zsh)"

for zshrc in ~/.config/zsh/*.zsh; do
	source $zshrc
done

export PATH=$PATH:$HOME/bin

alias pohara='mosh -p 60000:60250 pohara'
alias e=emacsclient

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
