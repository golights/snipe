FROM snipe/snipe-it AS snipe_it

FROM snipe/snipe-it

RUN apt-get update && \
    apt-get install sudo && \
    echo "docker ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/docker

RUN sed -i -e 's/a2dismod/sudo a2dismod/'  \
           -e 's/chown -R/sudo chown -R/g' \
           -e 's/mkdir -p/sudo mkdir -p/' /startup.sh && \
    sed -i -e 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf

RUN chmod -R ga+rwx /var/log/apache2/

USER docker

CMD ["bash", "-x", "/startup.sh"]
