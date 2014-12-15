# Environment

export EDITOR="vim"
export VISUAL="$EDITOR"
export LANG="en_US.UTF-8"
export LC_CALL="en_US.UTF-8"
export TERM=xterm-256-color


if [[ "$OSTYPE" =~ ^linux ]]; then
    PS1HOST="$(hostname)"
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    RVMPROMPT="$(~/.rvm/bin/rvm-prompt)"
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    export HOMEBREW_GITHUB_API_TOKEN=5797cdf376cf9417b080465fd707950ca06177d1
    export PIP_REQUIRE_VIRTUALENV=true
    export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
fi
