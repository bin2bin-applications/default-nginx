FROM nginx:latest
LABEL maintainer="bin2bin"
COPY /nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443