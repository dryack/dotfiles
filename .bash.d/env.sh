# Environment

export EDITOR="vim"
export VISUAL="$EDITOR"
export LANG="en_US.UTF-8"
export LC_CALL="en_US.UTF-8"
export TERM=xterm-256color
export PROMPT_COMMAND='history -a'
export GPG_TTY=$(tty)
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

if [[ "$OSTYPE" =~ ^linux ]]; then
    export EXA_COLORS="da=36"
    export PS1HOST='$(hostname)'
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    eval $(ssh-agent)
    # golang
    export PATH="$PATH:$HOME/go/bin"
    # candidate for blkbx
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    # candidate for blkbx
    export HOMEBREW_GITHUB_API_TOKEN=79a4a291d02bbd6fbe417d6dc28a677b44484f94
    #export PIP_REQUIRE_VIRTUALENV=true
    export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
    # for servo especially
    # candidate for blkbx
    export PIP_INDEX_URL=https://packages.prod.urbanairship.com/pulp/python/web/pip/simple/
    # candidate for blkbx
    export PIP_TRUSTED_HOST=packages.prod.urbanairship.com
    ####
    export CPPFLAGS="-I/usr/local/opt/qt5/include"
    export LDFLAGS="-L/usr/local/opt/qt5/lib"
fi
