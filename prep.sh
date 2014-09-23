#!/usr/bin/env bash
# TOOD: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color"
cat ~/projects/dotfiles/.bashrc | sed s/ssh=\'prep.sh\'/ssh="'ssh -A'"/ | sed -e '/syspip(){/{N;N;d;}' | sed -e '/mac2unix()/{N;N;d;}' | sed /export/d | sed /2kad/d | /usr/bin/ssh ${TARGET} "cat - > .bashrc"
/usr/bin/ssh -A ${TARGET}
