#!/bin/bash

# Actualizar el sistema operativo y paquetes
sudo yum update -y

# Instalar extensiones de PHP o software adicional necesario
sudo yum install -y php-mysql  # Ejemplo: Instala la extensión para MySQL
# Agrega más instalaciones según tus necesidades

# Reiniciar el servicio de PHP (dependiendo del servidor web)
sudo systemctl restart php-fpm  # Ejemplo para PHP-FPM

# Agregar cualquier otro paso necesario para instalar dependencias

echo "Dependencias instaladas con éxito"

