# Paths

if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=$PATH:~/.rvm/bin:/usr/local/opt/ruby193/bin:/usr/local/lib/python2.7/site-packages:/usr/local/opt/qt5/bin:/usr/local/opt/go/libexec/bin:~/.cargo/bin:/usr/local/go/bin:~/.rvm/gems/ruby-2.4.1/bin:$PATH:/Users/dave.ryack/Downloads/google-cloud-sdk/bin/
fi

if [[ "$OSTYPE" =~ ^linux ]]; then
    PATH=$PATH:$HOME/.rvm/bin:$HOME/.cargo/bin:$home/w80/.rvm/gems/ruby-2.4.1/bin:/usr/local/bin
fi

# pick up clusto where applicable
if [[ `hostname` =~ s0001 ]]; then
    PATH=$PATH:/mnt/services/clusto/bin
fi

PATH=$PATH:$HOME:$HOME/bin
GOPATH=$HOME/go
export GOPATH
export PATH
export CDPATH
