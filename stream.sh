while [ 1 ];
do

for f in $(ls *.mp4); do
    ffmpeg -i $f -c copy -bsf:v h264_mp4toannexb -f mpegts $f.ts
done

CONCAT=$(echo $(ls *.ts) | sed -e "s/ /|/g")

  ffmpeg -re -y -i "concat:$CONCAT" -vcodec libx264 -b:v 600k -r 24 -s 640x360 \
-filter:v yadif -ab 128k -ac 1 -ar 44100 -f flv \
"rtmp://peertube.stream:1935/live/dc251de2-9075-416a-a81f-a402bb6ca8ad"
sleep 5

find . -name "*.ts" -type f -delete

done
