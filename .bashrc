# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first -ah'
alias ll='ls -l'
alias l1='ls -1'

PS1='% '

export PATH=$PATH:~/tools/jdk1.8.0_66/bin:~/tools/apache-maven-3.3.9/bin

# Used by Firefox to launch in HiDPI mode
export GDK_SCALE=2
