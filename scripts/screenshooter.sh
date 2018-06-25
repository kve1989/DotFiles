#!/bin/sh

filename=screenshot-%d-%m-%y-%T.png

notify-send "Scrot" "$filename" -i /usr/share/icons/Adwaita/48x48/devices/camera-photo.png
scrot ~/Pictures/Screenshots/$filename
