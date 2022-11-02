# CryptoLiveStream

Shell script to create live-streams with the current crypto price.<br>
Example<br>
Ethereum: https://youtu.be/5xU7mg2mbzI
Bitcoin: https://youtu.be/mwfD19EQHYM
<br><br>
This can be handy if you want to push the price of bitcoin (or any other crpyto) to a Google Chromecast enabled device.
Just stream to YouTube and cast to your TV!

<br><br>
How to run: <br>
./run -c bitcoin -r rtmp://a.youtube.com/live/youtubekey

upload two backgrounds in the folder /images/ with the name of the coin:  so: coin-up.png & coin-down.png<br>
so, bitcoin has to images:<br>
bitcoin-up.png<br>
bitcoin-down.png<br>

-c COIN
-r RTMP HOST
-k RTMP KEY

<br><br>!

Next update will also show high, low, volume and percentage
