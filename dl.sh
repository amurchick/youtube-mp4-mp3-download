#!/bin/bash

echo "======= Search best format..."
FORMAT=`youtube-dl -F "$*" | grep best | sed -E -e 's/^([[:digit:]]+).+$/\1/'`
echo "======= Download video..."
youtube-dl -f $FORMAT "$*"

ID=`echo "$*" | sed -E -e 's%^.+v=([a-zA-Z0-9\-_]+)(.+)?$%\1%'`
MP4=`ls -1 *${ID}*`
MP3=`echo $MP4 | sed -E -e 's%^(.+)\.mp4$%\1.mp3%'`

echo "======= Extract MP3 from video..."
ffmpeg -i "$MP4" -b:a 384K -vn "./mp3/$MP3"

echo "======= Done!"
