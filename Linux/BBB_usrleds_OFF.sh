#!/bin/bash

cd /sys/class/leds/beaglebone:green:usr0
echo timer > trigger
echo 0 > delay_on

cd /sys/class/leds/beaglebone:green:usr1
echo timer > trigger
echo 0 > delay_on

cd /sys/class/leds/beaglebone:green:usr2
echo timer > trigger
echo 0 > delay_on

cd /sys/class/leds/beaglebone:green:usr3
echo timer > trigger
echo 0 > delay_on

exit
