FROM php:7.4-cli

RUN apt-get update && apt-get install -y unzip git
RUN pecl install xdebug
RUN echo "zend_extension=xdebug.so" >> /usr/local/etc/php/conf.d/xdebug.ini
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV PATH="~/.composer/vendor/bin:${PATH}"
