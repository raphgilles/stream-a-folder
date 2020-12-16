while [ 1 ];
do

for f in $(ls *.mp4); do
    ffmpeg -i $f -c copy -bsf:v h264_mp4toannexb -f mpegts $f.ts
done

CONCAT=$(echo $(ls *.ts) | sed -e "s/ /|/g")

  ffmpeg -re -y -i "concat:$CONCAT" -vcodec libx264 -b:v 600k -r 24 -s 640x360 \
-filter:v yadif -ab 128k -ac 1 -ar 44100 -f flv \
"rtmp://LINK-OF-THE-STREAM/live/KEY-OF-THE-STREAM"

find . -name "*.ts" -type f -delete

done
