#!/bin/bash

ulimit -s 8192

HERE=$(dirname $0)
MSANDR_PATH=$HERE
# DRRUN=$MSANDR_PATH/drmemory/build/dynamorio/bin64/drrun
DRRUN=$MSANDR_PATH/dr/exports/bin64/drrun
MSANDR=$MSANDR_PATH/build/libmsandr.so
export LD_USE_LOAD_BIAS=1
#echo ================= "$@" =================
#$DRRUN -persist -persist_dir /tmp/pcache -no_enable_reset -c $MSANDR -- "$@"
$DRRUN -c $MSANDR -- "$@"
