# prompt definitions

if [[ "$OSTYPE" =~ ^darwin ]]; then
    source $BASHD/completions/git-prompt.sh
    PS1='|\A| '$PS_Red'($(~/.rvm/bin/rvm-prompt))'$PS_NC'\n \w/'$PS_Cyan'$(__git_ps1 " (%s)")'$PS_NC' \$ '
else
    PS1='|\A| '$PS_Red'($PS1HOST)'$PS_NC' '$PS_Cyan'[\u]'$PS_NC' $ '
fi