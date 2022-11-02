#!/bin/bash
while getopts c:r: flag
do
    case "${flag}" in
        c) coin=${OPTARG};;
        r) rtmp=${OPTARG};;
    esac
done
echo "Username: $username";
echo "Age: $age";
echo "Full Name: $fullname";
while true
do

ffmpeg -re -loop 1 -i ./output/$coin-background.jpg -f lavfi -i anullsrc -r 5 -acodec aac -vcodec h264 -vprofile baseline -pix_fmt yuv420p -preset ultrafast -crf 20 -g 3 -keyint_min 3 -f flv $rtmp

sleep 1
done



