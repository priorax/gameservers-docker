FROM tf2

USER steam
WORKDIR /steam/steamcmd_linux

RUN ./steamcmd.sh +login anonymous +force_install_dir ../tf2 +app_update 232250  +quit

WORKDIR /steam/tf2

CMD ["./start-tf2.sh"]
