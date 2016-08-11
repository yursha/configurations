# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

### ENVIRONMENT VARIABLES ###

# Primary prompt
PS1='% '

# Secondary prompt
PS2='> '

LC_ALL=en_US.UTF-8

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export JAVA7_HOME=~/tools/jdk1.7.0_79
JAVA7_BIN=$JAVA7_HOME/bin

export JAVA8_HOME=~/tools/jdk1.8.0_92
JAVA8_BIN=$JAVA8_HOME/bin

export JAVA_HOME=$JAVA8_HOME
JAVA_BIN=$JAVA_HOME/bin

export MAVEN_HOME=~/tools/apache-maven-3.3.9
MAVEN_BIN=$MAVEN_HOME/bin

export HADOOP_PREFIX=~/tools/hadoop-2.6.0
HADOOP_BIN=$HADOOP_PREFIX/bin

export SCALA_HOME=~/tools/scala-2.11.8
SCALA_BIN=$SCALA_HOME/bin

export SBT_HOME=~/tools/sbt
SBT_BIN=$SBT_HOME/bin

export PATH=.:$JAVA_BIN:$MAVEN_BIN:$HADOOP_BIN:$SCALA_BIN:$SBT_BIN:$GO_BIN:$PATH

# export GDK_SCALE=1 # Used by Firefox to launch in HiDPI mode

# Export python startup script. Currently its used to enable python REPL autocomple feature.
export PYTHONSTARTUP=~/.pythonrc

export NVM_DIR="/home/ayursha/.nvm"

# Remove noise from possible overrides of default SSH password promting
unset SSH_ASKPASS

# systemctl pager:
# export SYSTEMD_PAGER=


### ALIASES ###

alias ls='ls --color=auto --group-directories-first -ah'

alias ll='ls -l'
alias l1='ls -1'

### FUNCTIONS ###

function show () { echo -n "-> "; for a in "$@"; do echo -n "\"$a\" "; done; echo; }

function ouch {
    echo "Fail @ [${BASH_SOURCE}:${1} ${2}]"
}

### INITIALIZATION ###

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


### Settings dependent of whether we are in an X session or in Linux VT ###
if [[ -n $DISPLAY ]]; then

    # Disable CAPS_LOCK key
    xmodmap -e 'remove Lock = Caps_Lock'
else

    # The only Linux VT raster font which which has big enough variant for HiDPI displays
    # on Fedora 23+ use `sudo dnf install terminus-fonts-console`
    # we only need it on HiDPI displays
    # setfont ter-v32n
    :
fi


### POST SCRIPTS ###

# Workspace specific shell settings
if [ -f ~/.workrc ]; then
    . .workrc
fi
