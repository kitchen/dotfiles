source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle unixorn/rvm-plugin
antigen bundle fzf
antigen bundle mercurial
antigen bundle github
antigen bundle thefuck
antigen bundle gcloud
antigen bundle gradle

eval "$(direnv hook zsh)"
antigen bundle tmuxinator

antigen theme denysdovhan/spaceship-prompt

if [[ $TERM_PROGRAM == 'iTerm.app' ]]; then
	antigen bundle osx
	. ~/.config/zsh/osx.rc
fi

if [[ -d $HOME/squarespace ]]; then
	. ~/.config/squarespace/squarespace-antigen.zshrc
fi

antigen apply

# silversearcher and fzf stuff
alias ag='ag --hidden'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export PATH=$PATH:$HOME/go/bin:$HOME/bin

export EDITOR=vim


export SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
	green 'minikube'
)
if [[ -d $HOME/squarespace ]]; then
	. ~/.config/squarespace/squarespace.zshrc
fi

alias pohara='mosh -p 60000:60250 pohara'

# virtualenvwrapper
if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
	export WORKON_HOME=~/python/
	source /usr/local/bin/virtualenvwrapper_lazy.sh
fi

# spaceship prompt settings
#export SPACESHIP_PROMPT_SEPARATE_LINE=false
export SPACESHIP_PROMPT_ORDER=(time user host dir git ruby aws venv kubecontext terraform exec_time exit_code line_sep battery vi_mode jobs char)
export SPACESHIP_DIR_PREFIX=":: "
export SPACESHIP_DIR_COLOR=yellow
export SPACESHIP_GIT_PREFIX="‹"
export SPACESHIP_GIT_SUFFIX="› "
export SPACESHIP_GIT_BRANCH_PREFIX=""
export SPACESHIP_GIT_BRANCH_SUFFIX=""
export SPACESHIP_GIT_BRANCH_COLOR=blue
export SPACESHIP_GIT_STATUS_PREFIX=""
export SPACESHIP_GIT_STATUS_SUFFIX=""
export SPACESHIP_KUBECONTEXT_PREFIX=" :: "
export SPACESHIP_KUBECONTEXT_SYMBOL=""
export SPACESHIP_KUBECONTEXT_PREFIX="kube: "
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_EXIT_CODE_SHOW=true
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_TIME_COLOR=red
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_VENV_PREFIX="venv: "
export SPACESHIP_HOST_PREFIX="@"
export SPACESHIP_HOST_COLOR_SSH=yellow
export SPACESHIP_USER_SUFFIX=""
export SPACESHIP_USER_PREFIX=""

source ~/.config/zsh/ssh-ca.rc
