#!/bin/bash
 
#depends on: imagemagick, i3lock, scrot
#https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/cqilnv3
 
IMAGE=/tmp/lockscreen.png
TEXT="Not your laptop"
ICON=/home/softmaxer/.config/i3/death-star.png
 
scrot $IMAGE
convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 25% $IMAGE
convert $IMAGE -gravity center -geometry +0+200 -composite $IMAGE
convert $IMAGE $ICON -gravity center -composite -matte $IMAGE
i3lock -u -i $IMAGE
rm $IMAGE
