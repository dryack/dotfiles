# Paths

if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=$PATH:~/.rvm/bin:/usr/local/opt/ruby193/bin:/usr/local/lib/python2.7/site-packages:/usr/local/opt/qt5/bin:/usr/local/opt/go/libexec/bin:~/.cargo/bin:/usr/local/go/bin:~/.rvm/gems/ruby-2.4.1/bin:$PATH
    GOPATH=~/projects/go
fi

#if [[ "$OSTYPE" =~ ^linux ]]; then
#fi

# pick up clusto where applicable
if [[ `hostname` =~ s0001 ]]; then
    PATH=$PATH:/mnt/services/clusto/bin
fi

PATH=$PATH:$HOME:$HOME/bin
export GOPATH
export PATH
export CDPATH
