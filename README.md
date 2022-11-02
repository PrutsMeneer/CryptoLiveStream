# CryptoLiveStream

Shell script to create live-streams with the current crypto price.<br>
Example<br>
Ethereum: https://youtu.be/5xU7mg2mbzI <br>
Bitcoin: https://youtu.be/mwfD19EQHYM
<br>
This can be handy if you want to push the price of bitcoin (or any other crpyto) to a Google Chromecast enabled device.
Just stream to YouTube and cast to your TV!

<br>
How to install<br>
- The script will check if ffmpeg and screen are installed, and if not it will install <br>
- Manually install wscat using: https://github.com/websockets/wscat

<br>
How to run: <br>
./run -c bitcoin -r rtmp://a.youtube.com/live/youtubekey

<br>
-c COIN<br>
-r RTMP HOST
<br>

upload two backgrounds in the folder /images/ with the name of the coin:  so: coin-up.png & coin-down.png<br>
so, bitcoin has to images:<br>
bitcoin-up.png<br>
bitcoin-down.png<br>



<br><br>!

Next update will also show high, low, volume and percentage
