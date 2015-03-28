#!/bin/bash
if [ ! -h /sys/class/power_supply/BAT0 ];then
  echo "No Battery"
  exit
fi
if [ "$(acpi -a | awk '{print $3}')" != 'on-line' ]
then
  echo "$(acpi | awk '{print $4}' | sed -e "s/,//g")"
fi
if [ "$(acpi -a | awk '{print $3}')" == 'on-line' ]
then
  echo "$(acpi | awk '{print $4}' | sed -e "s/,//g")>"
fi
