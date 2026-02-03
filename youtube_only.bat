@echo off
cd /d "%~dp0"

ffmpeg -version >nul 2>&1
if errorlevel 1 (
 echo FFmpeg not found. Restart CMD and try again.
 pause
 exit
)

if not exist "_input" (
 echo ERROR: _input folder not found!
 pause
 exit
)

mkdir _output 2>nul

echo ===============================
echo   YOUTUBE AUDIO PROCESSOR
echo ===============================

for %%t in (_input\*.*) DO (
 echo Processing: %%~nxt
 ffmpeg -y -i "%%t" ^
 -af "atempo=1.02,asetrate=44100*1.015,aresample=44100,highpass=200,lowpass=8500,volume=1.1" ^
 -c:a aac -b:a 128k -ar 44100 ^
 "_output\%%~nt_youtube.mp4"
)

echo ===============================
echo   DONE! FILES READY
echo ===============================
pause
