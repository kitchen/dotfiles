# on ubuntu this is "fdfind", from homebrew and in my brain it's just "fd"
if (( $+commands[fdfind] )); then
  alias fd=fdfind
fi

