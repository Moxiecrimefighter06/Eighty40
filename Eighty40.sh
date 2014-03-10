#!/bin/bash

# titles for notify-send
In="PLUG-IN"
Out="UNPLUG"

while [ 1 ]; do
	# run acpi
	acpi=$(acpi)
	# find out if plugged in
	plugged=$(echo $acpi | grep -o 'Dischar')
	# strip acpi down to just xx%
	current=$(echo $acpi | grep -o '[0-9][0-9]\%' | grep -o '[0-9][0-9]')
	# body of the message. to be sent to notify-send
	batt_mes="Your battery is at $current %"

	if [ "$plugged" == "Dischar" ]; then
		# unplugged
		if (( $current < 45 )); then	#40
			notify-send --expire-time=20000 "$In" \
				"$batt_mes" \
				-i ~/.Eighty40/plugin.png
			sleep 5m
		else
			sleep 5m
		fi
	else
		# plugged in
		if (( $current > 75 )); then	#80
			notify-send --expire-time=20000 "$Out" \
				"$batt_mes" \
				-i ~/.Eighty40/unplug.png
			sleep 5m
		else
			sleep 5m
		fi
	fi
done
