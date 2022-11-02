# CryptoLiveStream

Shell script to create live-streams with the current crypto price.

Example
Ethereum: https://youtu.be/5xU7mg2mbzI 
Bitcoin: https://youtu.be/mwfD19EQHYM

This can be handy if you want to push the price of bitcoin (or any other crpyto) to a Google Chromecast enabled device.
Just stream to YouTube and cast to your TV!

How to install
- The script will check if ffmpeg and screen are installed, and if not it will install 
- Manually install wscat using: https://github.com/websockets/wscat

How to run: 
./run -c bitcoin -r rtmp://a.youtube.com/live/youtubekey

-c COIN
-r RTMP HOST

upload two backgrounds in the folder /images/ with the name of the coin. 
so: coin-up.png & coin-down.png

For example: bitcoin has to images:
bitcoin-up.png
bitcoin-down.png

Next update will also show high, low, volume and percentage
