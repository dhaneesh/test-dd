FROM php:7-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

# Copy application source
COPY demo.php /var/www/demo.php
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
