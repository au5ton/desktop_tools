#!/bin/sh

# Variables
osxversion=`sw_vers -productVersion | awk '{print $1}'`

# Yosemite
if [[ "$osxversion" == *10.10* ]]
	then
		# Sleeping 5 seconds to not get in the way of dockutil
		sleep 5
		python /usr/local/outset/custom/SetDesktop.py --path /Library/Desktop\ Pictures/HISD-Yosemite.jpg
fi

# El Capitan
if [[ "$osxversion" == *10.11* ]]
	then
		# Sleeping 5 seconds to not get in the way of dockutil
		sleep 5
		python /usr/local/outset/custom/SetDesktop.py --path /Library/Desktop\ Pictures/HISD-El_Capitan.jpg
fi


exit 0
