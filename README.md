# Eighty40

This is a simple bash script that will alert you when your laptops battery is 
at 40 and 80%.  Plugging your laptop in at 40% and unplugging at 80% can 
increase the life of your battery, since it is under the most stress after
points.

NOTE: I made this on Ubuntu 13.04 and have not tested it on anything else.

## Installation

Move Eighty40-master directory to your home folder and make it executable:

	mv Eighty40-master/ ~/.Eighty40/
	cd ~/.Eighty40/
	chmod u+x Eighty40.sh

To make it run on startup go to startup applications > add new. 
Name it Eighty40 then where it says command add this:

	./.Eighty40/Eighty40.sh	

Eighty40 makes use of "Acpi" and "Notify-Send" if you don't have them installed
yet do so now:

	sudo apt-get install notify-osd
	sudo apt-get install acpi

## Modify

You can replace the images that appear in the notify bubles with any .png images
that are 140x140px. Just name them plugin.png & unplug.png then replace the 
images that are currently in ~/.Eighty40-master/

The script checks your battery status every 5min. To change this modify 
Eighty40.sh change lines 23, 25, 33, and 35 from "sleep 5m" to "sleep (amount of
time you want it to sleep)"
