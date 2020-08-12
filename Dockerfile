FROM snipe/snipe-it AS snipe_it

FROM snipe/snipe-it

RUN apt-get update && \
    apt-get install sudo && \
    echo "docker ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/docker

RUN sed -i -e 's/a2dismod/sudo a2dismod/' \
           -e 's/mkdir -p/sudo mkdir -p/' /startup.sh

USER docker

CMD ["bash", "-x", "/startup.sh"]
