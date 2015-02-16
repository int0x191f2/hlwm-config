#!/bin/sh
clear
echo "[L]ist layouts or [a]pply a layout?"
read -r action
if [[ ! -z $action ]] || [[ $action == "a" ]]; then
  echo "Name of layout to load?"
  read -r layoutName
  herbstclient load `herbstclient get_attr tags.focus.name` "$echo `cat ~/.config/herbstluftwm/layout/$layoutName`"
else
  ls ~/.config/herbstluftwm/layout/ -1
  read
fi
