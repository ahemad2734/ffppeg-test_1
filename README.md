# FFmpeg GitHub Livestream

This project allows you to stream an m3u8 source to Facebook Live using GitHub Actions and FFmpeg.

## How to Use

1. Fork this repository to your own GitHub account.
2. Go to `.github/workflows/stream.yml` and click **Run Workflow**.
3. Make sure to edit `main.sh` and replace:

   ```bash
   STREAM_KEY="YOUR_STREAM_KEY_HERE"
   ```

   With your real Facebook Live stream key.

## Notes

- GitHub Actions run up to 6 hours max.
- Make sure your stream key is kept private.
