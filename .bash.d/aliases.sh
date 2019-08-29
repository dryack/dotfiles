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
alias check_json='python -m json.tool'

# cmd shortcuts

alias cls=clear


alias findf="find . -type f -iname "
alias findd="find . -type d -iname "
alias psg="ps aux | grep -i "
if [[ "$OSTYPE" =~ ^linux ]]; then
    alias youtubea='youtube-dl --extract-audio --audio-format mp3 '
    alias tailf='tail -F --retry '
    alias psk="ps auxf | less"
    alias sudo='sudo ' # allow aliases to be sudoed
    alias diskreport='omreport storage pdisk controller=0'
    alias ls='ls --color=auto -F'
    alias ll='ls -lah'
    #if [[ "$HOSTNAME" == s0001 ]]; then
    #    alias clusto="/mnt/services/clusto/bin/clusto"
    #fi
fi
alias vi='vim -O'

# ls junk
#export LS_OPTIONS='--color=auto'
#alias ls='ls -G $LS_OPTIONS'
#alias ll='ls -la $LS_OPTIONS'

#alias ssh='TERM=xterm ssh -l dryack'
if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias ssh='prep.sh'
    alias fixkh='~/fixkh.sh' # automatically delete old entries from known_hosts
    alias afk="open /System/Library/CoreServices/ScreenSaverEngine.app"
    alias ls='ls -G'
    alias ll='ls -la'
    alias flushdns="dnscacheutil -flushcache && killall -HUP mDNSResponder"#
    # rt.rb stuff
    alias rt='rt -t ~'
    alias rtc='rt --list tasks.check_mk'
else
    alias ssh='TERM=xterm ssh -A'
fi
alias grep='grep --color=auto'
