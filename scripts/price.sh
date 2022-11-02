#!/bin/bash

while getopts c: flag
do
    case "${flag}" in
        c) coin=${OPTARG};;
    esac
done
echo "Coin selected: $coin";

while true; do
./prices/wscat-build -c wss://ws.coincap.io/prices?assets=$coin > ./prices/$coin-price
done

