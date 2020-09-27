#!/bin/bash

dgpu_mode="uma"
# if nvidia
if command -v "prime-select" > /dev/null ; then	
	prime_select="$(prime-select query)"
	if [ "$prime_select" == "nvidia" ]; then
		dgpu_mode="nvidia_performance"
	elif [ "$prime_select" == "on-demand" ]; then
		dgpu_mode="nvidia_ondemand"
	else
		dgpu_mode="nvidia_powersaving"
	fi
fi
# if amd
echo dgpu_mode: $dgpu_mode
