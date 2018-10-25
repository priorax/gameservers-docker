FROM csgo-comp-ls
WORKDIR /steam/csgo
ADD start-wingman.sh /steam/csgo/
USER root
RUN dpkg --add-architecture i386; apt-get update;  apt-get install -y libstdc++6:i386 libcurl4-gnutls-dev:i386

COPY ruleset_* csgo/cfg/warmod/
COPY veto_maps_list.txt csgo/cfg/warmod
USER root 
RUN chown steam:steam csgo/cfg -Rv
USER steam
CMD ["./start-wingman.sh"]
