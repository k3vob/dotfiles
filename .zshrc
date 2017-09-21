export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

# background_jobs - Indicator for background jobs.
# battery - Current battery status.
# context - Your username and host, conditionalized based on $USER and SSH status.
# dir - Your current working directory.
# dir_writable - Displays a lock icon, if you do not have write permissions on the current folder.
# disk_usage - Disk usage of your current partition.
# history - The command number for the current line.
# host - Your current host name
# ip - Shows the current IP address.
# vpn - Shows the current VPN IP address.
# public_ip - Shows your public IP address.
# load - Your machine's load averages.
# os_icon - Display a nice little icon, depending on your operating system.
# ram - Show free RAM.
# root_indicator - An indicator if the user has superuser status.
# status - The return code of the previous command.
# swap - Prints the current swap size.
# time - System time.
# user - Your current username
# vi_mode- Your prompt's Vi editing mode (NORMAL|INSERT).
# ssh - Indicates whether or not you are in an SSH session.

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_username newline dir dir_writable vcs) #custom_prompt)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uf101'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""

POWERLEVEL9K_SHORTEN_DIR_LENGTH=6
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# 0 = yellow
# 1 = red
# 2 = green
# 3 = orange
# 4 = blue
# 5 = pink
# 6 = maia
# 7 = white
# 8 = dark blue (too dark)
# 9 = dark orange
#10 = grey
#11 = aqua
#12 = cream
#13 = purple
#14 = black


POWERLEVEL9K_CUSTOM_USERNAME_BACKGROUND='clear'
POWERLEVEL9K_CUSTOM_USERNAME_FOREGROUND='5'

POWERLEVEL9K_DIR_HOME_BACKGROUND='clear'
POWERLEVEL9K_DIR_HOME_FOREGROUND='4'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='clear'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='4'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='clear'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='4'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='11'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
RLEVEL9K_VCS_UNTRACKED_FOREGROUND='10'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='0'

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='clear'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='1'

POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
POWERLEVEL9K_STATUS_OK_FOREGROUND='2'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='1'

POWERLEVEL9K_TIME_FOREGROUND='12'
POWERLEVEL9K_TIME_BACKGROUND='clear'

# https://github.com/ryanoasis/nerd-fonts
# https://nerdfonts.com/#cheat-sheet
POWERLEVEL9K_HOME_ICON='\uf015 '
POWERLEVEL9K_HOME_SUB_ICON='\uf015 \uf07c '
POWERLEVEL9K_FOLDER_ICON='\uf07b '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uf113 '

POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S} \uf017'

POWERLEVEL9K_CUSTOM_USERNAME="user"
POWERLEVEL9K_CUSTOM_PROMPT="prompt"

user(){
    echo -e '\uf2be Kev \uf1fa  \uf109 XPS-Manjaro'
}

prompt(){
    echo -e '\uf105\uf105\uf105'
}

eval `dircolors /home/kev/.dircolors`

source $ZSH/oh-my-zsh.sh
