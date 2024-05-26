from pytube import YouTube

try:
    video_url = input("Input the video url: ")
except KeyboardInterrupt:
    exit(1)

yt = YouTube(video_url)

stream = yt.streams.get_highest_resolution()

stream.download()
