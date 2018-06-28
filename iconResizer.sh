#!/bin/bash

if [ -n convert ]
then
  echo "ImageMagick detected. Here we go..."
else
  echo "Please install the ImageMagick CLI and try again."
  echo "http://www.imagemagick.org/"
  exit 1
fi

if [ "$1" != "" ] # check if arg 1 is present
then
  FILE=$1
else
  echo "Please provide a file as an argument."
  exit 1  
fi

if [ ! -d "AppIcon" ]
then
  mkdir AppIcon
fi

echo "Resizing $FILE..."

convert $FILE -resize 40x40! AppIcon/Icon-App-20x20@2x.png # Notifications
convert $FILE -resize 60x60! AppIcon/Icon-App-20x20@3x.png # Notifications
convert $FILE -resize 29x29! AppIcon/Icon-App-29x29@1x.png # Settings
convert $FILE -resize 58x58! AppIcon/Icon-App-29x29@2x.png # Settings
convert $FILE -resize 87x87! AppIcon/Icon-App-29x29@3x.png # Settings
convert $FILE -resize 40x40! AppIcon/Icon-App-40x40@1x.png # Spotlight
convert $FILE -resize 80x80! AppIcon/Icon-App-40x40@2x.png # Spotlight
convert $FILE -resize 120x120! AppIcon/Icon-App-40x40@3x.png # Spotlight
convert $FILE -resize 60x60! AppIcon/Icon-App-60x60@1x.png # iPhone
convert $FILE -resize 120x120! AppIcon/Icon-App-60x60@2x.png # iPhone
convert $FILE -resize 180x180! AppIcon/Icon-App-60x60@3x.png # iPhone
convert $FILE -resize 76x76! AppIcon/Icon-App-76x76@1x.png # iPad
convert $FILE -resize 152x152! AppIcon/Icon-App-76x76@2x.png # iPad
convert $FILE -resize 228x228! AppIcon/Icon-App-76x76@3x.png # iPad
convert $FILE -resize 167x167! AppIcon/Icon-App-83.5x83.5@2x.png # iPad Pro
convert $FILE -resize 512x512! AppIcon/iTunesArtwork@1x.png # App Submission
convert $FILE -resize 1024x1024! AppIcon/iTunesArtwork@2x.png # App Submission
convert $FILE -resize 1536x1536! AppIcon/iTunesArtwork@3x.png

exit 0
