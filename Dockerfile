FROM nginx:latest
LABEL maintainer="bin2bin"
RUN ln -sf /nginx.conf /etc/nginx/nginx.conf
COPY /nginx.conf /nginx.conf
EXPOSE 80 443