#!/bin/bash
if [ $(which ag) ]; then
  interfaces=$(ip addr| ag ": " | awk '{if (NR!=1) {print $2}}' | sed -e "s/\://g")
  ips=$(ip addr | ag "inet " | tr "/" " " | awk '{if (NR!=1) {print $9,$2}}' | tr "\n" " ")
    echo $interfaces  "|" $ips
fi
