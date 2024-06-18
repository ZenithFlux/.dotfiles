#!/usr/bin/env bash

PS1="\[\e[38;2;87;204;247m\e[1m\]\u\[\e[22m\] \[\e[38;2;150;150;150m\]\w \[\e[38;2;111;214;100m\]❯\[\e[0m\] "

alias python='python3'
alias anaconda='source ~/conda.bashrc'
alias mypackages="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
alias runssh='eval `ssh-agent` && ssh-add'
alias ex='nemo . > /dev/null 2>&1 & disown'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -z $TMUX ]; then
    source ~/.config/tmux/new_session.sh
fi

# Initialize environment and stuff for projects
initfile=.bashinit
[ -f $initfile ] && . $initfile
