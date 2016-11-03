#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo ".GlobalPreferences"
## .GlobalPreferences
# Always show scroll bars, expanded save, expanded printing, don't save new documents to icloud, when logging out don't keep Windows.
if [[ ${osvers} -ge 8 ]]; then
        /usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
        /usr/bin/defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
		# Use scroll gesture with the Ctrl (^) modifier key to zoom
		defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
		defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
fi

exit 0