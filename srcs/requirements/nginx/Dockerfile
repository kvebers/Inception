FROM alpine:3.18
RUN apk add nginx
RUN apk add openssl
COPY tools/cert.sh .
COPY conf/default.conf /etc/nginx/http.d/default.conf
ENTRYPOINT ["sh", "cert.sh"]
