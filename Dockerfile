FROM php:latest

RUN apt-get update && apt-get install -y

RUN apt-get install -y wget gnupg gnupg2

RUN apt-get install -y git

RUN cd /tmp
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get install -y nodejs npm