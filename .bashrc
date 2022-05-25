# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return 0
# Autostart
~/source/cblocks

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
#PS1='\[\033]0;\u:${NEW_PWD}\007\]\n\[\033[0;1;97;44m\] \u \[\033[0;34;104m\]\[\033[0;1;97;104m\] \e[38;2;255;0;0m\h \[\033[0;94;107m\]\[\033[0;90;1;107m\] ${NEW_PWD} \[\033[0;97;49m\]\[\033[1;38;5;74m\]\033[0m'
