#!/bin/bash
if [ $(which mpc) ];then
    if [ $(mpc status | awk 'NR==2 {print $1}' | sed -e "s/\[//g" | sed -e "s/\]//g") == "playing" ];then
        mpc -f %title% | head -1
        exit
    else
        echo "[paused] $(mpc -f %title% | head -1)"
        exit
    fi
fi
