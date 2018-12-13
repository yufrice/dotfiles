# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# auto complate
autoload -U compinit && compinit

# vi like
bindkey -e

for f (${ZDOTDIR}/profile/*) source $f
