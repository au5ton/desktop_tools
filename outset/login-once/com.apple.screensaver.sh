#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.screensaver"
## com.apple.screensaver
# Require password immediately after sleep or screen saver begins (Just in case System settings do not take place)
if [[ ${osvers} -ge 7 ]]; then
    /usr/bin/defaults write ~/Library/Preferences/com.apple.screensaver.plist askForPassword -int 1
    /usr/bin/defaults write ~/Library/Preferences/com.apple.screensaver.plist askForPasswordDelay -int 0
fi

exit 0