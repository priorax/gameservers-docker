#!/bin/bash
. ../common.sh
docker_build warsow
docker tag warsow dockerreg.lanadmins.net/warsow
docker push dockerreg.lanadmins.net/warsow
