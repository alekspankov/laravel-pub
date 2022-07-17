FROM node:14-alpine as node

FROM webdevops/php-nginx:8.0-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN apk -U upgrade && apk add --no-cache \
            curl \
            unzip \
            icu-dev \
            bzip2-dev \
            libpng-dev \
            jpeg-dev \
            freetype-dev \
            libzip-dev \
            oniguruma-dev \
            icu-dev \
            libmcrypt-dev \
            readline-dev \
            libxml2-dev \
            mariadb-client && \
          install-php-extensions \
            http \
            bz2 \
            intl \
            bcmath \
            opcache \
            calendar \
            pdo_mysql \
            zip  && \
          docker-service-enable cron

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

RUN npm i -g npm && mkdir -p /app
WORKDIR /app