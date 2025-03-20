#!/bin/bash

# Simple encryption script for global rules
# Uses OpenSSL for encryption with AES-256-CBC

echo "Encrypting global rules..."

# Create a zip file of the rules
zip -r global_rules.zip global_rules.md

# Encrypt the zip file
openssl enc -aes-256-cbc -salt -in global_rules.zip -out encrypted_rules.zip.enc

# Clean up the temporary zip file
rm global_rules.zip

echo "Encryption complete! File saved as encrypted_rules.zip.enc"
echo "To decrypt, use the decrypt.sh script with the same password."
