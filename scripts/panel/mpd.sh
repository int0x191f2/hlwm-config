#!/bin/bash
HOST=10.52.0.121
if [ $(which mpc) ];then
    if [ $(mpc -h $HOST status | awk 'NR==2 {print $1}' | sed -e "s/\[//g" | sed -e "s/\]//g") == "playing" ];then
        mpc -h $HOST -f %title% | head -1
        exit
    else
        echo "[paused] $(mpc -h $HOST -f %title% | head -1)"
        exit
    fi
else
    echo ""
fi
