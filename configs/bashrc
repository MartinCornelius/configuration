export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
export EDITOR='nvim'

# PS1='\w % '

brname () {
  a=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$a" ]; then
    echo " [$a]"
  else
    echo ""
  fi
}
PS1="\w\$(brname)$ "

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
