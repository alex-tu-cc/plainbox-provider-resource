#!/bin/bash
if [ -f "/proc/driver/nvidia/params" ]; then
    cat /proc/driver/nvidia/params
fi

