# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#autostart
~/source/Color-Scripts/color-scripts/blocks1
#aliases
alias ls='ls -lAh --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias sudo='doas'
alias nnn='nnn -C -H'
alias scrot="scrot ~/Pictures/'%d-%m-%Y_%H:%M.png'"

#PS1
PS1='\w|\$ ↪ '
