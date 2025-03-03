FROM coturn/coturn:4.6.3-r3

USER root:root

COPY coturn-startup.sh /opt/scripts

RUN apt-get update && apt-get upgrade -y \
    && chmod 755 /opt/scripts/*.sh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER nobody:nogroup

ENTRYPOINT ["/opt/scripts/coturn-startup.sh"]

CMD ["--no-stdout-log"]