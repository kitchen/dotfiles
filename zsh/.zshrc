source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme denysdovhan/spaceship-prompt
antigen bundle zsh-users/zsh-syntax-highlighting

eval "$(direnv hook zsh)"

for zshrc in ~/.config/zsh/*.zshrc; do
	source $zshrc
done

export PATH=$PATH:$HOME/bin

alias pohara='mosh -p 60000:60250 pohara'
alias e=emacsclient

# spaceship prompt settings
#export SPACESHIP_PROMPT_SEPARATE_LINE=false
# TODO make this "modular".
# idea being: make an associative arary, module -> priority, sort the modules by priority and build this list
export SPACESHIP_PROMPT_ORDER=(time user host dir git ruby aws venv kubectl_context terraform rust exec_time exit_code line_sep battery vi_mode jobs char)
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
