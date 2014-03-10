# Eighty40

This is a simple bash script that will alert you when your laptops battery is 
at 40 and 80%.  Plugging your laptop in at 40% and unplugging at 80% can 
increase the life of your battery, since it is under the most stress after
points.
NOTE: I made this on Ubuntu 13.04 and have not tested it on anything else.

## Installation

Move Eighty40-master directory to your home folder:

	mv Eighty40-master/ ~/

To make it run on startup go to startup applications > add new. 
Give it a name then where it says command add this:

	bash ~/.Eighty40-master/Eighty40.sh	

Eighty40 makes use of "Acpi" and "Notify-Send" if you don't have them installed
yet do so now:

	sudo apt-get install notify-osd
	sudo apt-get install acpi

