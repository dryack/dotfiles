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
alias vi='vim -O'
alias grep='grep --color=auto'
alias findf="find . -type f -iname "
alias findd="find . -type d -iname "
alias psg="ps aux | grep -i "
alias 2dryack="prep.sh slc-master-dryack01"



if [[ "$OSTYPE" =~ ^linux ]]; then
    alias youtubea='youtube-dl --no-playlist --extract-audio --audio-format mp3 '
    alias tailf='tail -F --retry '
    alias psk="ps auxf | less"
    alias sudo='sudo ' # allow aliases to be sudoed
    alias diskreport='omreport storage pdisk controller=0'
    alias ls='exa -a '
    alias ll='exa -lah '
    alias cat='bat --style header '
    alias dux='du -x --max-depth=1'
    #if [[ "$HOSTNAME" == s0001 ]]; then
    #    alias clusto="/mnt/services/clusto/bin/clusto"
    #fi
    if [[ `hostname` == slc-test-centos8-dryack.test.blurb.com ]]; then
        alias kubectl='microk8s.kubectl'
    fi
fi

# ls junk
#export LS_OPTIONS='--color=auto'
#alias ls='ls -G $LS_OPTIONS'
#alias ll='ls -la $LS_OPTIONS'

#alias ssh='TERM=xterm ssh -l dryack'
if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias sshp='prep.sh'
    alias fixkh='~/fixkh.sh' # automatically delete old entries from known_hosts
    alias afk="open /System/Library/CoreServices/ScreenSaverEngine.app"
    alias ls='ls -G'
    alias ll='ls -la'
    alias flushdn="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
    #alias flushdns="dnscacheutil -flushcache && killall -HUP mDNSResponder"#
    # rt.rb stuff
    alias rt='rt -t ~'
    alias rtc='rt --list tasks.check_mk'
    alias rtl='rt --list tasks.longterm'
else
    alias ssh='TERM=xterm ssh -A'
fi
