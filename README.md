# Downloads Video from Youtube and extract audio track to mp3

## Required:
- youtube-dl (https://rg3.github.io/youtube-dl/)
- ffmeg (https://www.ffmpeg.org/download.html)

## Run
./dl.sh "youtube video link"

## Notes
Sorry guys, but tested on macOS only (for Windows users may not work without cygwin, for Linux users - need change `sed` cmd line arguments)

# Download video with best video/audio quality
```bash
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 'http://www.youtube.com/watch?v=xxxxxxx'
```
