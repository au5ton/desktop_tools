#!/bin/sh

username=`whoami`
# Determine OS version
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')

if [[ "$username" == *hisdadmin* ]]
	then
		# Lion or higher 
		if [[ ${osvers} -ge 7 ]]; then
				mkdir ~/Desktop/Tools
				python /usr/local/outset/custom/SetFolderIcon.py /usr/local/hisd/icons/HISD_GenericFolderIcon.png ~/Desktop/Tools
				# Bind To AD
				cp -R /usr/local/hisd/desktop_tools/BindToAD ~/Desktop/Tools/BindToAD
				# chmod a+x ~/Desktop/Tools/BindToAD.command
				# Set Firmware Password
				cp -R /usr/local/hisd/desktop_tools/FirmwarePassword ~/Desktop/Tools/FirmwarePassword
				# chmod a+x ~/Desktop/Tools/FirmwarePassword.command
				# Install Wireless
				cp -R /usr/local/hisd/desktop_tools/InstallWireless ~/Desktop/Tools/InstallWireless
				# chmod a+x ~/Desktop/Tools/InstallWireless.command
				# Re Image
				cp -R /usr/local/hisd/desktop_tools/ReImage ~/Desktop/Tools/ReImage
				# chmod a+x ~/Desktop/Tools/ReImage.command
				# Remove From AD
				cp -R /usr/local/hisd/desktop_tools/RemoveFromAD ~/Desktop/Tools/RemoveFromAD
				# chmod a+x ~/Desktop/Tools/RemoveFromAD.command
				# Remove Wireless
				cp -R /usr/local/hisd/desktop_tools/RemoveWireless ~/Desktop/Tools/RemoveWireless
				# chmod a+x ~/Desktop/Tools/RemoveWireless.command
				# Rename Mac
				cp -R /usr/local/hisd/desktop_tools/RenameMac ~/Desktop/Tools/RenameMac
				# chmod a+x ~/Desktop/Tools/RenameMac.command
				# Ensure proper permissions
				/usr/sbin/chown -R hisdadmin:admin ~/Desktop/Tools
		fi
	else
		exit 0
fi

# Enable the debug menu in Disk Utility
if [[ ${osvers} -le 10 ]]; then
# Yosemite or lower
/usr/bin/defaults write ~/Library/Preferences/com.apple.DiskUtility DUDebugMenuEnabled -bool true
/usr/bin/defaults write ~/Library/Preferences/com.apple.DiskUtility advanced-image-options -bool true
fi

# Show the main window when launching Activity Monitor
/usr/bin/defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
# Visualize CPU usage in the Activity Monitor Dock icon
/usr/bin/defaults write com.apple.ActivityMonitor IconType -int 5
# Show all processes in Activity Monitor
/usr/bin/defaults write com.apple.ActivityMonitor ShowCategory -int 0
# Sort Activity Monitor results by CPU usage
/usr/bin/defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
/usr/bin/defaults write com.apple.ActivityMonitor SortDirection -int 0

# Enable the Develop menu and the Web Inspector in Safari
/usr/bin/defaults write com.apple.Safari IncludeDevelopMenu -bool true
/usr/bin/defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
/usr/bin/defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Enable the WebKit Developer Tools in the Mac App Store
/usr/bin/defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
/usr/bin/defaults write com.apple.appstore ShowDebugMenu -bool true

exit 0
