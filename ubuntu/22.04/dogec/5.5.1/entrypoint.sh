#!/bin/bash

cd /opt/coins/blockbook/dogec/

/opt/coins/blockbook/dogec/bin/blockbook \
    -blockchaincfg=/app/blockchaincfg.json \
    -datadir=/opt/coins/data/dogec/blockbook/db \
    -sync \
    -internal=0.0.0.0:9025 \
    -public=0.0.0.0:9125 \
    -certfile=/opt/coins/blockbook/dogec/cert/blockbook \
    -explorer= -log_dir=/opt/coins/blockbook/dogec/logs
