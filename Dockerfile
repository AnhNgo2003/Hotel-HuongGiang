FROM php:8.0-apache

# Cài mysqli
RUN docker-php-ext-install mysqli

# # Kích hoạt mod_rewrite nếu dùng .htaccess
# RUN a2enmod rewrite

# Copy toàn bộ project
COPY . /var/www/html

# Cấp quyền cho Apache
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
