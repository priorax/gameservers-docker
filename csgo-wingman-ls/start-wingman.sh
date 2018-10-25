#!/bin/bash
echo hi
export GAME_TYPE=0
export GAME_MODE=2
export LAN=1
export OTHER_ARGS=" +exec gamemode_competitive2v2.cfg "
export MAP="gd_rialto"
export MAXPLAYERS=5
[[ -n $RCON_PASSWORD ]] && RCON_PASSWORD="rcon_password $RCON_PASSWORD"
[[ -n $SV_PASSWORD ]] && SV_PASSWORD="sv_password $SV_PASSWORD"
[[ -z $SV_HOSTNAME ]] && SV_HOSTNAME="CS:GO Server"

# Warmod kept overriding settings, this just forces every setting that we are 
# overriding from Warmod stays correct.
echo $RCON_PASSWORD | tee -a /steam/csgo/csgo/cfg/server.cfg
echo $SV_PASSWORD | tee -a /steam/csgo/csgo/cfg/server.cfg
echo hostname $SV_HOSTNAME | tee -a /steam/csgo/csgo/cfg/server.cfg
echo sv_lan 1  | tee -a  /steam/csgo/csgo/cfg/server.cfg
echo mp_buytime 20 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo mp_roundtime_defuse 1.5 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo mp_roundtime 1.5 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo wm_require_names 1 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo mp_maxrounds 18 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo mp_friendlyfire 1 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
echo mp_freezetime 12 | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_default.cfg | tee -a /steam/csgo/csgo/cfg/csgo-server.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg | tee -a /steam/csgo/csgo/cfg/warmod/ruleset_playout.cfg
exec ./srcds_run -game csgo +sv_lan 1 -ip 0.0.0.0 +map $MAP -maxplayers 5 -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE -tickrate 128 -maxplayers_override 5 $OTHER_ARGS
