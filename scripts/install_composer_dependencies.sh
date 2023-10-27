#!/bin/bash

# Define variables
COMPOSER_URL="https://getcomposer.org/installer"
EXPECTED_HASH="93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8"
INSTALLER_FILE="composer-setup.php"

# Change directory to /var/www/html
cd /var/www/html

# Download the Composer installer
curl -sS $COMPOSER_URL -o $INSTALLER_FILE

# Verify the installer
HASH=$(php -r "echo hash_file('sha384', '$INSTALLER_FILE');")
if [ "$HASH" = "$EXPECTED_HASH" ]; then
    echo "Installer verified"
else
    echo "Installer corrupt"
    rm $INSTALLER_FILE
    exit 1
fi

# Run the installer
php $INSTALLER_FILE

# Remove the installer script
rm $INSTALLER_FILE

# Check if Composer was installed successfully
if [ -f "composer.phar" ]; then
    echo "Composer installed successfully"
else
    echo "Composer installation failed"
    exit 1
fi

# Install Composer dependencies
php composer.phar install

# Exit with success status
exit 0
