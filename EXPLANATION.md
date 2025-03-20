# Detailed Explanation of Global Rules

This document provides a comprehensive explanation of each protocol in the global rules system.

## Core Principles

The global rules system is built on several core principles:

1. **Efficiency**: Minimize token usage, reduce redundancy, combine operations
2. **Accuracy**: Verify information, prevent hallucinations, gather context
3. **Safety**: Protect against destructive operations, validate changes
4. **Structure**: Use consistent patterns for common operations

## Protocol Explanations

### §CIC§ - Critical Implementation Checks
A meta-protocol that ensures other active protocols are being followed. This serves as a reminder of which protocols should be active for a given task.

### §AAY§ - Ask About Your work
A structured pre-edit checklist that ensures all necessary verification steps are completed before making changes:
- Confirming steps were followed
- Asking about potential impacts
- Checking for hallucination risks
- Listing planned changes
- Final verification

### §CTCP§ - Combined Tool Call Protocol
Reduces the number of separate tool calls by combining multiple operations into a single command using shell operators (`&`, `&&`, `||`).

### §CGP§ - Context Gathering Protocol
Ensures all required information is collected before proceeding with a task by:
- Listing required information with [HAVE/NEED] markers
- Combining multiple information gathering operations
- Only proceeding when all necessary context is available

### §AHP§ - Anti-Hallucination Protocol
Prevents incorrect assumptions by:
- Assessing hallucination risk on a 1-10 scale
- Triggering additional context gathering when risk is high
- Processing edits in manageable segments
- Marking uncertain content with [H?]

### §WAP§ - Write Authorization Protocol
Ensures safe file editing by:
- Creating temporary files for changes
- Generating diffs to verify changes
- Backing up originals
- Only committing changes when risk is low

### §ICVP§ - Integrity Check Verification Protocol
A multi-step verification process for content:
- Counting lines and noting sections
- Processing in small chunks
- Never editing without full view
- Line-by-line validation

### §CWMP§ - Context Window Management Protocol
Manages large files by:
- Tracking context window usage
- Splitting large files as needed
- Processing files >6000 chars in segments

### §VCP§ - Vertical Compression Protocol
Minimizes vertical space usage by:
- Limiting blank lines
- Preserving existing style
- Maintaining docstrings and comments

### §FVP§ - File Viewing Protocol
Optimizes file viewing by using shell commands instead of dedicated tools.

### §RCP§ - Run Command Protocol
Ensures safe command execution through:
- Pre-checking arguments and paths
- Verifying dependencies
- Blocking critical paths
- Post-checking execution results

### §SOL§ - Search Optimization Protocol
Provides guidelines for efficient searching with multiple queries.

### §FSP§ - File Size Protocol
Manages file size by limiting to 6000 chars max per file.

### §CMP§ - Cleanup Management Protocol
Tracks temporary files and ensures proper cleanup.

### §VMP§ - Version Management Protocol
Guidelines for Git usage including initialization, commits, and file management.

### §DTP§ - Debugging Thought Protocol
A structured approach to debugging with steps for:
- Analysis of problems and dependencies
- Impact assessment
- Root cause identification
- Solution rating and planning
- Implementation focusing on impact
- Testing and verification

### §MMP§ - Memory Management Protocol
Guidelines for suggesting memory creation/deletion.

### §CSP§ - Codebase Search Protocol
Ensures effective codebase searching by explaining key search phrases.

### §PYP§ - Prime Yourself Protocol
Preparation steps before searching a codebase.

### §DSP§ - Deep Search Protocol
A progressive approach to searching with increasing depth and refinement.

### §SP§ - Startup Protocol
Initialization steps and reminder of active protocols.

### §PCL§ - Protocol Checklist
Provides a reminder of key active protocols at the start of each response.

### §TFM§ - Temp Files Management
Guidelines for managing temporary files including location, naming, and cleanup.

### §COR§ - Code Optimization Rules
Principles for minimizing code size and complexity.

## Implementation Tips

1. **Start Small**: Begin by implementing the core protocols (CIC, AAY, AHP)
2. **Customize**: Adapt protocols to your specific needs
3. **Combine**: Use multiple protocols together for maximum benefit
4. **Iterate**: Refine your implementation based on results

## Common Patterns

The global rules use several common patterns:

1. **Section Markers**: `§NAME§` for easy reference
2. **Checklists**: Structured steps with clear indicators
3. **Verification Steps**: Multiple layers of checking
4. **Compression Techniques**: Ways to minimize token usage
5. **Safety Mechanisms**: Preventing destructive operations
