
# Webcam to video sink
> sudo modprobe v4l2loopback
> ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -s 1280x720 -i /dev/video0 -pix_fmt yuyv422 -f v4l2 /dev/video2

# to mp4
ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -s 1280x720 -i /dev/video0 -pix_fmt yuyv422 output.mp4

# mp4 to loopback
> ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -s 1280x720 -stream_loop -1 -i output.mp4 -pix_fmt yuyv422 -f v4l2 /dev/video2
> ffmpeg -re -i input.mp4 -f v4l2 /dev/video0

# Playback
> ffplay /dev/video2