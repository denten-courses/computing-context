| function  | app w/ link                               | incantation     |
|-----------|-------------------------------------------|-----------------|
| recording | [libav](https://libav.org/download/)      | [`sh record.sh`](https://raw.githubusercontent.com/denten-courses/computing-context/master/screencasts/record.sh)  |
| keystroke | [screenkey](https://packages.debian.org/source/sid/screenkey)| `screenkey` |


-  launch screenkey  
    `screenkey`
- launch mpplayer in a separate terminal  
     `mplayer tv:// -tv driver=v4l2:width=120:height=90:device=/dev/video0 -noborder -geometry 100%:0%`
- record  
     `avconv -f alsa -ac 2 -i hw:1 -f x11grab -r 30 -s 1366x768 -i :0.0 -vcodec libx264 -threads 4 output.mkv`
- Convert from mkv to mpg   
   `avconv -i /tmp/test%d.Y /tmp/out.mpg`
