FROM nginx:latest
LABEL maintainer="bin2bin"
VOLUME [ "/config" ]
EXPOSE 80 443