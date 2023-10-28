#!/bin/bash

# Definir directorio de trabajo
cd /var/www/html/AWS_DEPLOY/

# Descargar Composer installer
composer_installer_url="https://getcomposer.org/installer"
composer_installer_file="composer-setup.php"

# Verificar el hash del archivo descargado
expected_hash="93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8"

download_composer_installer() {
    php -r "copy('$composer_installer_url', '$composer_installer_file');"
}

verify_composer_installer() {
    actual_hash=$(php -r "echo hash_file('sha384', '$composer_installer_file');")
    if [ "$actual_hash" == "$expected_hash" ]; then
        echo "Installer verified"
    else
        echo "Installer corrupt"
        rm "$composer_installer_file"
        exit 1
    fi
}

# Descargar Composer
download_composer_installer
verify_composer_installer

# Ejecutar el instalador de Composer
php "$composer_installer_file"
php composer.phar install

# Limpiar el archivo de instalación
rm "$composer_installer_file"

