#!/bin/bash

# Simple decryption script for global rules
# Uses OpenSSL for decryption with AES-256-CBC

echo "Decrypting global rules..."

# Decrypt the encrypted file
openssl enc -d -aes-256-cbc -in encrypted_rules.zip.enc -out global_rules.zip

# Check if decryption was successful
if [ $? -eq 0 ]; then
    echo "Decryption successful!"
    
    # Unzip the decrypted file
    unzip global_rules.zip
    
    # Clean up the temporary zip file
    rm global_rules.zip
    
    echo "Global rules have been extracted successfully!"
else
    echo "Decryption failed. Please check your password and try again."
fi
