# Splitter
Split big audio files into smaller ones.

Uses ffmpeg. Only works with mp3 files at the moment.

Simply because I had a few monolithic audio book files which I wanted split up into smaller chunks for the audio book app on my phone.

Intel Mac only at the moment.

There's the source code, and if you just want the compiled version there's the zip file of the disk image available:

[Splitter install disk image](Splitter.dmg.zip)

If you want to tinker and then build from the source code, either build/produce your own ffmpeg and link to it in the copy file step, or use the supplied version (you'll need to unzip it first). I’ve long forgotten when and where I got this version of ffmpeg from, so it could probably do with an update/rebuild.

(So I had a quick check, and it looks like it's version 3.3.4, so, indeed, extremely out of date! [Go get something better at the FFmpeg site!](https://ffmpeg.org/download.html))
