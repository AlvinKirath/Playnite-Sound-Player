- The script accepts **any user's custom `.wav` files** for both Fullscreen and Desktop modes.
- Your personal file (`welcome mr.alvinrocks.wav`) is used as an **example** in the README to show how to customize.

---

## ✅ **General PowerShell Script (`Playnite-Sound-Script.ps1`)**

```powershell
# Check Playnite mode and play respective .wav sound

# === Customize these paths ===
$fullscreenWavPath = "C:\Path\To\Your\FullscreenSound.wav"
$desktopWavPath = "C:\Path\To\Your\DesktopSound.wav"

# Load sound library
Add-Type -AssemblyName System.Windows.Forms

# Determine Playnite mode and play the respective sound
if ($PlayniteApi.ApplicationInfo.Mode -eq "Fullscreen") {
    $player = New-Object System.Media.SoundPlayer $fullscreenWavPath
    $player.PlaySync()
}
elseif ($PlayniteApi.ApplicationInfo.Mode -eq "Desktop") {
    $player = New-Object System.Media.SoundPlayer $desktopWavPath
    $player.PlaySync()
}
```

---

## 📘 Updated README

# Playnite WAV Sound Trigger

This repository provides a PowerShell script that plays a `.wav` sound when Playnite starts. It detects whether Playnite is in **Fullscreen** or **Desktop** mode and plays a different sound file accordingly.

## 📑 Table of Contents:
- [Features](#features)
- [Requirements](#requirements)
- [Setup Instructions](#setup-instructions)
  - [Customize the Script](#customize-the-script)
  - [Set Up in Playnite](#set-up-in-playnite)
  - [Example File Paths](#example-file-paths)
- [How It Works](#how-it-works)
- [Customization Tips](#customization-tips)
- [License](#license)

---

## 🚀 Features:
- Plays a `.wav` sound on Playnite startup.
- Supports **different audio** for Fullscreen and Desktop modes.
- Fully customizable sound paths.

---

## 🔧 Requirements:
- **Playnite** installed.
- **PowerShell** (available by default on Windows).
- One or more `.wav` sound files.

---

## 📋 Setup Instructions:

### Customize the Script:
1. Open `Playnite-Sound-Script.ps1`.
2. Replace the paths for both modes:
    ```powershell
    $fullscreenWavPath = "C:\Path\To\Your\FullscreenSound.wav"
    $desktopWavPath = "C:\Path\To\Your\DesktopSound.wav"
    ```
3. Save the file.

📌 **Example**:
```powershell
$fullscreenWavPath = "F:\Mr.AlvinRocks\Music\welcome mr.alvinrocks.wav"
$desktopWavPath = "F:\Mr.AlvinRocks\Music\welcome mr.alvinrocks.wav"
```

---

### Set Up in Playnite:
1. Launch **Playnite**.
2. Navigate to **Settings → Scripts**.
3. In the **On Application Start** section, paste the entire content of `Playnite-Sound-Script.ps1`.
4. Click **Save** and restart Playnite.

---

## 📁 Example File Paths:
- Fullscreen Mode: `F:\Mr.AlvinRocks\Music\welcome mr.alvinrocks.wav`
- Desktop Mode: `F:\Mr.AlvinRocks\Music\welcome mr.alvinrocks.wav`

You can use the same or different `.wav` files for each mode.

---

## ⚙️ How It Works:
- The script checks whether Playnite is running in **Fullscreen** or **Desktop** mode.
- It then plays the appropriate `.wav` sound using `System.Media.SoundPlayer`.

---

## 🎨 Customization Tips:
- Any `.wav` file will work—convert if needed from `.mp3` using tools like Audacity.
- You can extend this script to:
  - Randomly pick a sound.
  - Play startup jingles for different times of day.
  - Only play in one mode (use `if` block only).

---

## 🤝 License:
Licensed under the **MIT License** – see the [LICENSE](LICENSE) file.

---

