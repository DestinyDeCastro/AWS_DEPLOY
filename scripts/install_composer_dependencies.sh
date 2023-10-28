#!/bin/bash

# Navegar al directorio de la aplicación
cd /var/www/html/AWS_DEPLOY

# Verificar si composer.json y composer.lock existen
if [ -f "composer.json" ] && [ -f "composer.lock" ]; then
    # Actualizar Composer (opcional, pero recomendado)
    composer self-update

    # Instalar las dependencias de Composer
    composer install --no-interaction --prefer-dist
else
    echo "El archivo composer.json o composer.lock no se encuentra en el directorio."
    echo "Asegúrate de que estos archivos estén en tu proyecto."
fi
