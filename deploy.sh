#!/bin/sh

mkdir /opt/esocks
wget -O /opt/esocks/esocks https://caoyuwu.eu.org/esocks/linux_amd64/esocks
wget -O /opt/esocks/config.json https://caoyuwu.eu.org/esocks/config.json
chmod +x /opt/esocks/esocks

/opt/esocks/esocks
