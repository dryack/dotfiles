#!/usr/bin/env bash
# TOOD: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color;mkdir -p .bash.d"
rsync -vuzq ~/.bashrc dryack@${TARGET}:~/
rsync -vurzq ~/.bash.d dryack@${TARGET}:~/
/usr/bin/ssh -A ${TARGET}
