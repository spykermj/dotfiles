#!/bin/sh

pkill -f pasystray
pkill -f nm-applet

pasystray --notify=all &
nm-applet --indicator &
