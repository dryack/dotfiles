#!/bin/bash
cd ~/projects/dryack/dotfiles
#blackbox_cat .bash.d/secrets-env.sh > ~/.bash.d/secrets-env.sh
#blackbox_cat .bash.d/secrets-aliases.sh > ~/.bash.d/secrets-aliases.sh
#blackbox_cat AIRSHIP.html > ~/AIRSHIP.html
#blackbox_cat tipsfile.txt.gpg > ~/projects/dryack/dotfiles/tipsfile.txt
cp -R ~/projects/dryack/dotfiles/.bash.d/ ~/.bash.d
cp ~/projects/dryack/dotfiles/fixkh.sh ~/scripts
cp ~/projects/dryack/dotfiles/.bashrc ~
cp ~/projects/dryack/dotfiles/.vimrc ~
cp ~/projects/dryack/dotfiles/.bash_profile ~
cp ~/projects/dryack/dotfiles/prep.sh ~/scripts
cp ~/projects/dryack/dotfiles/prep.sh ~/bin
cp ~/projects/dryack/dotfiles/localupdate.sh ~/scripts
cd -
echo "Remember to copy ~/scripts/* to ~/bin/"
