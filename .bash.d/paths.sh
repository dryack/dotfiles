# Paths

if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=$PATH:~/.rvm/bin:/usr/local/opt/ruby193/bin:/usr/local/lib/python2.7/site-packages:/usr/local/opt/qt5/bin:$PATH
fi

#if [[ "$OSTYPE" =~ ^linux ]]; then
#fi

# pick up clusto where applicable
if [[ `hostname` =~ s0001 ]]; then
    PATH=$PATH:/mnt/services/clusto/bin
fi

PATH=$PATH:$HOME:$HOME/bin

export PATH
export CDPATH
