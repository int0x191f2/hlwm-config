#!/bin/bash
if [ $(amixer get Master | ag "%" | awk '{print $6}' | sed -e 's/\[//g' | sed -e 's/\]//g') == "off" ];then 
  echo Muted
  exit
fi
amixer get Master | grep % | awk '{print $4}' | sed -e 's/\[//g' | sed -e 's/\]//g'
