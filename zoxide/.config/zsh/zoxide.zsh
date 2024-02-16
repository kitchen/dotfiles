# I copied this from the oh-my-zsh plugin because I want to add --cmd to the init command

if (( $+commands[zoxide] )); then
  eval "$(zoxide init --cmd cd zsh)"
else
  echo '[oh-my-zsh] zoxide not found, please install it from https://github.com/ajeetdsouza/zoxide'
fi
