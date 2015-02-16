#!/bin/sh
clear
hc() {
  herbstclient "$@"
}
# Create the layout directory if it doesn't exist
if [ ! -d ~/.config/herbstluftwm/layout ];then
  mkdir ~/.config/herbstluftwm/layout;
fi
# Create the layouts.old directory if it doesn't exist
if [ ! -d ~/.config/herbstluftwm/layouts.old ];then
  mkdir ~/.config/herbstluftwm/layouts.old;
fi
name=$(ls ~/.config/herbstluftwm/layout -1 | echo $(dmenu -i -l 20 -p Delete))
rm ~/.config/herbstluftwm/layout/$name
