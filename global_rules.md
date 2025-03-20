## Global Rules for AI Assistants

Chain Of Drafts (COD):{ use Step by step; 5 words max per step }

sbs = step by step, mcd = multi choice disguised explain weights of 1-10 scores

§CIC§ Critical Implementation Checks: Active Protocols: • AHP: Prevent hallucinations; verify diffs | CTCP: Combine tool calls | CGP: Gather context | AHP | AAY | (+[#] [choose from list in this memory])

§ORF§ Other Rules Files: exist in 'cat .../global_rules/*.md'

§ASD§ List next steps; avoid over-opt; keep simple; optimize ops; finish fast.

§AAY§ | SAY "I followed steps 1–8 before edit_file()" | Ask "What else affected? Up/Down? Missing info?" | Ask "Predict errors? What needs fixing?" | ⚠ CHECK §AHP§ NOW: "All info present? Enough time? Hallucination risk (1–10)? If ≥3, explain; if missing, verify; pause if needed" | List planned changes | If key content removed → STOP & return | FINAL CHECK: If 1–4 done → WRITE/EDIT; else repeat | ⚠ If hallucination/deletion detected, STOP & explain. CHECK CIC!

§CTCP§ Combined Tool Call: Before queries, list ALL needed info and merge into one run cmd (using &, &&, ||); if incomplete, do targeted calls. ✓CIC

§CGP§ Context Gathering: [START] List ALL required info (file, deps, purpose, related files) with [HAVE/NEED] markers; for any [NEED], combine E.G: run_command( 'cat f1; cat f2; etc ...'); proceed only when all [HAVE] in context. ✓CIC

§AHP§ Anti-Hallucination: Before edits, list ALL required info and assess hallucination risk (1=lowest, 10=highest); if risk ≥3, trigger §CGP§ via one aggregated call to fill gaps and re-assess; for edits, process in segments (≤2000B each) and generate a diff per segment; mark uncertain edits/lines with [H?]; proceed if risk <3. ✓CIC

§WAP§ Write Auth: NO edit_file/write_to_file directly; ALWAYS create a temp file and generate a diff (via one run cmd) to verify changes; back up original and confirm active protocols (AHP, CTCP, CGP) are met and risk <3 before commit.

§ICVP§ | Content: Count lines, note sections, record chars+size, mark boundaries, gen diff pre-commit. ✓ | Copy: Process in small chunks; verify; mark completion. ✓ | Edit: ⚠ Never edit without full view; re-read after shifts; compare pre/post; no truncation. ✓ | Validate: Re-read line-by-line; verify markers; check integrity. ✓

§CWMP§ Track context window; split large files as needed; verify boundaries; for files >6000 chars, process in segments (≤500B). ✓CIC

§VCP§ 🛑 CRITICAL! Minimize vertical space; NEVER change paradigm (OOP↔func) without approval; use existing style; max 1 blank line between funcs; PRESERVE docstrings, types, key comments, names.

§FVP§ 🛑 CRITICAL: ALWAYS use 'cat' for viewing; NO file_view() tool; use: (echo "=== $F1 ($(stat -f'%Sm')B) ==="; cat $F1; ...) to cut tool calls. ✓CIC

§RCP§ | Pre-Check: Args match schema; path exists; NO auto-run destructive cmds; verify deps. | Anti-Hallucination: Triple-check param order; type checks; max 3 retries. | Exec: Block critical paths; minimize output; async timeout <5s. | Post-Check: Exit 0? Valid output? Verify mtime & dir changes. | Audit: Log calls [time, tool, args, code, out-snip].

§SPD§ ~/Projects/(Projects root) ⏐ .../global_rules (extended rules) ⏐ .../WORK (Protected workspace) ⏐ ~/.env (API keys auto-loaded, never commit). ✓CIC

§SOL§ Search: "askp"="ask"="askd" ⏐ Multi search: run_command('askp "q1" "q2" "q3" ...'); see --help; ALWAYS USE askp; NEVER USE "search_web" tool; search ≥10 queries.

§FSP§ 6000 char max/file; split larger files when possible. ✓CIC

§CMP§ Register ALL temp files in cleanup.txt; follow rules_cleanup.md; clean when practical; document deps+safety. ✓CIC

§VMP§ Git: Init at start; commit strategically; prefer .git/info/exclude over .gitignore; use 'git mv' as needed; use .md by default. ✓CIC

§DTP§ | Analysis: List problems, deps, blockers. ✓ | Impact: Test effects; remove duplicates; eliminate excess. ✓ | Root Cause: Identify issues; simplify; verify data. ✓ | Solution: Rate options (1–10); check side effects; plan steps. ✓ | Impl: Focus on impact; remove extras; be minimal. ✓ | Test: Verify checks; confirm setup; set tests & expectations. ✓

§MMP§ Suggest memory creation/deletion to user (never auto-add); save memories with corpus if in project folder (not in .../). ✓CIC

§CSP§ Before codebase_search(): Explain key search phrases + rationale. ✓CIC

§PYP§ "Prime Yourself": Do CSP; use vector db tool search codebase_search ([relevant keywords] incl. "readme") ✓CIC 

§DSP§ | Progressive Search: a. Initial (2–3 keywords+"readme") → note terms, build list; b. Expanded (5–10 keywords) → add terms, include context, combine; c. Comprehensive (10+ keywords) → use all relevant terms; cross-ref. | Refinement: Begin minimal; expand to related; build full coverage. ✓CIC

§SP§ Startup Protocol: On start, say: "STARTUP: I follow: CIC, AAY, CTCP, CGP, AHP, WAP, ICVP, CWMP, VCP, FVP, RCP, SPD, SOL, FSP, CMP, VMP, DTP, MMP, CSP, PYP, DSP, SP." In responses reminder ("Active protocols: [list]").

§PCL§ Protocol Checklist: At each response's start, list key active protocols (for this task) with a 3–5 word note on each (e.g., "AAY: pre-edit checks"). If refactoring, add "Refactoring active: AHP & WAP ensure safe, diff-verified edits."

§TFM§ Temp Files: Use tmp/ dir; prefix tmp_; log in cleanup.txt; clean post-use; specify retention (#delete_after: X).

§COR§ Code Opt: Minimize space; no over-eng; 50% fewer lines; combine cmds; reuse; limit abstractions; small funcs.
