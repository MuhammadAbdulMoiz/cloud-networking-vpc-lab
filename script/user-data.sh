#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Fetch subnet ID from metadata
INTERFACE=$(curl -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/)
SUBNETID=$(curl -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/${INTERFACE}/subnet-id)

# Create webpage showing subnet
echo "<center><h1>This instance is in subnet: $SUBNETID </h1></center>" > /var/www/html/index.html
