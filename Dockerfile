FROM snipe/snipe-it AS snipe_it

FROM snipe/snipe-it

RUN groupadd snipe && \
    useradd -r -g snipe snipe

USER snipe

CMD ["bash", "-x", "/startup.sh"]
