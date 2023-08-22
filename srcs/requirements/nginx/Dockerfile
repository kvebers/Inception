FROM debian:bullseye
# RUN useradd -ms /bin/bash nginxuser
# USER nginxuser
RUN sudo apt-get update && \
    sudo apt-get install -y nginx && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /var/cache/apt/archives/*.deb
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]