#!/bin/bash

BLANK="\e[0m"
#echo "this can break your terminal output"
#sleep 5

printf 'Basic:\n'
for color in {30..37}; do
	echo -ne "\e[0;${color}m color $color $BLANK"
done
for color in {40..47}; do
	echo -ne "\e[0;${color}m color $color $BLANK"
done
for color in {90..97}; do
	echo -ne "\e[0;${color}m color $color $BLANK"
done

for color in {100..107}; do
	echo -ne "\e[0;${color}m color $color $BLANK"
done

printf '\n256:\n'

for color in {1..256}; do
	echo -ne "\e[38;5;${color}m color $color $BLANK"
done

# ex: ts=4
