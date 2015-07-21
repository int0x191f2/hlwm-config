#!/bin/bash
# startup applications/settings
if [ ! -f ~/.xbindkeysrc ];then cp ~/.config/herbstluftwm/.xbindkeysrc ~/.xbindkeysrc; fi
if [ $(md5sum ~/.config/herbstluftwm/.xbindkeysrc|awk '{print $1}') != $(md5sum ~/.xbindkeysrc|awk '{print $1}') ];then
  cp ~/.config/herbstluftwm/.xbindkeysrc ~/.xbindkeysrc
fi
# synclient Touchpadoff=1
xbindkeys
nm-applet
