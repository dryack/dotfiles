# Navigation

alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# cmd shortcuts

alias cls=clear
alias 2wait-wtf='/usr/bin/ssh -l w80 -R 23053:localhost:23053 wait-wtf.com'
alias findf="find . -type f -iname "
alias findd="find . -type d -iname "
alias psg="ps aux | grep "
if [[ "$OSTYPE" =~ ^linux ]]; then
    alias psk="ps auxf | less"
    alias sudo='sudo ' # allow aliases to be sudoed
fi
alias vi='vim -O'
alias ls='ls -G'
alias ll='ls -la'
#alias ssh='TERM=xterm ssh -l dryack'
if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias ssh='prep.sh'
    alias afk="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"
    alias flushdns="dnscacheutil -flushcache && killall -HUP mDNSResponder"
else
    alias ssh='TERM=xterm ssh -A'
fi

