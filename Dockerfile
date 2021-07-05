FROM webdevops/php:8.0


RUN pecl install swoole

RUN touch /usr/local/etc/php/conf.d/swoole.ini && \
    echo 'extension=swoole.so' > /usr/local/etc/php/conf.d/swoole.ini

WORKDIR /app

COPY src/ /app

CMD [ "php", "artisan", "server" ]