# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function ouch {
  echo "Fail @ [${BASH_SOURCE}:${1} ${2}]"
}

PS1='% '

platform=$(uname)

export PATH=$PATH:~/tools/jdk1.8.0_66/bin:~/tools/apache-maven-3.3.9/bin
export GDK_SCALE=1 # Used by Firefox to launch in HiDPI mode

if [[ "$platform" == 'Darwin' ]]; then
  alias ls='gls --color=auto --group-directories-first -ah' # use coreutils from GNU (available thru Homebrew)
elif [[ "$platform" == 'Linux' ]]; then
  alias ls='ls --color=auto --group-directories-first -ah'
else
  ouch $LINENO "Unknown platform: $platform"
fi

alias ll='ls -l'
alias l1='ls -1'
