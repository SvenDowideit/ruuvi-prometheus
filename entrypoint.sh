#!/bin/bash 

hciconfig hci0 down
./ruuvi-prometheus -device hci0
