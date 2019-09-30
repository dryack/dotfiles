#!/usr/bin/env bash
# TODO: Add target to .ssh/config
TARGET=$1
# enter pwd 1x even during first login
cat ~/.ssh/authorized_keys | /usr/bin/ssh -i ${HOME}/.ssh/id_ecdsa ${TARGET} "[[ ! -d ~/.ssh ]] && mkdir ~/.ssh;cat - > ~/.ssh/authorized_keys"
# i no longer remember why this is here - but i *do* remember agonizing over
# the problem it solves
infocmp screen-256color | /usr/bin/ssh -i ${HOME}/.ssh/id_ecdsa ${TARGET} "cat - > screen-256color && tic screen-256color && rm screen-256color;mkdir -p .bash.d"
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.ssh/blurb_git dryack@${TARGET}:~/.ssh
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.ssh/git_dryack dryack@${TARGET}:~/.ssh
rsync -vuzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.vimrc dryack@${TARGET}:~/
rsync -vuzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bashrc dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bash.d dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.bash_profile dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.tmux.conf dryack@${TARGET}:~/
rsync -vurzq -e "ssh -i \"$HOME/.ssh/id_ecdsa\"" ~/.vim dryack@${TARGET}:~/

#/usr/bin/ssh ${TARGET} "source .bash_profile"
/usr/bin/ssh -A ${TARGET}
