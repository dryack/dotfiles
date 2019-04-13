[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export ARCHFLAGS="-arch x86_64"
test -f ~/.bashrc && source ~/.bashrc
# Predictable SSH authentication socket location.
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
     ln -sf $SSH_AUTH_SOCK $SOCK
     export SSH_AUTH_SOCK=$SOCK
fi
