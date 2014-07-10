
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/bin:$PATH
test -f ~/.bashrc && source ~/.bashrc
