#!/usr/bin/env bash
# TODO: Add target to .ssh/config
TARGET=$1
infocmp screen-256color | /usr/bin/ssh -i ${HOME}/.ssh/id_ecdsa ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color;mkdir -p .bash.d"
rsync -vuzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.vimrc dryack@${TARGET}:~/
rsync -vuzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bashrc dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bash.d dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bash_profile dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.tmux.conf dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.vim dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.ssh/id_ecdsa dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.ssh/blurb_git dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.ssh/dryack_git dryack@${TARGET}:~/
#/usr/bin/ssh ${TARGET} "source .bash_profile"
/usr/bin/ssh -A ${TARGET}
