#!/bin/bash
# SHmugr v0.1
# Made by Dr. Waldijk
# A simple script to switch between runlevel 3 & 5.
# Read the README.md for more info, but you will find more info here below.
# By running this script you agree to the license terms.
# -----------------------------------------------------------------------------------
SHMUGR=$(systemctl get-default)
if [ $SHMUGR = "graphical.target" ]; then
    sudo systemctl set-default multi-user.target
elif [ $SHMUGR = "multi-user.target" ]; then
    sudo systemctl set-default graphical.target
fi
systemctl get-default
