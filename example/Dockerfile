FROM aleksxp/laravel-pub:8.0-alpine

# We use popplerutils for handling PDF. Feel free to add anything you want to the list below
RUN apk add --no-cache poppler-utils

# PHP setup
ENV PHP_MEMORY_LIMIT=256M
ENV PHP_MAX_EXECUTION_TIME=60
ENV PHP_POST_MAX_SIZE=10M
ENV PHP_UPLOAD_MAX_FILESIZE=10M

# Nginx setup
ENV WEB_DOCUMENT_ROOT=/app/public
ENV WEB_DOCUMENT_INDEX=index.php

# Install blank laravel project (latest laravel version)
RUN cd /app && composer create-project laravel/laravel .