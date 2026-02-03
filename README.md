# Audio-Copyright-Remove-Tool
FFmpeg based audio processing tool for YouTube, Instagram and Facebook




Initial project upload


# 🎵 Audio Copyright Processing Tool (FFmpeg)

A Windows-based **FFmpeg audio processing tool** designed to prepare audio/video files for  
**YouTube, Instagram (Reels), and Facebook** using platform-specific presets.

> ⚠️ **Disclaimer**
> This project is for **educational and testing purposes only**.  
> It does **not remove copyright ownership**. Copyright claims may still occur depending on content.

---

## 🚀 Features

- ✅ Separate presets for:
  - YouTube
  - Instagram (Reels / Stories)
  - Facebook
- ✅ Works with:
  - MP3, WAV, M4A, MP4
- ✅ Uses **system-installed FFmpeg**
- ✅ Simple `.bat` scripts (no coding knowledge required)
- ✅ Fast batch processing

---

## 🖥️ System Requirements

- Windows 10 / Windows 11 (64-bit)
- FFmpeg (installed via `winget`)
- Basic knowledge of running `.bat` files

---

## ⚙️ FFmpeg Installation (Recommended Method)

Install FFmpeg using **winget** (no browser download required):

```bat
winget install ffmpeg

**📁 Project Folder Structure**

Audio-Copyright-Tool
│
├── _input
│   └── (put audio / video files here)
│
├── _output
│   └── (processed files will appear here)
│
├── youtube_only.bat
├── instagram_only.bat
└── facebook_only.bat


▶️ How to Use (Step-by-Step)
1️⃣ Add Files

Copy your audio or video files into the _input folder.

Supported formats:

.mp3

.wav

.m4a

.mp4

2️⃣ Run the Script

Double-click the BAT file based on your target platform

| Platform  | Script               |
| --------- | -------------------- |
| YouTube   | `youtube_only.bat`   |
| Instagram | `instagram_only.bat` |
| Facebook  | `facebook_only.bat`  |


🎛️ Preset Logic (High Level)
🔴 YouTube (Safe / Low Distortion)

Light tempo adjustment

Resampling

High-pass & low-pass filters

Balanced volume

🟣 Instagram (Aggressive)

Higher tempo change

Stereo widening

Echo & EQ

Optimized for Reels detection

🔵 Facebook (Balanced)

Moderate tempo shift

Stereo remix

Clean output quality


      
📜 License

This project is released for educational use only.
The author is not responsible for copyright misuse or policy violations.
