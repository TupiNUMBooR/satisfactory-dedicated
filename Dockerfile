FROM cm2network/steamcmd:root

ENV STEAMAPPID=1690800
ENV STEAMAPPDIR="/home/steam/Steam/steamapps/common/SatisfactoryDedicatedServer"

COPY entry.sh "${HOMEDIR}/entry.sh"

RUN chmod +x "${HOMEDIR}/entry.sh" \
 && chown -R "${USER}:${USER}" "${HOMEDIR}"

USER ${USER}

WORKDIR ${HOMEDIR}

EXPOSE 15777/udp 15000/udp 7777/udp

CMD ["bash", "entry.sh"]
