#!/usr/bin/env bash
# TOOD: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color;mkdir -p .bash.d"
rsync -vuz ~/.bashrc dryack@${TARGET}:~/
rsync -vurz ~/.bash.d dryack@${TARGET}:~/
/usr/bin/ssh -A ${TARGET}
