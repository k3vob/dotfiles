#!/bin/bash

IMAGE=/tmp/i3lock.png
ICON=~/.config/i3/maia_lock.png
SCREENSHOT="scrot $IMAGE" # 0.46s

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE                           # Blur
#convert $IMAGE -scale 10% -scale 1000% $IMAGE                  # Pixelate
convert $IMAGE $ICON -gravity center -composite -matte $IMAGE   # Add icon
i3lock -u -i $IMAGE
rm $IMAGE
