FROM nginx:latest
LABEL maintainer="bin2bin"
RUN ln -sf /nginx.conf /etc/nginx/nginx.conf
VOLUME [ "/config" ]
EXPOSE 80 443