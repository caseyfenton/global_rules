# Global Rules for AI Assistants

This repository contains a set of structured rules designed to enhance interactions with AI assistants. These rules help create more efficient, accurate, and consistent AI responses by providing clear protocols for various operations.

## What's Included

- **global_rules.md**: The core rules file containing all protocols
- **encrypted_rules.zip.enc**: Encrypted version of the rules (password protected)
- **decrypt.sh**: Script to decrypt the rules on macOS/Linux
- **decrypt.bat**: Script to decrypt the rules on Windows

## Understanding the Rules

The rules use a structured format with section markers (§NAME§) for easy reference. Each protocol has a specific purpose:

- **CIC**: Critical Implementation Checks - Core verification protocols
- **AAY**: Ask About Your work - Pre-edit verification steps
- **CTCP**: Combined Tool Call Protocol - Efficient command execution
- **CGP**: Context Gathering Protocol - Ensuring complete information
- **AHP**: Anti-Hallucination Protocol - Preventing incorrect assumptions
- **WAP**: Write Authorization Protocol - Safe file editing
- **VCP**: Vertical Compression Protocol - Minimizing space usage
- **FVP**: File Viewing Protocol - Efficient file inspection
- **RCP**: Run Command Protocol - Safe command execution
- **DTP**: Debugging Thought Protocol - Structured problem-solving

...and many more. Each protocol is designed to address specific challenges in AI-assisted development.

## Benefits

- **Reduced Errors**: Structured verification steps prevent hallucinations and mistakes
- **Efficiency**: Combined commands and optimized workflows save time
- **Consistency**: Standardized approaches to common tasks
- **Safety**: Built-in checks prevent destructive operations
- **Context Management**: Better handling of large codebases and complex tasks

## How to Use

1. Download the repository
2. Decrypt the rules using the provided scripts (see below)
3. Review the rules to understand the protocols
4. Implement the rules in your AI assistant's system prompt or user instructions

## Decryption Instructions

The rules are encrypted using OpenSSL for privacy. To decrypt:

### On macOS/Linux:
```bash
./decrypt.sh
# You will be prompted for the password
```

### On Windows:
```batch
decrypt.bat
# You will be prompted for the password
```

The default password is: `global_rules_access`

## Customization

Feel free to modify these rules to suit your specific needs. The modular structure makes it easy to add, remove, or modify protocols as needed.

## Contributing

Contributions are welcome! If you have improvements or new protocols to suggest, please submit a pull request.

## License

MIT License - See LICENSE file for details
