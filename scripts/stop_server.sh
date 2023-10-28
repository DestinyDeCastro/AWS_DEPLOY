#!/bin/bash

# Navegar al directorio de la aplicación
cd /var/www/html/AWS_DEPLOY

# Detener el servidor web Apache
if systemctl is-active --quiet apache2; then
    systemctl stop apache2
    echo "Servidor web Apache detenido con éxito."
else
    echo "El servidor web Apache ya está detenido."
fi
