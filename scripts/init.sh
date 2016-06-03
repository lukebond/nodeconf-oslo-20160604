#!/bin/bash
systemctl stop redis demo-api-redis@1 demo-api-redis@2 demo-api-redis@3 balance
systemctl disable demo-api-redis@1 demo-api-redis@2 demo-api-redis@3 balance
systemctl enable redis
/home/luke/Development/nodeconf-oslo-20160604/scripts/copy.sh 1
systemctl daemon-reload
