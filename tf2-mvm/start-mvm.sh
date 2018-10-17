#!/bin/sh

export MAPCYCLEFILE=mapcycle_mvm.txt
export MAP=mvm_decoy
export OTHER_ARGS="+tf_mm_strict 0"
export MAXPLAYERS=32

./start-tf2.sh
