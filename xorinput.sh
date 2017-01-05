#!/bin/sh

# Grep xinput device list for laptop keyboard.
# @TODO make this configurable
device_info=`xinput list | grep 'AT'`

# Parse xinput line for slave and master ids.
slave_id=`echo $device_info | sed 's/.* id=\([0-9]*\) .*/\1/'`
master_id=`echo $device_info | sed 's/.*slave keyboard (\([0-9]*\)).*/\1/'`

# Disable laptop keyboard.
xinput float $slave_id

# Wait for input.
read -p "press any key to renable laptop keyboard" key

# Re-enable laptop keyboard.
xinput reattach $slave_id $master_id
