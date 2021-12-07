# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ufetch='/./home/franci/ufetch'
alias ls='ls -A --color=auto'
alias dmenu_run='dmenu_run -l 5 -p Search: -fn Monospace -nb black -sb grey -sf black'
PS1='\w|\$ -> '
