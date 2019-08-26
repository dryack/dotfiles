# Environment

export EDITOR="vim"
export VISUAL="$EDITOR"
export LANG="en_US.UTF-8"
export LC_CALL="en_US.UTF-8"
export TERM=xterm-256color
export PROMPT_COMMAND='history -a'

if [[ "$OSTYPE" =~ ^linux ]]; then
    PS1HOST='$(hostname)'
    if [[ `hostname -A` =~ \.blurb\. ]]; then
        # Set up git if not already done
        gitconfig=`git config --global -l`
        if [[ $? != 0 ]]; then
            echo
            echo Setting git defaults...
            git config --global user.name "$(getent passwd $USER | cut -d ':' -f 5)"
            git config --global user.email ${USER}@blurb.com
            git config --global core.filemode true
        fi
        if [[ ! -e ${HOME}/.rvm/rubies/ruby-2.1.4/ ]]; then
            echo
            echo "Doing initial set up of ruby-2.1.4 (for api-test)..."
            rvm install ruby-2.1.4
            rvm default 2.1.4
            gem install bundler
        fi

        if [[ ! -e ${HOME}/.virtualenvs ]]; then
            echo "Doing initial set up of python virtualenvwrapper"
        fi
        source /usr/bin/virtualenvwrapper.sh
        export PATH="${PATH}:/usr/pgsql-9.2/bin:/opt/vault/bin"
    fi
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    eval $(ssh-agent)
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
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
    GPG_TTY=$(tty)
    export GPG_TTY
fi
