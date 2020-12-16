# Stream a folder on PeerTube, YouTube or Twitch
Stream a folder using FFMPEG. Originaly writen for PeerTube, but working with YouTube and Twitch too.

How to use :
- Change the stream link and the stream key in the stream.sh file.
- Place the stream.sh in the same directory of your videos.
- Now go in this directory and run "sh stream.sh" and that's all !

Automate the livestream :
- Place the stream.service in your Systemd directory (usually /etc/systemd/system/)
- Edit the file and change the WorkingDirectory by the one you placed the stream.sh file.
- Run "systemctl daemon-reload"
- Run "sudo service stream start"
- To verify all is working fine run "sudo service stream status"

Some things to know :
- You can't have spaces or special characters in the videos files names.
- Your videos must have the .mp4 extension.
- You can change the output resolution and bitrate depends to your server capacity.
- You should use 16/9 video format.
- The videos are playing by alphabetic order.
