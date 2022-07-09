if whence lsd > /dev/null; then
    # disable the oh-my-zsh alias override	
    export DISABLE_LS_COLORS=true

    alias ls=lsd
fi
