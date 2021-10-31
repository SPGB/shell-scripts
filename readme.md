# Shell scripts

General purpose shell scripts I've collected.

# Setup

Allow scripts to execute:

`chmod -R +x scripts`

Add to path:

`echo 'export PATH=$PATH:~/shell-scripts/scripts' >> ~/.zshrc && source ~/.zshrc`

# Misc other scripts

## M3U8 to mp4

`ffmpeg -i http://.../playlist.m3u8 -c copy -bsf:a aac_adtstoasc output.mp4`