#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.google.Chrome"
## com.google.Chrome
# Setup default Chrome Settings
if [[ ${osvers} -ge 7 ]]; then
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist AllowOutdatedPlugins -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist AutoFillEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist BookmarkBarEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist BrowserAddPersonEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist BrowserGuestModeEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist DefaultBrowserSettingEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist DefaultCookiesSetting -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist DefaultSearchProviderEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist Disable3DAPIs -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist DnsPrefetchingEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ForceSafeSearch -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist HideWebStoreIcon -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist HideWebStorePromo -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist HomepageIsNewTabPage -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist HomepageLocation -string http://www.houstonisd.org
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportAutofillFormData -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportBookmarks -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportHistory -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportHomepage -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportSavedPasswords -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ImportSearchEngine -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist IncognitoModeAvailability -int 1
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist MetricsReportingEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist NetworkPredictionOptions -int 0
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist PasswordManagerAllowShowPasswords -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist PasswordManagerEnabled -bool false
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ProxyMode -string direct
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist RestoreOnStartup -int 4
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist SafeBrowsingEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ShowAppsShortcutInBookmarkBar -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist ShowHomeButton -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist SigninAllowed -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist SyncDisabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist TranslateEnabled -bool true
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist "PopupsAllowedforUrls" '("*.houstonisd.org")'
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist "ExtensionInstallBlacklist" '("mjnbclmflcpookeapghfhapeffmpodij")'
	/usr/bin/defaults write ~/Library/Preferences/com.google.Chrome.plist "RestoreOnStartupURLs" '("http://www.houstonisd.org")'
fi

exit 0