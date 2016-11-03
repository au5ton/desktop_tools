#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo ".GlobalPreferences"
## .GlobalPreferences
# Always show scroll bars, expanded save, expanded printing, don't save new documents to icloud, when logging out don't keep Windows.
if [[ ${osvers} -ge 8 ]]; then
        ## /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences AppleShowScrollBars -string Always
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences AppleMiniaturizeOnDoubleClick -bool false
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences NSNavPanelExpandedStateForSaveMode -bool true
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences NSNavPanelExpandedStateForSaveMode2 -bool true
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences PMPrintingExpandedStateForPrint -bool true
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences PMPrintingExpandedStateForPrint2 -bool true
        /usr/bin/defaults write ~/Library/Preferences/.GlobalPreferences NSQuitAlwaysKeepsWindows -bool false
		/usr/bin/defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
fi

exit 0