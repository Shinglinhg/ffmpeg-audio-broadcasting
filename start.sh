#!/usr/bin/bash
set -e

while true; do
    ffmpeg -flags low_delay -fflags nobuffer -use_wallclock_as_timestamps 1 -fflags +genpts -f pulse -i default -c:a libopus -application lowdelay -frame_duration 5 -b:a 128k -f ogg -listen 1 http://0.0.0.0:8000/stream.ogg
done


