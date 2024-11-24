#!/bin/bash

cd /opt/coins/blockbook/znz/

/opt/coins/blockbook/znz/bin/blockbook \
    -blockchaincfg=/app/blockchaincfg.json \
    -datadir=/opt/coins/data/znz/blockbook/db \
    -sync \
    -internal=0.0.0.0:9013 \
    -public=0.0.0.0:9113 \
    -certfile=/opt/coins/blockbook/znz/cert/blockbook \
    -explorer= -log_dir=/opt/coins/blockbook/znz/logs
