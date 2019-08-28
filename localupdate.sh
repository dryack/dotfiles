#!/bin/bash
cd ~/projects/dryack/dotfiles
blackbox_edit_start .bash.d/secrets-env.sh
blackbox_edit_start .bash.d/secrets-aliases.sh
blackbox_edit_start AIRSHIP.html
blackbox_edit_start tipsfile.txt
cp -R ~/projects/dryack/dotfiles/.bash.d/ ~/.bash.d
cp ~/projects/dryack/dotfiles/fixkh.sh ~/scripts
cp ~/projects/dryack/dotfiles/AIRSHIP.html ~
cp ~/projects/dryack/dotfiles/.bashrc ~
cp ~/projects/dryack/dotfiles/.bash_profile ~
cp ~/projects/dryack/dotfiles/prep.sh ~/scripts
cp ~/projects/dryack/dotfiles/prep.sh ~/bin
cp ~/projects/dryack/dotfiles/tipsfile.txt ~
blackbox_edit_end .bash.d/secrets-env.sh
blackbox_edit_end .bash.d/secrets-aliases.sh
blackbox_edit_end AIRSHIP.html
blackbox_edit_end tipsfile.txt
cd -
echo "Remember to copy ~/scripts/* to ~/bin/"
