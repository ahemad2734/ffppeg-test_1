#!/bin/bash
echo "Starting FFmpeg livestream..."

ffmpeg -re -i "$M3U8_URL" \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -c:a aac -b:a 128k -ar 44100 \
  -f flv "rtmps://live-api-s.facebook.com:443/rtmp/$STREAM_KEY"
