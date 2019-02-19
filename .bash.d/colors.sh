############
## Colors ##
############

## Prompt Colors

# Normal
PS_Black='\e[0;30m'        # Black
PS_Red='\e[0;31m'          # Red
PS_Green='\e[0;32m'        # Green
PS_Yellow='\e[0;33m'       # Yellow
PS_Blue='\e[0;34m'         # Blue
PS_Purple='\e[0;35m'       # Purple
PS_Cyan='\e[0;36m'         # Cyan
PS_White='\e[0;37m'        # White
PS_Grey='\e[0;90m'         # Grey
# Bold
PS_BBlack='\e[1;30m'       # Black
PS_BRed='\e[1;31m'         # Red
PS_BGreen='\e[1;32m'       # Green
PS_BYellow='\e[1;33m'      # Yellow
PS_BBlue='\e[1;34m'        # Blue
PS_BPurple='\e[1;35m'      # Purple
PS_BCyan='\e[1;36m'        # Cyan
PS_BWhite='\e[1;37m'       # White
# Background
PS_On_Black='\e[40m'       # Black
PS_On_Red='\e[41m'         # Red
PS_On_Green='\e[42m'       # Green
PS_On_Yellow='\e[43m'      # Yellow
PS_On_Blue='\e[44m'        # Blue
PS_On_Purple='\e[45m'      # Purple
PS_On_Cyan='\e[46m'        # Cyan
PS_On_White='\e[47m'       # White
# Reset
PS_NC="\e[m"               # None

if [[ "$OSTYPE" =~ ^linux ]]; then
    LS_COLORS="di=1"
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    LSCOLORS="gefxcxdxbxegedabagacad"
    export LSCOLORS
fi
