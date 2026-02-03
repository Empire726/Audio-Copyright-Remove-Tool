@echo off
cd /d "%~dp0"

ffmpeg -version >nul 2>&1
if errorlevel 1 (
 echo FFmpeg not found!
 pause
 exit
)

mkdir _output 2>nul

echo ===============================
echo   FACEBOOK AUDIO PROCESSOR
echo ===============================

for %%t in (_input\*.*) DO (
 echo Processing: %%~nxt
 ffmpeg -y -i "%%t" ^
 -af "atempo=1.03,
 asetrate=44100*1.02,aresample=44100,
 highpass=250,lowpass=8800,
 equalizer=f=400:g=3,
 stereotools=mlev=0.93:slev=1.1,
 volume=1.15" ^
 -c:a aac -b:a 128k -ar 44100 ^
 "_output\%%~nt_facebook.mp4"
)

echo ===============================
echo   DONE! FACEBOOK READY
echo ===============================
pause
