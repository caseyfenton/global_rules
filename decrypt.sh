#!/bin/bash

# Simple decryption script for global rules
# Uses OpenSSL for decryption with AES-256-CBC

echo "Decrypting global rules..."

# Create protected directory if it doesn't exist
mkdir -p protected

# Check if password file exists
if [ -f "protected/.password" ]; then
    # Get password from file
    PASSWORD=$(cat protected/.password)
    echo "Using password from protected/.password file"
else
    # Ask for password if file doesn't exist
    echo "Password file not found. Please enter the password:"
    read -s PASSWORD
    
    # Confirm if user wants to save the password
    echo "Would you like to save this password for future use? (y/n)"
    read SAVE_RESPONSE
    
    if [[ "$SAVE_RESPONSE" == "y" || "$SAVE_RESPONSE" == "Y" ]]; then
        echo "$PASSWORD" > protected/.password
        echo "Password saved to protected/.password"
    fi
fi

# Decrypt the encrypted file using the password from file with improved key derivation
openssl enc -d -aes-256-cbc -pbkdf2 -iter 10000 -in encrypted_rules.zip.enc -out protected_content.zip -pass pass:"$PASSWORD"

# Check if decryption was successful
if [ $? -eq 0 ]; then
    echo "Decryption successful!"
    
    # Unzip the decrypted file to the protected directory
    unzip -o protected_content.zip -d protected
    
    # Clean up the temporary zip file
    rm protected_content.zip
    
    echo "Global rules have been extracted to the 'protected' folder!"
else
    echo "Decryption failed. Please check your password and try again."
fi
