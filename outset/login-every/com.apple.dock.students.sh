#!/bin/sh
## Variables
dockutil='/usr/local/bin/dockutil'
username=`whoami`
mcxtimestamp=`echo 20150325083224`
storedtimestamp=`defaults read ~/Library/Preferences/org.houstonisd.dock.students.plist mcxtimestamp`
#mcxdate=`date -j +"%Y""%m""%d""%H""%M""%S"`

# Dock Setup
if 	[[ -e ~/Library/Preferences/org.houstonisd.dock.students.plist ]] && [[ $storedtimestamp -ge $mcxtimestamp ]]
	then
		echo "mcx value of $storedtimestamp is greater than or equal to $mcxtimestamp"
	else 
		# hisdadmin Dock
		if [[ "$username" == *hisdadmin* ]]
			then
				if [[ -e ~/Library/Preferences/org.houstonisd.dock.students.plist ]]
					then
						$dockutil --add /Applications/Launchpad.app
						$dockutil --add /Applications/Mission\ Control.app
						$dockutil --add /Applications/Safari.app
						## Diagnostic Apps
						$dockutil --add /Applications/Utilities/Activity\ Monitor.app
						$dockutil --add /Applications/Utilities/Console.app	
						$dockutil --add /Applications/Utilities/Directory\ Utility.app
						$dockutil --add /Applications/Utilities/Disk\ Utility.app
						$dockutil --add /Applications/Utilities/Keychain\ Access.app
						$dockutil --add /Applications/Utilities/Network\ Utility.app
						$dockutil --add /Applications/Utilities/System\ Information.app
						$dockutil --add /Applications/Utilities/Terminal.app
						## Managed Software Center
						if [ -e /Applications/Managed\ Software\ Center.app ] ; then $dockutil --add /Applications/Managed\ Software\ Center.app ; fi	
						## Extras			
						$dockutil --add /Applications/System\ Preferences.app
						$dockutil --add '/Applications' --view grid --sort name
						$dockutil --add '/Applications/Utilities' --view grid --sort name
						$dockutil --add '~/Desktop/Tools' --view grid --display folder --sort name
						defaults write ~/Library/Preferences/org.houstonisd.dock.students.plist mcxtimestamp -string "$mcxtimestamp"
					else
						$dockutil --remove all
						$dockutil --add /Applications/Launchpad.app
						$dockutil --add /Applications/Mission\ Control.app
						$dockutil --add /Applications/Safari.app
						## Diagnostic Apps
						$dockutil --add /Applications/Utilities/Activity\ Monitor.app
						$dockutil --add /Applications/Utilities/Console.app	
						$dockutil --add /Applications/Utilities/Directory\ Utility.app
						$dockutil --add /Applications/Utilities/Disk\ Utility.app
						$dockutil --add /Applications/Utilities/Keychain\ Access.app
						$dockutil --add /Applications/Utilities/Network\ Utility.app
						$dockutil --add /Applications/Utilities/System\ Information.app
						$dockutil --add /Applications/Utilities/Terminal.app
						## Managed Software Center
						if [ -e /Applications/Managed\ Software\ Center.app ] ; then $dockutil --add /Applications/Managed\ Software\ Center.app ; fi	
						## Extras			
						$dockutil --add /Applications/System\ Preferences.app
						$dockutil --add '/Applications' --view grid --sort name
						$dockutil --add '/Applications/Utilities' --view grid --sort name
						$dockutil --add '~/Desktop/Tools' --view grid --display folder --sort name
						defaults write ~/Library/Preferences/org.houstonisd.dock.students.plist mcxtimestamp -string "$mcxtimestamp"
				fi		
		else
				if [[ -e ~/Library/Preferences/org.houstonisd.dock.students.plist ]]
					then
						$dockutil --add /Applications/Launchpad.app
						$dockutil --add /Applications/Mission\ Control.app
						$dockutil --add /Applications/Safari.app
						if [ -e /Applications/Adobe\ Reader.app ] ; then $dockutil --add /Applications/Adobe\ Reader.app ; fi
						## iLife
						if [ -e /Applications/GarageBand.app ] ; then $dockutil --add /Applications/GarageBand.app ; fi
						if [ -e /Applications/iMovie.app ] ; then $dockutil --add /Applications/iMovie.app ; fi
						## OneNote
						if [ -e /Applications/Microsoft\ OneNote.app ] ; then $dockutil --add /Applications/Microsoft\ OneNote.app ; fi
						## Office 2011
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app ; fi
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ PowerPoint.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ PowerPoint.app ; fi
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app ; fi
						## Adobe CS 6
						if [ -e /Applications/Adobe\ Dreamweaver\ CS6/Adobe\ Dreamweaver\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Dreamweaver\ CS6/Adobe\ Dreamweaver\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Flash\ CS6/Adobe\ Flash\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Flash\ CS6/Adobe\ Flash\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Illustrator\ CS6/Adobe\ Illustrator\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Illustrator\ CS6/Adobe\ Illustrator\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Premiere\ Pro\ CS6/Adobe\ Premiere\ Pro\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Premiere\ Pro\ CS6/Adobe\ Premiere\ Pro\ CS6.app ; fi
						## Final Cut Pro X
						if [ -e /Applications/Final\ Cut\ Pro.app ] ; then $dockutil --add /Applications/Final\ Cut\ Pro.app ; fi
						## Managed Software Center
						if [ -e /Applications/Managed\ Software\ Center.app ] ; then $dockutil --add /Applications/Managed\ Software\ Center.app ; fi
						## Extras
						$dockutil --add /Applications/System\ Preferences.app
						$dockutil --add '/Applications' --view grid --sort name	
						defaults write ~/Library/Preferences/org.houstonisd.dock.students.plist mcxtimestamp -string "$mcxtimestamp"	
					else
						$dockutil --remove all
						$dockutil --add /Applications/Launchpad.app
						$dockutil --add /Applications/Mission\ Control.app
						$dockutil --add /Applications/Safari.app
						if [ -e /Applications/Adobe\ Reader.app ] ; then $dockutil --add /Applications/Adobe\ Reader.app ; fi
						## iLife
						if [ -e /Applications/GarageBand.app ] ; then $dockutil --add /Applications/GarageBand.app ; fi
						if [ -e /Applications/iMovie.app ] ; then $dockutil --add /Applications/iMovie.app ; fi
						## OneNote
						if [ -e /Applications/Microsoft\ OneNote.app ] ; then $dockutil --add /Applications/Microsoft\ OneNote.app ; fi
						## Office 2011
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app ; fi
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ PowerPoint.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ PowerPoint.app ; fi
						if [ -e /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app ] ; then $dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app ; fi
						## Adobe CS 6
						if [ -e /Applications/Adobe\ Dreamweaver\ CS6/Adobe\ Dreamweaver\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Dreamweaver\ CS6/Adobe\ Dreamweaver\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Flash\ CS6/Adobe\ Flash\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Flash\ CS6/Adobe\ Flash\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Illustrator\ CS6/Adobe\ Illustrator\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Illustrator\ CS6/Adobe\ Illustrator\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app ; fi
						if [ -e /Applications/Adobe\ Premiere\ Pro\ CS6/Adobe\ Premiere\ Pro\ CS6.app ] ; then $dockutil --add /Applications/Adobe\ Premiere\ Pro\ CS6/Adobe\ Premiere\ Pro\ CS6.app ; fi
						## Final Cut Pro X
						if [ -e /Applications/Final\ Cut\ Pro.app ] ; then $dockutil --add /Applications/Final\ Cut\ Pro.app ; fi
						## Managed Software Center
						# if [ -e /Applications/Managed\ Software\ Center.app ] ; then $dockutil --add /Applications/Managed\ Software\ Center.app ; fi
						## Extras
						$dockutil --add /Applications/System\ Preferences.app
						$dockutil --add '/Applications' --view grid --sort name	
						defaults write ~/Library/Preferences/org.houstonisd.dock.students.plist mcxtimestamp -string "$mcxtimestamp"
				fi	
		fi
fi

exit 0