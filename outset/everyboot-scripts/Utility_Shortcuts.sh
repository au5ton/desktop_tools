#!/bin/bash

###############################################################################
# Script Variables
###############################################################################

# Determine OS version
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

###############################################################################
# Add User shortcuts
###############################################################################

echo "***** Adding User Shortcuts..... *****"
echo ""

if [[ ${osvers} -ge 10 ]]; then
	echo "Directory Utility"
	# Make a symbolic link from /System/Library/CoreServices/Applications/Directory Utility.app
	# to /Applications/Utilities so that Directory Utility.app is easier to access.

	if [[ ! -e "/Applications/Utilities/Directory Utility.app" ]]; then
	   ln -s /System/Library/CoreServices/Applications/Directory\ Utility.app "/Applications/Utilities/Directory Utility.app"
	fi

	if [[ -L "/Applications/Utilities/Directory Utility.app" ]]; then
	   rm "/Applications/Utilities/Directory Utility.app"
	   ln -s /System/Library/CoreServices/Applications/Directory\ Utility.app "/Applications/Utilities/Directory Utility.app"
	fi

	echo "Screen Sharing Utility"
	# Make a symbolic link from /System/Library/CoreServices/Screen Sharing.app
	# to /Applications/Utilities so that Screen Sharing.app is easier to access.

	if [[ ! -e "/Applications/Utilities/Screen Sharing.app" ]]; then
	   ln -s /System/Library/CoreServices/Applications/Screen\ Sharing.app "/Applications/Utilities/Screen Sharing.app"
	fi

	if [[ -L "/Applications/Utilities/Screen Sharing.app" ]]; then
	   rm "/Applications/Utilities/Screen Sharing.app"
	   ln -s /System/Library/CoreServices/Applications/Screen\ Sharing.app "/Applications/Utilities/Screen Sharing.app"
	fi
else
	echo "Directory Utility Non-Yosemite"
	# Make a symbolic link from /System/Library/CoreServices/Applications/Directory Utility.app
	# to /Applications/Utilities so that Directory Utility.app is easier to access.

	if [[ ! -e "/Applications/Utilities/Directory Utility.app" ]]; then
	   ln -s "/System/Library/CoreServices/Directory Utility.app" "/Applications/Utilities/Directory Utility.app"
	fi

	if [[ -L "/Applications/Utilities/Directory Utility.app" ]]; then
	   rm "/Applications/Utilities/Directory Utility.app"
	   ln -s "/System/Library/CoreServices/Directory Utility.app" "/Applications/Utilities/Directory Utility.app"
	fi

	echo "Screen Sharing Utility Non-Yosemite"
	# Make a symbolic link from /System/Library/CoreServices/Screen Sharing.app
	# to /Applications/Utilities so that Screen Sharing.app is easier to access.

	if [[ ! -e "/Applications/Utilities/Screen Sharing.app" ]]; then
	   ln -s "/System/Library/CoreServices/Screen Sharing.app" "/Applications/Utilities/Screen Sharing.app"
	fi

	if [[ -L "/Applications/Utilities/Screen Sharing.app" ]]; then
	   rm "/Applications/Utilities/Screen Sharing.app"
	   ln -s "/System/Library/CoreServices/Screen Sharing.app" "/Applications/Utilities/Screen Sharing.app"
	fi

fi

echo "Network Utility"
# Make a symbolic link from /System/Library/CoreServices/Applications/Network Utility.app
# to /Applications/Utilities so that Network Utility.app is easier to access.

if [[ ! -e "/Applications/Utilities/Network Utility.app" ]]; then
   ln -s "/System/Library/CoreServices/Applications/Network Utility.app" "/Applications/Utilities/Network Utility.app"
fi

if [[ -L "/Applications/Utilities/Network Utility.app" ]]; then
   rm "/Applications/Utilities/Network Utility.app"
   ln -s "/System/Library/CoreServices/Applications/Network Utility.app" "/Applications/Utilities/Network Utility.app"
fi

echo "Printer Setup Utility"
# Make a symbolic link from /System/Library/PreferencePanes/PrintAndScan.prefPane
# to /Applications/Utilities so that Printer Setup Utility is easier to access.

if [[ ! -e "/Applications/Utilities/Printer Setup Utility.app" ]]; then
   ln -s "/System/Library/PreferencePanes/PrintAndScan.prefPane" "/Applications/Utilities/Printer Setup Utility.app"
fi

if [[ -L "/Applications/Utilities/Printer Setup Utility.app" ]]; then
   rm "/Applications/Utilities/Printer Setup Utility.app"
   ln -s "/System/Library/PreferencePanes/PrintAndScan.prefPane" "/Applications/Utilities/Printer Setup Utility.app"
fi
