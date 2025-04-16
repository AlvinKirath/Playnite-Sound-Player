# Playnite WAV Sound Trigger

This repository provides a PowerShell script that plays a `.wav` sound when Playnite is launched. The sound is played based on whether Playnite is in **Fullscreen** or **Desktop** mode. Users can easily customize the sound files to use their preferred audio files.

## 📑 Table of Contents:
- [Features](#-features)
- [Requirements](#-requirements)
- [Setup Instructions](#-setup-instructions)
  - [Customize the Script](#customize-the-script)
  - [Set Up in Playnite](#set-up-in-playnite)
  - [Example of File Paths](#example-of-file-paths)
- [How It Works](#how-it-works)
- [Customization Tips](#customization-tips)
- [License](#license)

## 🚀 Features:
- Plays a sound on Playnite startup.
- Supports different sounds for **Fullscreen** and **Desktop** modes.
- Simple to set up and configure.

## 🔧 Requirements:
- **Playnite** installed.
- **PowerShell** (usually pre-installed on Windows).
- A **.wav** sound file for each mode (Desktop and Fullscreen).

> **Note:** The file names used in this example (like `"welcome mr.alvinrocks.wav"`) are for demonstration purposes. You can replace them with any `.wav` file of your choice.

## 📋 Setup Instructions:

### **Customize the Script:**
1. Clone or Download this repository to your local machine.
2. Open the script `Playnite-Sound-Script.ps1` and modify the paths to your own `.wav` files:
    ```powershell
    # Path to your sound files
    $desktopWavPath = "C:\Path\To\Your\SoundFile.wav"
    $fullscreenWavPath = "D:\AnotherPath\To\AnotherSoundFile.wav"
    ```
   > **Important**: Replace the paths with the location of your actual `.wav` files. The example `welcome mr.alvinrocks.wav` is just a sample filename.

### **Set Up in Playnite:**
1. Open **Playnite**.
2. Go to **Settings** → **Scripts**.
3. In the **On Application Start** section, paste the entire content of the `Playnite-Sound-Script.ps1` script.
4. Click **Save** and restart Playnite.

### **Example of File Paths:**
- **Desktop Mode Sound:** `C:\Path\To\Your\SoundFile.wav`
- **Fullscreen Mode Sound:** `D:\AnotherPath\To\AnotherSoundFile.wav`

## ⚙️ How It Works:

- When Playnite starts, the script checks whether it's in **Fullscreen** or **Desktop** mode.
- It then plays the corresponding `.wav` file based on the mode.
- If Playnite is in **Fullscreen** mode, the script plays the sound file specified for Fullscreen, and similarly for Desktop mode.

## 🎓 Customization Tips:
- You can change the sound files for each mode to suit your preferences.
- Feel free to add additional sound effects or music files in `.wav` format for a more personalized experience.

## 🤝 License:

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

> **Disclaimer**: The filename used in the example script (`"welcome mr.alvinrocks.wav"`) is specific to the creator's example. You are free to use your own `.wav` file for any name or sound effect. Just make sure to update the paths in the script to match your setup.

---
