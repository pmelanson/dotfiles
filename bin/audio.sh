#!/bin/sh

if [ "$(grep -c Pin-ctls:\ 0x40:\ OUT /proc/asound/card0/codec#0)" = 1 ]; then
	echo Headphone
elif [ "$(grep -c Pin-ctls:\ 0x40:\ OUT /proc/asound/card0/codec#0)" = 2 ]; then
	echo Speaker
else
	echo Master
fi
