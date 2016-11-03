#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.apple.LaunchServices"
## com.apple.LaunchServices
# Setup Safari as default browser
if [[ ${osvers} -ge 7 ]]; then
	/usr/bin/defaults write ~/Library/Preferences/com.apple.LaunchServices.plist LSHandlers -array-add '{LSHandlerURLScheme = "http"; LSHandlerRoleAll = "com.apple.safari";}'
	/usr/bin/defaults write ~/Library/Preferences/com.apple.LaunchServices.plist LSHandlers -array-add '{LSHandlerURLScheme = "https"; LSHandlerRoleAll = "com.apple.safari";}'
	/usr/bin/defaults write ~/Library/Preferences/com.apple.LaunchServices.plist LSHandlers -array-add '{LSHandlerContentType = "public.html"; LSHandlerRoleViewer = "com.apple.safari";}'
	/usr/bin/defaults write ~/Library/Preferences/com.apple.LaunchServices.plist LSHandlers -array-add '{LSHandlerContentType = "public.xhtml"; LSHandlerRoleAll = "com.apple.safari";}'
	/usr/bin/defaults write ~/Library/Preferences/com.apple.LaunchServices.plist LSHandlers -array-add '{LSHandlerContentType = "public.url"; LSHandlerRoleViewer = "com.apple.safari";}'
fi

exit 0