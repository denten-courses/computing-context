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

avconv -f alsa -ac 2 -i hw:1 -f x11grab -r 30 -s 1366x768 -i :0.0 -vcodec libx264 -threads 4 output.mkv
