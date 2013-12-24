#!/bin/sh

echo $(amixer get "$(/home/vac/bin/audio.sh)" | egrep -om1 "\-?[0-9]+\.[0-9]+dB")
