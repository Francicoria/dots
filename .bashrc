# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return 0
# Autostart
~/source/blocks1

# Aliases
alias ls='ls -lAh --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias sudo='doas'
alias nnn='nnn -C -H'
alias feh='nsxiv'
alias less='nvimpager'

alias xpbs-install='xbps-install'
alias xpbs-remove='xbps-remove'
alias xpbs-query='xbps-query'

# PS1
PS1='\w|\$ => '
