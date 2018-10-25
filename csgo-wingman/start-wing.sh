#!/bin/bash

export GAME_TYPE=0
export GAME_MODE=2
export LAN=1
export OTHER_ARGS=" +exec gamemode_competitive2v2.cfg "
export MAP="gd_rialto"
export MAXPLAYERS=5
[[ -n $RCON_PASSWORD ]] && RCON_PASSWORD="rcon_password $RCON_PASSWORD"
[[ -n $SV_PASSWORD ]] && SV_PASSWORD="sv_password $SV_PASSWORD"
[[ -z $SV_HOSTNAME ]] && SV_HOSTNAME="CS:GO Server"

echo $RCON_PASSWORD >> /steam/csgo/csgo/cfg/server.cfg
echo $SV_PASSWORD >> /steam/csgo/csgo/cfg/server.cfg
echo $SV_HOSTNAME >> /steam/csgo/csgo/cfg/server.cfg

echo fack

exec ./srcds_run -game csgo +sv_lan 1 -ip 0.0.0.0 +map $MAP -maxplayers 5 -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE -tickrate 128 -maxplayers_override 5 $OTHER_ARGS
