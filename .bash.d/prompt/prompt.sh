# prompt definitions

if [[ "$OSTYPE" =~ ^darwin ]]; then
    source $BASHD/completions/git-prompt.sh
    PS1='\n|\A| '$PS_Red'($(~/.rvm/bin/rvm-prompt))'$PS_NC' '$PS_Cyan'$(__git_ps1 " (%s)")'$PS_NC'\n\w/ \$ '
else
    PS1='\n|\A| '$PS_Red'($(hostname))'$PS_NC' '$PS_Cyan'[\u]'$PS_NC' \w/ \$ '
fi
