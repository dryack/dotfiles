
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/bin:$PATH
test -f ~/.bashrc && source ~/.bashrc
# Predictable SSH authentication socket location.
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
     ln -sf $SSH_AUTH_SOCK $SOCK
     export SSH_AUTH_SOCK=$SOCK
fi
