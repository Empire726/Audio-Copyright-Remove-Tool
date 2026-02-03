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
echo   INSTAGRAM AUDIO PROCESSOR
echo ===============================

for %%t in (_input\*.*) DO (
 echo Processing: %%~nxt
 ffmpeg -y -i "%%t" ^
 -af "atempo=1.04,
 asetrate=44100*1.03,aresample=44100,
 highpass=300,lowpass=9000,
 equalizer=f=500:g=4,
 aecho=0.6:0.6:40:0.3,
 stereotools=mlev=0.9:slev=1.2,
 volume=1.2" ^
 -c:a aac -b:a 128k -ar 44100 ^
 "_output\%%~nt_instagram.mp4"
)

echo ===============================
echo   DONE! INSTAGRAM READY
echo ===============================
pause
