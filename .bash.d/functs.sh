## ssh autocomplete
#alias composer="php /usr/local/bin/composer.phar"

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
#                cat ~/.ssh/config | \
#                        grep "^Host " | \
#                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
if [[ "$OSTYPE" =~ ^darwin ]]; then
    complete -F _complete_ssh_hosts ssh
    complete -F _complete_ssh_hosts scp
    complete -F _complete_ssh_hosts ping
fi
## /ssh autocomplete

test_term_colors()
{
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'
}

# Easy way to extract archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1;;
           *.tar.gz)    tar xvzf $1;;
           *.bz2)       bunzip2 $1 ;;
           *.rar)       unrar x $1 ;;
           *.gz)        gunzip $1  ;;
           *.tar)       tar xvf $1 ;;
           *.tbz2)      tar xvjf $1;;
           *.tgz)       tar xvzf $1;;
           *.zip)       unzip $1   ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1;;
           *) echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}


# https://brettterpstra.com/2018/05/07/shell-tricks-quick-start-scripts/
# Touch, make executable and start editing a new script
# $ newscript my_new_script.sh
# edit default shebangs within the function
# include additional skeleton files as [extension].txt
# in the $defaults_txt folder defined in config
newscript() {
	# Config
	# where your scripts are stored
	local scriptdir=~/scripts/
	# if no extension is provided, default to
	local default_ext=rb
	# optional, where skeleton scripts (e.g. rb.txt) are stored
	local defaults_txt=~/.newscript_defaults/
	# End config
	local filename="${scriptdir%/}/$1"

	if [[ $# == 0 ]]; then # no argument, display help and exit
		echo -e "newscript: touch, make executable and \
start editing a new script.\n\033[31;1mError:\033[37;1m Missing filename\033[0m\n\n\
Usage: mynewscript SCRIPT_NAME.ext\n"
		return 1
	fi
	# get the extension from the filename
	ext=${filename#*.}
	# if there's no extenstion, add default
	if [[ $ext == $filename ]]; then
		ext=$default_ext
		filename=$filename.$ext
	fi
	# if no script with this name already exists
	if [ ! -f $filename ]; then

		# create a file for the given extension with appropriate shebang
		case $ext in
			rb ) echo -e "#!/usr/bin/env ruby" >> $filename;;
			py ) echo -e "#!/usr/bin/env python" >> $filename;;
			pl ) echo -e "#!/usr/bin/env perl" >> $filename;;
			sh | bash ) echo -e "#!/bin/bash" >> $filename;;
			zsh | bash ) echo -e "#!/bin/zbash" >> $filename;;
			 * ) touch $filename;; # any other extension create blank file
		esac
		# if skeleton files directory and a txt for the given extension exist
		if [[ -d ${defaults_txt%/} && -f ${defaults_txt%/}/$ext.txt ]]; then
			# concatenate it to the file
			cat ${defaults_txt%/}/$ext.txt >> $filename
		fi
		# Add trailing newline to the new script
		echo -ne "\n" >> $filename
		# Make it executable
		chmod a+x "$filename"
		echo -e "\033[32;1m$filename\033[0m"
	else # Specified filename already exists
		echo -e "\033[31;1mFile exists: $filename\033[0m"
	fi
	# Edit the script
	$EDITOR "$filename"
}
