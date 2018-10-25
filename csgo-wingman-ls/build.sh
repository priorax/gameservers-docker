#!/bin/bash
. ../common.sh
docker_build csgo-wingman-ls
docker tag csgo-wingman-ls dockerreg.lanadmins.net/csgo-wingman-ls
docker push dockerreg.lanadmins.net/csgo-wingman-ls