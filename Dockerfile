FROM nginx:latest
LABEL maintainer="bin2bin"

RUN mkdir -p /etc/nginx/ssl/self-signed && \
    openssl req -x509 -nodes -days 10000 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/self-signed/privatekey \ 
    -out /etc/nginx/ssl/self-signed/certificate \
    -subj "/C=GL/O=bin2bin/OU=bin2bin/CN=*.bin2bin.app"

COPY /default.conf /etc/nginx/default.conf
COPY /nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443