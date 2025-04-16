# Check if Playnite is running in Fullscreen mode
if ($PlayniteApi.ApplicationInfo.Mode -eq "Fullscreen") {
    $wavPath = "F:\Mr.AlvinRocks\Music\welcome mr.alvinrocks.wav"

    # Load .NET assembly for sound support
    Add-Type -AssemblyName System.Windows.Forms

    # Create the SoundPlayer and play the WAV file
    $player = New-Object System.Media.SoundPlayer $wavPath
    $player.PlaySync()
}
