# ffmpeg Bat Collection

[![GitHub license](https://img.shields.io/github/license/L0Lock/ffmpeg-bat-collection)](https://github.com/L0Lock/ffmpeg-bat-collection/blob/master/LICENSE.sql)

A collection of .bat files for some usefull ffmpeg conversions.

Bat files are supported in windows only.

## Installation

Bat files work on their own, but you need to have the latest versions of ffmpeg installed, as well as ffprobe and ffplay (those two are packed along ffmpeg.exe)

- [Download the lastest "static" ffmpeg pack](https://ffmpeg.zeranoe.com/builds/).

- Browse in the archive up to the `bin` subfolder containing ffmpeg, ffprobe and ffplay executables. Uncompress the `bin` folder (in this example we'll use `C:\ffmpeg\bin`

- Register ffmpeg, ffprobe & ffplay to environment variables
  **Through command lines:**
  
  - Hit the windows key, write down `cmd` and press <kbd>Enter</kbd>
  
  - enter the following command, line after line:
    
    ```
    set ffmpeg=C:\ffmpeg\bin
    set ffprobe=C:\ffmpeg\bin
    set ffplay=C:\ffmpeg\bin
    ```
  
  
  **Through user interface:**
  
  - do the following:
    
    ```
    My Computer
    Environment variables
    Add
    Name: ffmpeg
    Value: C:\ffmpeg\bin
    Add
    Name: ffprobe
    Value: C:\ffmpeg\bin
    Add
    Name: ffplay
    Value: C:\ffmpeg\bin
    Ok
    Ok
    ```

## How to use

Each "dragNdrop" .bat file is simple to use : you drag an drop your input file on it, and it will process this file and output it in the same folder of the .bat file.

## Descriptions

###### dragNdrop GIF 1fps

Creates an animated GIF file playing one frame per second, from any video file.

###### dragNdrop GIF 30fps

Creates an animated GIF file playing 30 frames per second, from any video file.

###### dragNdrop GIF 30fps w320px

Creates an animated GIF file playing 30 frames per second, resized at 320 pixels wide (with the same ratio), from any video file.

###### dragNdrop MP4

Creates a standard MP4 file with fast h264 encoding. Good e.g. for quick previews of large files.

###### dragNdrop MP4 web-friendly dividable size

Creates a MP4 file made to be readable in most web services. While also making sure the size is dividable by 2 (otherwise some video files might not be readable in the Internet).

###### dragNdrop Discord

Creates a video file readable by discord and within the 8MB file size limit. Note that it adapts the encoding quality depending of the video duration. The longer the video, the uglier it gets. Dont try to send your movies with that :wink: .