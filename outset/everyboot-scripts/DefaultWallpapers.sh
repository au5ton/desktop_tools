#!/bin/sh

sw_vers -productVersion 
osxversion=`sw_vers -productVersion | awk '{print $1}'`

# On Lion, Lion.png is the default wallpaper.
if [[ "$osxversion" == *10.7* ]]
	then
		# cp -R /usr/local/hisd/hisd_wallpapers/Lion.jpg /Library/Desktop\ Pictures/
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-Lion.jpg /Library/Desktop\ Pictures/
		rm -rf /System/Library/CoreServices/DefaultDesktop.jpg	
		ln -s /Library/Desktop\ Pictures/HISD-Lion.jpg /System/Library/CoreServices/DefaultDesktop.jpg
fi

# On Mountain Lion, Galaxy.png is the default wallpaper.
if [[ "$osxversion" == *10.8* ]]
	then
		# cp -R /usr/local/hisd/hisd_wallpapers/Galaxy.jpg /Library/Desktop\ Pictures/
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-MLion.jpg /Library/Desktop\ Pictures/	
		rm -rf /System/Library/CoreServices/DefaultDesktop.jpg		
		ln -s /Library/Desktop\ Pictures/HISD-MLion.jpg /System/Library/CoreServices/DefaultDesktop.jpg
fi

# On Mavericks, Mavericks.png is the default wallpaper.
if [[ "$osxversion" == *10.9* ]]
	then
		# cp -R /usr/local/hisd/hisd_wallpapers/Wave.jpg /Library/Desktop\ Pictures/
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-Mavericks.jpg /Library/Desktop\ Pictures/	
		rm -rf /System/Library/CoreServices/DefaultDesktop.jpg		
		ln -s /Library/Desktop\ Pictures/HISD-Mavericks.jpg /System/Library/CoreServices/DefaultDesktop.jpg
fi

# On Yosemite, Yosemite.jpg is the default wallpaper.
if [[ "$osxversion" == *10.10* ]]
	then
		# cp -R /usr/local/hisd/hisd_wallpapers/Yosemite.jpg /Library/Desktop\ Pictures/
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-Yosemite.jpg /Library/Desktop\ Pictures/	
		rm -rf /System/Library/CoreServices/DefaultDesktop.jpg	
		# Adding Yosemite Staging Wallpaper for help with race conditions
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-Staging.jpg /Library/Desktop\ Pictures/
		ln -s /Library/Desktop\ Pictures/HISD-Staging.jpg /System/Library/CoreServices/DefaultDesktop.jpg
		# ln -s /Library/Desktop\ Pictures/HISD-Yosemite.jpg /System/Library/CoreServices/DefaultDesktop.jpg
		# LoginWindow Wallpaper
		rm -rf /Library/Caches/com.apple.desktop.admin.png
		cp -R /usr/local/hisd/hisd_wallpapers/com.apple.desktop.admin_10.10.png /Library/Caches/com.apple.desktop.admin.png
		chflags uchg /Library/Caches/com.apple.desktop.admin.png
fi

# On El Capitan, HISD-El_Capitan.jpg is the default wallpaper.
if [[ "$osxversion" == *10.11* ]]
	then
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-El_Capitan.jpg /Library/Desktop\ Pictures/	
		rm -rf /System/Library/CoreServices/DefaultDesktop.jpg	
		# Adding Yosemite Staging Wallpaper for help with race conditions
		cp -R /usr/local/hisd/hisd_wallpapers/HISD-Staging.jpg /Library/Desktop\ Pictures/
		ln -s /Library/Desktop\ Pictures/HISD-Staging.jpg /System/Library/CoreServices/DefaultDesktop.jpg
		# Removing Cache com.apple.desktop.admin.png and replacing it with HISD standard one.
		rm -rf /Library/Caches/com.apple.desktop.admin.png
		cp -R /usr/local/hisd/hisd_wallpapers/com.apple.desktop.admin_10.11.png /Library/Caches/com.apple.desktop.admin.png
		chflags uchg /Library/Caches/com.apple.desktop.admin.png
fi

# remove wallpapers from temp location
# rm -rf /usr/local/hisd/hisd_wallpapers

exit 0
