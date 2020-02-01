#!/bin/bash

# Set touchpad tapping enabled

id=`xinput list | awk -F' |=|\t' '/Touchpad/{print $20}'`

configid=`xinput list-props $id | awk -F'(' '/Tapping Enabled \(/{print $2}' | awk -F')' '{print $1}'`

xinput --set-prop $id $configid 1
