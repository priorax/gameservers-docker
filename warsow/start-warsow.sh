#!/bin/bash

echo sv_hostname $SV_HOSTNAME >> wsw_cfg/dedicated_autoexec.cfg



exec ./wsw_server +set fs_usehomedir 0 +set fs_basepath /opt/warsow_${VERSION}/ +set dedicated 1

