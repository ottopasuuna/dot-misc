#!/bin/bash
#Launcht Tmux: try to attach to existing session or start a new one
if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux -u new-session
    else
        tmux -u attach-session -t "$ID" # if available attach to it
    fi
fi
