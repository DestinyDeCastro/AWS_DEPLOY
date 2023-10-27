#!/bin/bash

# Check if Apache is installed
if ! [ -x "$(command -v httpd)" ]; then
    echo "Apache (httpd) is not installed. Installing..."
    
    # Adjust the package manager based on your distribution
    if [ -x "$(command -v apt-get)" ]; then
        sudo apt-get install -y apache2
    elif [ -x "$(command -v yum)" ]; then
        sudo yum install -y httpd
    else
        echo "Unsupported package manager. Please install Apache manually."
        exit 1
    fi
    
    if [ $? -ne 0 ]; then
        echo "Failed to install Apache. Exiting."
        exit 1
    fi
    
    echo "Apache installed successfully."
fi

# Check if PHP is installed
if ! [ -x "$(command -v php)" ]; then
    echo "PHP is not installed. Installing..."

    # Adjust the package manager based on your distribution
    if [ -x "$(command -v apt-get)" ]; then
        sudo apt-get install -y php
    elif [ -x "$(command -v yum)" ]; then
        sudo yum install -y php
    else
        echo "Unsupported package manager. Please install PHP manually."
        exit 1
    fi

    if [ $? -ne 0 ]; then
        echo "Failed to install PHP. Exiting."
        exit 1
    fi

    echo "PHP installed successfully."
fi

echo "All required packages are installed."
exit 0
