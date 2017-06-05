# Environment

export EDITOR="vim"
export VISUAL="$EDITOR"
export LANG="en_US.UTF-8"
export LC_CALL="en_US.UTF-8"
export TERM=xterm-256color


if [[ "$OSTYPE" =~ ^linux ]]; then
    PS1HOST='$(hostname)'
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    eval $(ssh-agent)
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    export HOMEBREW_GITHUB_API_TOKEN=047629cc38c2a5b8441afae43d9617f895673153
    #export PIP_REQUIRE_VIRTUALENV=true
    export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
    # for servo especially
    export PIP_INDEX_URL=https://packages.prod.urbanairship.com/pulp/python/web/pip/simple/
    export PIP_TRUSTED_HOST=packages.prod.urbanairship.com
    ####
    export CPPFLAGS="-I/usr/local/opt/qt5/include"
    export LDFLAGS="-L/usr/local/opt/qt5/lib"
    GPG_TTY=$(tty)
    export GPG_TTY
fi
