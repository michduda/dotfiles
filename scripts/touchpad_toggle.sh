#!/bin/bash

state_location=/home/mduda/.local/state/touchpad_state
touchpad_device="elan1200:00-04f3:309f-touchpad"

if [ ! -d $state_location ]; then
    mkdir --parents $state_location
fi

if [ -f $state_location/.disabled ]; then
    rm $state_location/.disabled
    hyprctl -- keyword device["$touchpad_device"]:enabled true
else 
    touch $state_location/.disabled
    hyprctl -- keyword device["$touchpad_device"]:enabled false
fi
