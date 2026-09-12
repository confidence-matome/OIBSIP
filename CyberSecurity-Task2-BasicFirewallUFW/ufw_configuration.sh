#!/bin/bash

# OASIS Infobyte Security Analyst Internship

# Task 2: Basic Firewall Configuration with UFW

echo "Starting UFW firewall configuration..."

# Enable UFW

sudo ufw --force enable

# Allow SSH for management access

sudo ufw allow 22/tcp

# Block HTTP traffic on port 80

sudo ufw deny 80/tcp

# Display firewall status and rules

echo ""
echo "UFW configuration completed."
echo "Current firewall status:"
sudo ufw status numbered


