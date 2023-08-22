FROM debian:bullseye
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /var/cache/apt/archives/*.deb
EXPOSE 443
RUN useradd -ms /bin/bash impostor
USER impostor
CMD ["nginx", "-g", "daemon off;"]