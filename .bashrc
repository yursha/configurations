[[ $- != *i* ]] && return

### ENVIRONMENT VARIABLES ###

LC_ALL=en_US.UTF-8

# export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
# export GDK_SCALE=1 # Used by Firefox to launch in HiDPI mode

# Remove noise from possible overrides of default SSH password promting
unset SSH_ASKPASS

# systemctl pager:
# export SYSTEMD_PAGER=

### ALIASES ###

alias ls='ls --color=auto --group-directories-first -a'

alias ll='ls -lh'

alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E --color=never "state|to\ full|to\ empty|percentage"'

### INITIALIZATION ###

# Disable turning on/off output with ctrl-s / ctrl-q commands
stty -ixon

# Settings dependent of whether we are in an X session or in Linux VT
if [[ -n $DISPLAY ]]; then

    # Disable CAPS_LOCK key
    # Sometimes `xmodmap` command works, but sometimes `setxkbmap` command works.
    # I don't know why.

    # xmodmap -e 'remove Lock = Caps_Lock'
    setxkbmap -option ctrl:nocaps
else

    # The only Linux VT raster font which which has big enough variant for HiDPI displays
    # on Fedora 23+ use `sudo dnf install terminus-fonts-console`
    # we only need it on HiDPI displays
    # setfont ter-v32n
    :
fi

# add keys to ssh-agent if they has not yet been added.
if [[ $(ssh-add -l) = "The agent has no identities." ]]; then
    echo "Adding private keys to the ssh-agent..."
    ssh-add /home/ayursha/.ssh/*rsa
fi


### POST SCRIPTS ###

# Workspace specific shell settings
if [ -f ~/.workrc ]; then
    . ~/.workrc
fi
