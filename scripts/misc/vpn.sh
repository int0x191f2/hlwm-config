#!/bin/sh
clear
name=$(ls /opt/ovpn -1 | echo $(dmenu -i -l 20 -p VPN))
xterm -e "sudo openvpn /opt/ovpn/$name"
# herbstclient load `herbstclient get_attr tags.focus.name` "$echo `cat ~/.config/herbstluftwm/layout/$name`"
