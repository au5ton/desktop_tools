#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.driver.AppleHIDMouse"
## com.apple.driver.AppleHIDMouse
# Setup Basic settings
if [[ ${osvers} -ge 7 ]]; then
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button1 -int 1
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button2 -int 2
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button3 -int 0
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button4 -int 4
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button4Click -int 0
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist Button4Force -int 0
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist ButtonDominance -int 1
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist ScrollH -int 1
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist ScrollS -int 4
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist ScrollSSize -int 30
    /usr/bin/defaults write ~/Library/Preferences/com.apple.driver.AppleHIDMouse.plist ScrollV -int 1
fi

exit 0