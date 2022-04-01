export BASH_SILENCE_DEPRECATION_WARNING=1

alias ls='ls --color'
alias ls='ls -G'

PS1='\u@\h: \W:\$'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export LSCOLORS=cxgxfxexbxegedabagacad
export EDITOR='vim'

PROMPT_DIRTRIM=2
