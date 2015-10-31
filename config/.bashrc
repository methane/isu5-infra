#!/bin/bash
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH
export PATH=/home/isucon/.local/ruby/bin:$PATH
export PATH=/home/isucon/.local/node/bin:$PATH
export PATH=/home/isucon/.local/python3/bin:$PATH
export PATH=/home/isucon/.local/perl/bin:$PATH
export PATH=/home/isucon/.local/php/bin:$PATH
export PATH=/home/isucon/.local/php/sbin:$PATH
export PATH=/home/isucon/.local/go/bin:$PATH
export GOROOT=/home/isucon/.local/go
export GOPATH=/home/isucon/webapp/golang
export PATH=$GOPATH/bin:$PATH
export PATH=/home/isucon/.local/scala/bin:$PATH

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s autocd
shopt -s globstar
set completion-ignore-case on

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=1000000

# some more ls aliases
alias ls='ls -G --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -GF --color=auto'

export EDITOR=vim


# vim: set ts=4 sw=0 sts=0 expandtab :
