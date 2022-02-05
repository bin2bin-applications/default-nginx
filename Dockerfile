FROM nginx:latest
LABEL maintainer="bin2bin"

RUN mkdir -p /nginx/sites-enabled && \
    mkdir -p /nginx/ssl/self-signed && \
    openssl req -x509 -nodes -days 10000 -newkey rsa:2048 \
    -keyout /nginx/ssl/self-signed/privatekey \ 
    -out /nginx/ssl/self-signed/certificate \
    -subj "/C=GL/O=bin2bin/OU=bin2bin/CN=*.bin2bin.app"

COPY /default.conf /nginx/default.conf
COPY /nginx.conf /etc/nginx/nginx.conf
VOLUME [ "/nginx/ssl" ]
EXPOSE 80 443