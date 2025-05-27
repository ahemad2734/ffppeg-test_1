#!/bin/bash
echo "Starting FFmpeg livestream..."

# Replace with your Facebook stream key
STREAM_KEY="YOUR_STREAM_KEY_HERE"
M3U8_URL="https://shls-mbc3-prod-dub.shahid.net/out/v1/d5bbe570e1514d3d9a142657d33d85e6/index.m3u8"

ffmpeg -re -i "$M3U8_URL"   -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k   -c:a aac -b:a 128k -ar 44100   -f flv "rtmps://live-api-s.facebook.com:443/rtmp/$STREAM_KEY"
