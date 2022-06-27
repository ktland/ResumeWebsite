FROM debian:latest
RUN apt update -y && apt upgrade -y
RUN apt install -y vim apache2
COPY info.html /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
