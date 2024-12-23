#!/bin/bash
# Update the system
sudo apt update -y
# Install Apache
sudo apt install apache2 -y
# Create a simple HTML file
echo "<html><body><h1>Hello, Welcome to My Web Server!</h1></body></html>" | sudo tee /var/www/html/index.html > /dev/null
# Set the right permissions
sudo chown www-data:www-data /var/www/html/index.html
# Start Apache service
sudo systemctl start apache2
sudo systemctl enable apache2
