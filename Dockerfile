FROM alpine:latest
RUN apk update && apk upgrade
RUN apk add -y vim httpd
COPY index.html /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
