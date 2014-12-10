#!/usr/bin/env bash
# TOOD: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color"
cat ~/.bashrc | sed -e '/GIT_PS1/{N;N;N;d;}' | sed /2wait/d | sed -e '/syspip(){/{N;N;N;N;N;d;}' | sed /export/d | sed /2kad/d | gsed '/PS1/c\'PS1="\'\\\A (\$(hostname)) [\\\u] $ \'" | /usr/bin/ssh ${TARGET} "cat - > .bashrc"
/usr/bin/ssh -A ${TARGET}
