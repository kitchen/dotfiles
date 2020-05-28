antigen bundle rust

SPACESHIP_PROMPT_KITCHEN_MODULES+=rust

export SPACESHIP_RUST_PREFIX=""

if [[ -f ~/.cargo/env ]]; then
   source ~/.cargo/env
fi

export PATH=$PATH:$HOME/.cargo/bin
