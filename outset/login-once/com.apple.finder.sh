#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.finder"
## com.apple.finder
# Setup Basic settings
if [[ ${osvers} -ge 7 ]]; then
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist InterfaceLevel -string Full
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ProhibitBurn -bool false
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ProhibitConnectTo -bool false
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ProhibitEject -bool false
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ProhibitGoToFolder -bool false
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowExternalHardDrivesOnDesktop -bool true
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowHardDrivesOnDesktop -bool true
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowMountedServersOnDesktop -bool true
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowRemovableMediaOnDesktop -bool true
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowStatusBar -bool true
    /usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist ShowTabView -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.finder.plist DesktopViewSettings -dict-add IconViewSettings '<dict><key>arrangeBy</key><string>name</string><key>backgroundColorBlue</key><real>1</real><key>backgroundColorGreen</key><real>1</real><key>backgroundColorRed</key><real>1</real><key>backgroundType</key><integer>0</integer><key>gridOffsetX</key><real>0.0</real><key>gridOffsetY</key><real>0.0</real><key>gridSpacing</key><real>100</real><key>iconSize</key><real>64</real><key>labelOnBottom</key><true/><key>showIconPreview</key><true/><key>showItemInfo</key><true/><key>textSize</key><real>12</real><key>viewOptionsVersion</key><integer>1</integer></dict>'
fi

killall Finder

exit 0