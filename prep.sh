#!/usr/bin/env bash
# TODO: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color;mkdir -p .bash.d"
rsync -vuzq -e ssh ~/.vimrc dryack@${TARGET}:~/
rsync -vuzq -e ssh ~/.bashrc dryack@${TARGET}:~/
rsync -vurzq -e ssh ~/.bash.d dryack@${TARGET}:~/
rsync -vurzq -e ssh ~/.bash_profile dryack@${TARGET}:~/
rsync -vurzq -e ssh 
#/usr/bin/ssh ${TARGET} "source .bash_profile"
/usr/bin/ssh -A ${TARGET}
