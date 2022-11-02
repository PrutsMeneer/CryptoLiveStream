#!/bin/bash
while getopts c: flag
do
    case "${flag}" in
        c) coin=${OPTARG};;
    esac
done
clear
echo "Coin selected: $coin";
 
#initialize price and save
priceold=1

while true; do
price=$(cat ./prices/$coin-price | sed 's/[^0-9.]*//g' | tail -n 1 )
sleep 0.03


if [ "$price" \> "$priceold" ]
then
clear
echo Price UP!
echo The Current price is: $price
echo The previous price is: $priceold
priceold=$price
ffmpeg -hide_banner -loglevel error -i ./images/$coin-up.png -vf "drawtext=fontsize=200:box=1:boxborderw=50:boxcolor=green@0.90:fontcolor=white:x=(w-text_w)/2:y=(h-text_h)/2:text='$'$price'" ./output/$coin-background-mv.jpg -y
mv ./output/$coin-background-mv.jpg ./output/$coin-background.jpg
fi

if [ "$price" \< "$priceold" ]
then
clear
echo Price DOWN!
echo The current price is: $price
echo The previous price is: $priceold
priceold=$price
ffmpeg -hide_banner -loglevel error -i ./images/$coin-down.png -vf "drawtext=fontsize=200:box=1:boxborderw=50:boxcolor=red@0.90:fontcolor=white:x=(w-text_w)/2:y=(h-text_h)/2:text='$'$price'" ./output/$coin-background-mv.jpg -y
mv ./output/$coin-background-mv.jpg ./output/$coin-background.jpg
fi

done

