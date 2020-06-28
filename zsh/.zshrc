source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
#antigen theme denysdovhan/spaceship-prompt
antigen bundle zsh-users/zsh-syntax-highlighting

eval "$(direnv hook zsh)"
export SPACESHIP_PROMPT_KITCHEN_MODULES=()

for zshrc in ~/.config/zsh/*.zsh; do
	source $zshrc
done

export PATH=$PATH:$HOME/bin

alias pohara='mosh -p 60000:60250 pohara'
alias e=emacsclient

# spaceship prompt settings
export SPACESHIP_PROMPT_ORDER=(time user host dir git ${SPACESHIP_PROMPT_KITCHEN_MODULES[@]} exec_time exit_code line_sep battery vi_mode jobs char)
export SPACESHIP_DIR_PREFIX=":: "
export SPACESHIP_DIR_COLOR=yellow
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_EXIT_CODE_SHOW=true
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_TIME_COLOR=red
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_HOST_PREFIX="@"
export SPACESHIP_HOST_COLOR_SSH=yellow
export SPACESHIP_USER_SUFFIX=""
export SPACESHIP_USER_PREFIX=""

antigen apply

eval "$(starship init zsh)"
