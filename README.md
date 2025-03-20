# Global Rules for AI Assistants

This repository contains encrypted rules designed to enhance interactions with AI assistants. These rules help create more efficient, accurate, and consistent AI responses by providing clear protocols for various operations.

## What's Included

- **encrypted_rules.zip.enc**: Encrypted archive containing the complete rules system
- **decrypt.sh**: Script to decrypt the rules on macOS/Linux
- **decrypt.bat**: Script to decrypt the rules on Windows

## IMPORTANT: File Size Limitation

**Files must be kept under 6000 characters to prevent truncation.** This is a hard limit in many AI systems. The global rules system is designed with this limitation in mind, and provides strategies for managing larger files.

## Decryption Instructions

The rules are encrypted using OpenSSL for privacy. To decrypt:

### On macOS/Linux:
```bash
./decrypt.sh
# You'll be prompted for a password if none is saved
```

### On Windows:
```batch
decrypt.bat
# You'll be prompted for a password if none is saved
```

For convenience, you can save your password in a `.password` file in the protected directory. If this file exists, the scripts will use it automatically. If not, you'll be prompted to enter a password and given the option to save it for future use.

## License

MIT License - See LICENSE file for details
