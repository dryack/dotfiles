PS1='\A \w/ ($(~/.rvm/bin/rvm-prompt)) \$ '
PATH=/Users/daveryack/.rvm/bin:/usr/local/opt/ruby193/bin:/usr/local/lib/python2.7/site-packages:$PATH # Add RVM to PATH for scripting
alias vi='vim -O'
alias ls='ls -G'
alias cls=clear
alias ssh2admin='TERM=xterm ssh -l dryack admin-1.prod.urbanairship.com'
alias ll='ls -la'
alias ssh='TERM=xterm ssh -l dryack'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd......='cd ../../../../..'
alias ssh='prep.sh'
alias 2kad='/usr/bin/ssh -l dryack -R 23053:localhost:23053 boyd.blegh.net'
alias 2wait-wtf='/usr/bin/ssh -l w80 -R 23053:localhost:23053 wait-wtf.com'
export HOMEBREW_GITHUB_API_TOKEN=5797cdf376cf9417b080465fd707950ca06177d1
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
alias irssi='TERM=screen-256color irssi'
syspip(){
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
mac2unix() { 
  sed 's/\r/\n/gi' 
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
