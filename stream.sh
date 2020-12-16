while [ 1 ];
do
for i in *.mp4; do
  ffmpeg -re -y -i "$i" -vcodec libx264 -b:v 600k -r 24 -s 640x360 \
-filter:v yadif -ab 128k -ac 1 -ar 44100 -f flv \
"rtmp://URL-DE-L-INSTANCE:1935/live/CLÉ-DU-STREAM"
sleep 5
done
done
