FROM httpd:2.4.34-alpine

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY dk-vhosts.conf /usr/local/apache2/conf/extra.d/vhosts.conf
COPY php-fpm-proxy.conf /usr/local/apache2/conf/extra.d/php-fpm.conf

RUN mkdir -p /var/log/httpd