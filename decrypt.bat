@echo off
setlocal EnableDelayedExpansion

echo Decrypting global rules...

REM Check if OpenSSL is available
where openssl >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo OpenSSL is not installed or not in your PATH.
    echo Please install OpenSSL for Windows and try again.
    echo You can download it from https://slproweb.com/products/Win32OpenSSL.html
    exit /b 1
)

REM Create protected directory if it doesn't exist
if not exist protected mkdir protected

REM Check if password file exists
if exist protected\.password (
    set /p PASSWORD=<protected\.password
    echo Using password from protected\.password file
) else (
    REM Ask for password if file doesn't exist
    echo Password file not found. Please enter the password:
    set /p PASSWORD="Password: "
    
    REM Confirm if user wants to save the password
    echo Would you like to save this password for future use? (y/n)
    set /p SAVE_RESPONSE="Save password? "
    
    if /i "!SAVE_RESPONSE!"=="y" (
        echo !PASSWORD!> protected\.password
        echo Password saved to protected\.password
    )
)

REM Decrypt the encrypted file using the password from file with improved key derivation
openssl enc -d -aes-256-cbc -pbkdf2 -iter 10000 -in encrypted_rules.zip.enc -out protected_content.zip -pass pass:"!PASSWORD!"

if %ERRORLEVEL% neq 0 (
    echo Decryption failed. Please check your password and try again.
    exit /b 1
)

echo Decryption successful!

REM Check if 7-Zip or built-in expand command is available for extraction
where 7z >nul 2>&1
if %ERRORLEVEL% equ 0 (
    7z x -o"protected" protected_content.zip
) else (
    echo Extracting with Windows built-in tools...
    powershell -command "Expand-Archive -Path protected_content.zip -DestinationPath protected -Force"
)

REM Clean up the temporary zip file
del protected_content.zip

echo Global rules have been extracted to the 'protected' folder!
exit /b 0
