FROM debian:latest
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./cert/ /etc/nginx/cert/
EXPOSE 443
# CMD ["nginx", "-g", "daemon off;"]
CMD ["tail", "-f", "/dev/null"]