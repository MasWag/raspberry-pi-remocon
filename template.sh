#!/bin/sh
# Export the port
if [ ! -d "/sys/class/gpio/gpio$port" ]; then
    echo "$port" > /sys/class/gpio/export
    sleep 0.1
fi

# Set the value
echo 1 > "/sys/class/gpio/gpio$port/value"
sleep 0.1

# Output the value
echo out > "/sys/class/gpio/gpio$port/direction"
sleep 0.1

# Unexport the port
echo "$port" > /sys/class/gpio/unexport
sleep 0.1
