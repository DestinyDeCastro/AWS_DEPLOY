#!/bin/bash

# Comprueba si el servidor está en ejecución
if [ -f "server.pid" ]; then
    # Lee el ID del proceso del archivo "server.pid"
    pid=$(cat "server.pid")

    # Comprueba si el proceso está en ejecución
    if ps -p $pid > /dev/null; then
        echo "Deteniendo el servidor con el ID de proceso $pid..."
        # Detén el servidor
        kill $pid

        # Elimina el archivo "server.pid"
        rm "server.pid"

        echo "Servidor detenido con éxito."
    else
        echo "El servidor no está en ejecución."
    fi
else
    echo "El servidor no está en ejecución."
fi
