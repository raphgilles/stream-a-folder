# Stream a folder from your server on : PeerTube, YouTube or Twitch
Stream a folder from your server using FFMPEG. Originaly writen for PeerTube, but works with YouTube and Twitch too.

**How to use :**
- Install FFMPEG by runing "sudo apt install ffmpeg".
- Change the stream link and the stream key in the stream.sh file.
- Place the stream.sh in the same directory of your videos.
- Now go in this directory and run "sh stream.sh" and that's all !

**Automate the livestream :**
- Place the stream.service in your Systemd directory (usually /etc/systemd/system/)
- Edit the file and change the WorkingDirectory by the one you placed the stream.sh file.
- Run "systemctl daemon-reload"
- Run "sudo service stream start"
- To verify all is working fine run "sudo service stream status"

**Some things to know :**
- You can't have spaces or special characters in the videos files names.
- Your videos must have the .mp4 extension.
- You can change the output resolution and bitrate depends to your server capacity.
- You should use 16/9 video format.
- The videos are playing by alphabetic order.

**Example of a livestream using this script :**

<a href="https://peertube.stream/videos/watch/118d4071-1a87-4050-9d14-82e2a9c68fda?autoplay=1" target="_blank">![Image](https://i.ibb.co/VL1nnBr/Capture-d-e-cran-2020-12-17-a-14-41-19.png "PeerTube Livestream")</a>
