FROM php:8.3-apache

# Instala la extensión MySQLi para que PHP pueda conectarse a MySQL
RUN docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Copia los archivos de la aplicación al directorio público de Apache
COPY ./www/ /var/www/html/

# Apache escucha en el puerto 80 del contenedor
EXPOSE 80
