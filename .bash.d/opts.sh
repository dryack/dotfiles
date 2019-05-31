# Shell Options

shopt -s cdable_vars
shopt -s cdspell
shopt -s checkwinsize

if [[ "OSTYPE" =~ ^linux ]]; then
    shopt -s extglob
fi


# History

export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL="ignoreboth:erasedups"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:history:bg:fg"
shopt -s histappend
shopt -s histreedit
shopt -s cmdhist
