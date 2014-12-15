# Shell Options

shopt -s cdable_vars
shopt -s cdspell
shopt -s checkwinsize


# History

export HISTSIZE=20000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL="ignorespace:erasedups"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
shopt -s histappend
shopt -s histreedit
