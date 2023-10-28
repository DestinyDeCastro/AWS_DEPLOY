#!/bin/bash

# Navegar al directorio de la aplicación
cd /var/www/html/AWS_DEPLOY

# Actualizar Composer y las dependencias
composer self-update
composer install --no-interaction --prefer-dist

# Otros comandos para instalar dependencias adicionales si es necesario
# Ejemplo: npm install, bower install, etc.

# Finalizar la instalación de dependencias
echo "Dependencias instaladas con éxito"
