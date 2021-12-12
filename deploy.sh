#!/bin/sh

mkdir /opt/esocks
wget -O /opt/esocks/esocks http://www.caoyuwu.top/esocks/linux_amd64/esocks
wget -O /opt/esocks/config.json http://www.caoyuwu.top/esocks/config.json
chmod +x /opt/esocks/esocks

/opt/esocks/esocks
