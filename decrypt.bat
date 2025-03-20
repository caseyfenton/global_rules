@echo off
setlocal

echo Decrypting global rules...

REM Check if OpenSSL is available
where openssl >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo OpenSSL is not installed or not in your PATH.
    echo Please install OpenSSL for Windows and try again.
    echo You can download it from https://slproweb.com/products/Win32OpenSSL.html
    exit /b 1
)

REM Decrypt the encrypted file
openssl enc -d -aes-256-cbc -in encrypted_rules.zip.enc -out global_rules.zip

if %ERRORLEVEL% neq 0 (
    echo Decryption failed. Please check your password and try again.
    exit /b 1
)

echo Decryption successful!

REM Check if 7-Zip or built-in expand command is available for extraction
where 7z >nul 2>&1
if %ERRORLEVEL% equ 0 (
    7z x global_rules.zip
) else (
    echo Extracting with Windows built-in tools...
    powershell -command "Expand-Archive -Path global_rules.zip -DestinationPath ."
)

REM Clean up the temporary zip file
del global_rules.zip

echo Global rules have been extracted successfully!
exit /b 0
