#!/usr/bin/env bash

# Please run this script in WSL2!!!!!

USERPROFILE="$(wslvar USERPROFILE)"
ahk_dir="$(wslpath "$USERPROFILE")/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/"
explorer_dir="$USERPROFILE\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup"
cp "mantle_keys.ahk" "$ahk_dir"
echo -e "ahk_script has been copied to $explorer_dir\nopen the windows explorer_dir to run script now"

explorer.exe "$explorer_dir"


wt_setting_dir="$(wslpath "$USERPROFILE")/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/"
cp "settings.json" "$wt_setting_dir"
