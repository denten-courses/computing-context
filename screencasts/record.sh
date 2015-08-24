# avconv     »
# -f         » force input or output file format, autodetected usually, not needed
# alsa       » arecord -l to get a list of available audio devices
# -ac        »
# -i         »
# -f         »
# x11grab    »
# -r         » framerate in Hz value, fraction, or abbriviation
# -s         »
# -i         »
# -vcodec    » set the video codec
# -threads   »

# avconv -f alsa -ac 2 -i plughw:1 -f x11grab -r 60 -s 1366x768 -i :0.0 -vcodec libx264 -threads 4 output.mkv
# conv -f alsa -i plughw:1 -f x11grab -r 25 -s 1366x768 -i :0.0 -acodec pcm_s16le -vcodec mpeg2video -b 60000k screencast.avi
# conv -f alsa -i plughw:1 -i :0.0 -f x11grab -r 30 -s 1366x768 -vcodec mpeg2video -threads 4 -b 60000k -b 60000k screencast.avi 
# conv -f alsa -ac 2 -i hw:1 -acodec alac -ab 128k -f x11grab -s 1366x768 -r 25 -i :0.0 output.mkv
avconv -f alsa -ac 2 -i hw:0 -acodec alac -ab 128k -f x11grab -s 1366x768 -r 25 -i :0.0 output.mkv
