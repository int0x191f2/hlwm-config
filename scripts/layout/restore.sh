#!/bin/sh
clear
name=$(ls ~/.config/herbstluftwm/layout -1 | echo $(dmenu -i -l 20 -p Restore))
herbstclient load `herbstclient get_attr tags.focus.name` "$echo `cat ~/.config/herbstluftwm/layout/$name`"
