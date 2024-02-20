#!usr/bin/env bash

dir=`printf "$(pwd)\n$(find ~/personal ~/work ~/other -maxdepth 1 -type d,l)" | fzf`
name=$(basename "$dir" | tr . _)

cd $dir

if [ -z $TMUX ]; then
    tmux new -A -s $name -c $dir
else
    tmux new -d -s $name -c $dir
    tmux switch-client -t $name
    exit 0
fi
