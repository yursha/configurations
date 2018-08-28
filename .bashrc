[[ $- != *i* ]] && return

LC_ALL=en_US.UTF-8

# Disable turning on/off output with ctrl-s / ctrl-q commands
stty -ixon

# Settings dependent of whether we are in an X session or in Linux VT
if [[ -n $DISPLAY ]]; then

    # Disable CAPS_LOCK key
    # Sometimes `xmodmap` command works, but sometimes `setxkbmap` command works.
    # I don't know why.
    # xmodmap -e 'remove Lock = Caps_Lock'
    setxkbmap -option ctrl:nocaps
fi

alias vi=vim
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E --color=never "state|to\ full|to\ empty|percentage"'
alias ls="ls --color=auto"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
