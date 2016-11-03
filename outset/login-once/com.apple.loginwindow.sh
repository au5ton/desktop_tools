#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.loginwindow"
## com.apple.loginwindow
# Disable 'Reopen windows when logging back in' (Just in case System settings do not take place)
if [[ ${osvers} -ge 7 ]]; then
    /usr/bin/defaults write ~/Library/Preferences/com.apple.loginwindow.plist TALLogoutSavesState -bool false
    /usr/bin/defaults write ~/Library/Preferences/com.apple.loginwindow.plist TALLogoutReason -string "Log Out"
    /usr/bin/defaults write ~/Library/Preferences/com.apple.loginwindow.plist LoginwindowLaunchesRelaunchApps -bool false
fi

exit 0