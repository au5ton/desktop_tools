#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.Safari"
## com.apple.Safari
# Setup default Safari Settings
if [[ ${osvers} -ge 10 ]]; then
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AddressBarIncludesGoogle -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AlwaysRestoreSessionAtLaunch -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AlwaysShowTabBar -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AlwaysShowTabBarInFullScreen -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AskBeforeSubmittingInsecureForms -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AutoFillCreditCardData -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AutoFillFromAddressBook -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AutoFillMiscellaneousForms -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AutoFillPasswords -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist AutoOpenSafeDownloads -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist BlockStoragePolicy -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist BookmarksMenuIncludesBookmarksToolbar -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist CanPromptForPushNotifications -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist CommandClickMakesTabs -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ConfirmClosingMultiplePages -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ConvertedNewWindowBehaviorForTopSites -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidAddReadingListToBookmarksBar -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidMigrateNewBookmarkSheetToReadingListDefault -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidMigrateTabsToLinksForReaderKey -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidMigrateToMoreRestrictiveFileURLPolicy -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidMigrateWebKit1Preferences -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DidUnsubscribeFromRSSFeeds -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DownloadsClearingPolicy -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DownloadsPath -string ~/Downloads
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist DownloadsPathWasConverted -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist HistoryAgeInDaysLimit -int 365000
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist HomePage -string https://www.houstonisd.org/
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist LastOSVersionSafariWasLaunchedOn -string 10.10
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist LastSafariVersionWithWelcomePage -string 8.0
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist LocalFileRestrictionsEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist NewTabBehavior -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist NewWindowBehavior -int 0
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist OpenNewTabsInFront -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ShowFavoritesBar -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ShowFavoritesBar-v2 -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ShowSidebarInNewWindows -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist ShowStatusBar -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist TabCreationPolicy -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.apple.Safari.plist HomePage -string https://www.houstonisd.org/
fi

exit 0