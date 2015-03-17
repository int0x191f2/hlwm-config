#!/bin/sh
clear
hc() {
  herbstclient "$@"
}
name=$(echo "" | echo $(dmenu -i -l 20 -p "New Tag"))
hc add $name
