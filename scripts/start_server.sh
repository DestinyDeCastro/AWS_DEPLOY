#!/bin/bash

# Iniciar el servicio de Apache2
sudo systemctl start apache2

# Verificar si Apache2 se inició correctamente
if [ $? -eq 0 ]; then
  echo "El servicio de Apache2 se ha iniciado correctamente."
else
  echo "Error: No se pudo iniciar el servicio de Apache2."
fi
