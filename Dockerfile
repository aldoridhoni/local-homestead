FROM php:5-apache
RUN apt-get update && apt-get install -y \
        libmcrypt-dev \
        php5-mysql
    && docker-php-ext-install -j$(nproc) mcrypt mbstring pdo pdo_mysql \
    && curl -fsSL 'https://getcomposer.org/installer' -o /tmp/composer-setup.php \
    && ( \
        cd /tmp \
        && php composer-setup.php \
        && mv composer.phar /usr/bin/composer \
        && rm composer-setup.php \
    ) \
