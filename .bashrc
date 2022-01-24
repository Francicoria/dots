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
alias scrot="scrot -F ~/Pictures/'%d-%m-%Y_%H:%M.png'"
alias vscode='code-oss'
#PS1
PS1='\e[4;35m\w\e[0m|\e[0;35m\$\e[0m ↪ '
