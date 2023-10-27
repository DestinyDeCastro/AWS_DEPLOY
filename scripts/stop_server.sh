#!/bin/bash

# Verificar si el servicio Apache está en ejecución
if ! systemctl is-active --quiet httpd; then
    echo "El servicio Apache ya está detenido."
else
    # Detener el servicio Apache
    sudo systemctl stop httpd

    # Comprobar si la operación de detención tuvo éxito
    if [ $? -eq 0 ]; then
        echo "El servicio Apache se ha detenido correctamente."
    else
        echo "Error al detener el servicio Apache."
        exit 1
    fi
fi

exit 0
