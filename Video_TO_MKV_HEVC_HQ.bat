echo off
:again

ffmpeg.exe -i "%~1" -c:v libx265 -preset medium -tune zerolatency -crf 20 -profile:v main10 -pix_fmt yuv420p -c:a aac -q:a 5 "%~p1%~n1_MKV_HEVC_HQ.mkv"
if NOT ["%errorlevel%"]==["0"] goto:error

shift
if "%~1" == "" goto:end
goto:again

:error

echo [93mThere was an error. Please check your input file or report an issue on github.com/L0Lock/FFmpeg-bat-collection/issues.[0m
pause
exit 0

:end

echo [92mEncoding succesful. This window will close after 10 seconds.[0m
timeout /t 10