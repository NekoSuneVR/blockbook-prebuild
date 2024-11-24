#!/bin/bash

cd /opt/coins/blockbook/pivx/

/opt/coins/blockbook/pivx/bin/blockbook \
    -blockchaincfg=/app/blockchaincfg.json \
    -datadir=/opt/coins/data/pivx/blockbook/db \
    -sync \
    -internal=0.0.0.0:9049 \
    -public=0.0.0.0:9149 \
    -certfile=/opt/coins/blockbook/pivx/cert/blockbook \
    -explorer= -log_dir=/opt/coins/blockbook/pivx/logs
