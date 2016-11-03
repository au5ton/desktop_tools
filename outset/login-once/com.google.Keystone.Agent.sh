#!/bin/sh
osvers=$(sw_vers -productVersion | awk -F. '{print $2}')
sw_vers=$(sw_vers -productVersion)

echo "com.google.Keystone.Agent"
## com.google.Keystone.Agent
# Disable automatic check for updates as this will be a managed install.
if [[ ${osvers} -ge 7 ]]; then
	/usr/bin/defaults write ~/Library/Preferences/com.google.Keystone.Agent checkInterval 0
fi

exit 0