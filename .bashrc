# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#autostart
coffetch
#aliases
alias ls='ls -lAh --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias sudo='doas'
alias nnn='nnn -C -H'

#PS1
PS1='\w|\$ ↪ '
