# Paths

if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=$PATH:~/.rvm/bin:/usr/local/opt/ruby193/bin:/usr/local/lib/python2.7/site-packages:/usr/local/opt/qt5/bin:$PATH
fi

#if [[ "$OSTYPE" =~ ^linux ]]; then
#fi


PATH=$PATH:$HOME:$HOME/bin

export PATH
export CDPATH
