#!/bin/bash

# Change backlight

now=`pkexec mate-power-backlight-helper --get-brightness`

if [ $1 == "up" ]
then
	pkexec mate-power-backlight-helper --set-brightness $(($now+78))
elif [ $1 == "down" ]
then
	pkexec mate-power-backlight-helper --set-brightness $(($now-78))
fi
