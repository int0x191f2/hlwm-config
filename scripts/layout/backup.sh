#!/bin/sh
clear
hc() {
  herbstclient "$@"
}
# Create the layout directory if it doesn't exist
if [ ! -d ~/.config/herbstluftwm/layout ];then
  mkdir ~/.config/herbstluftwm/layout;
fi
name=$(ls ~/.config/herbstluftwm/layout -1 | echo $(dmenu -i -l 20 -p Backup))
hc dump > ~/.config/herbstluftwm/layout/$name
