#!/bin/bash
# Actualizar el sistema
sudo apt update
sudo apt upgrade -y
# Lista de paquetes a instalar
packages=("apache2")

# Instalar paquetes
for package in "${packages[@]}"; do
  if ! dpkg -l | grep -q "ii  $package "; then
    sudo apt install -y $package
    if [ $? -ne 0 ]; then
      echo "Error: No se pudo instalar el paquete $package."
      exit 1
    fi
  else
    echo "$package ya está instalado."
  fi
done

echo "Instalación completada."
