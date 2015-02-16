#!/bin/sh
clear
hc() {
  herbstclient "$@"
}
# Create the layout directory if it doesn't exist
if [ ! -d ~/.config/herbstluftwm/layout ];then
  mkdir ~/.config/herbstluftwm/layout;
fi

echo "Name of the layout:"
read -r name
if [ ! -e ~/.config/herbstluftwm/layout/$name ];then
  echo "Writing layout"
  hc dump > ~/.config/herbstluftwm/layout/$name
else
  echo "File exists. Overwrite? [y/N]"
  read -r overwrite
  if [[ ! -z $overwrite ]] || [[ $overwrite == "y" ]]; then
    hc dump > ~/.config/herbstluftwm/layout/$name
  else
    exit
  fi
fi
