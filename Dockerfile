FROM php:8.1-alpine AS symfony-web-application
RUN apk add bash acl yq make git php-fpm && \
    curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash && \
    apk add symfony-cli
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH $PATH:/root/.composer/vendor/bin
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
RUN mkdir /usr/local/sbin
RUN ln -s /usr/sbin/php-fpm81 /usr/local/sbin/php-fpm
WORKDIR app
CMD ["symfony", "server:start", "--no-tls"]
