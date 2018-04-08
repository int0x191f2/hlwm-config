#!/bin/bash
# startup applications/settings
if [ ! -f ~/.xbindkeysrc ];then cp ~/.config/herbstluftwm/.xbindkeysrc ~/.xbindkeysrc; fi
if [ $(md5sum ~/.config/herbstluftwm/.xbindkeysrc|awk '{print $1}') != $(md5sum ~/.xbindkeysrc|awk '{print $1}') ];then
  cp ~/.config/herbstluftwm/.xbindkeysrc ~/.xbindkeysrc
fi
# backup polybar config
cp ~/.config/herbstluftwm/scripts/panel/polybar/config ~/.config/polybar/config
# synclient Touchpadoff=1
xbindkeys
nextcloud &
syndaemon -i .5 -K -R &
nm-applet
