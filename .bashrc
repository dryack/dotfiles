BASHD="$HOME/.bash.d"
[[ -d "$BASHD" ]] || return 1

# Source core files in .bash.d/ in specific order
for file in $BASHD/{functs,opts,env,colors,paths,aliases,cmds}; do
    [ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh"
done

# Source core dirs in .bash.d/ in a specific order
for file in $BASHD/{completions,prompt}/*.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

#Source the host/ dir last
#    if [[ -d "$BASHD/host" ]]; then
#        for file in $BASHD/host/*; do
#            [ -r "$file" ] && [ -f "$file" ] && source "$file"
#        done
#    fi

unset file
