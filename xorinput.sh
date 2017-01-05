#!/bin/sh

# Grep xinput device list for laptop keyboard.
# Mine is "AT Translated Set 2 keyboard"
# @TODO make this configurable
device_info=`xinput list | grep 'AT'`;

# Parse xinput line for slave and master ids.
slave_id=`echo $device_info | sed 's/.* id=\([0-9]*\) .*/\1/'`;
master_id=`echo $device_info | sed 's/.*slave keyboard (\([0-9]*\)).*/\1/'`;

# Disable laptop keyboard.
xinput float $slave_id;
echo "laptop keyboard disabled";
echo "run 'xinput reattach $slave_id $master_id' in case of emergency";

# Wait for input.
read -p "press any key to renable laptop keyboard" key;

# Re-enable laptop keyboard.
xinput reattach $slave_id $master_id;
