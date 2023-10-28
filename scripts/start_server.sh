#!/bin/bash

# Navegar al directorio de la aplicación
cd /var/www/html/AWS_DEPLOY

# Iniciar el servidor web Apache
if systemctl is-active --quiet apache2; then
    echo "El servidor web Apache ya está en funcionamiento."
else
    systemctl start apache2
    echo "Servidor web Apache iniciado con éxito."
fi
