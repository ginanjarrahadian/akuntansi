FROM php:7.2-apache
WORKDIR /var/www/html/
COPY . /var/www/html/
RUN apt update -y && apt update -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]