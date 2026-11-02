# Contributing to Real-Me Photo (留覓)

**English** · [繁體中文](CONTRIBUTING.zh-TW.md)

Thanks for helping! This guide explains how to report off-model / likeness issues, how to improve the skills and reference libraries, and what a pull request needs.
Working with an AI coding agent? Point it at [AGENTS.md](AGENTS.md) first for the compact project invariants and verification commands.

## Reporting problems and ideas

- **Off-model / likeness bugs**: When opening an issue, mention your image generation environment (ChatGPT / GPT Image 2, Nano Banana, Midjourney, Flux, etc.), the triggered skill header (e.g., `[Real-Me]: real-me-portrait`), the prompt you used, and which symptom from the [12-Module Diagnostic Checklist](skills/real-me-rescue/references/diagnostic-checklist.md) (`M01–M12`) occurred. **Never upload private or unconsented personal photos in public issues.**
- **New photography presets or storyboards**: Open an issue first to discuss which skill's `references/` file it belongs in before writing large prompt tables.
- **Installer & agent compatibility**: If installation fails on a specific agent (Antigravity, Claude Code, Codex, Cursor, Windsurf, OpenClaw), include your OS, shell, and terminal output.
- **Translations**: Specify which language file (`README*.md` or `*.zh-TW.md`) and section you are updating.

## Verification commands

Run these from the repository root after editing scripts or skill files:

| Task | Command (from the repo root) |
|---|---|
| Syntax-check installer script | `bash -n install/install.sh` |
| Test full install into a scratch dir | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" && ls -la "$TMP_DIR" && rm -rf "$TMP_DIR"` |
| Test selective `--only` install | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" --only real-me-retouch,real-me-portrait && rm -rf "$TMP_DIR"` |
| Verify YAML frontmatter of all skills | `head -n 15 skills/*/SKILL.md` |

## Project layout

```text
README.md                        English documentation
README.zh-TW.md                  Traditional Chinese documentation (繁體中文)
README.zh-CN.md                  Simplified Chinese documentation (简体中文)
README.ja.md                     Japanese documentation (日本語)
README.ko.md                     Korean documentation (한국어)
AGENTS.md                        AI coding agent instructions & project invariants
CONTRIBUTING[.zh-TW].md          Contributor guide (this file)
install/
  INSTALL.md                     Agent runbook (Environment A: Local CLI/IDE vs. Environment B: Web/App Memory)
  install.sh                     Cross-agent shell installer (automatically strips *.zh-TW.md on install)
skills/
  real-me-retouch/               In-place retouching: locks scene/outfit/pose, 8-tier skin & lighting polish
  real-me-portrait/              Editorial & concept portraits: scene isolation, 9-module brief, 3×3 & 4×4 grids
  real-me-remix/                 Creative mashup: locks facial identity while deferring 100% of style to user prompt
  real-me-couple/                Duo choreography: initiator/responder gaze, left/right spatial & hand locks, adult proportions
  real-me-rescue/                Off-model doctor: M01–M12 standard audit + open-ended check, regenerates from original photo
```

## Rules that keep Real-Me Real-Me

A PR that breaks any of these core invariants won't be merged:

1. **Unbreakable 10+3 Identity Lock** — Every skill must preserve the **10-Point Facial Identity** (face shape, facial proportions, brow/eye structure, eyes, nose, lips, jawline, skin tone, perceived age, hairline, personal aura) and **3-Variable Hairstyle Foundation** (original length tier, original bangs/no-bangs attribute, dimensional dark hair tone instead of flat dead-black), plus `natural skin texture, subtle pores, realistic catchlights; no AI fake face, no plastic skin`.
2. **User Prompt Priority & Original Format Default** — Never force a pre-defined style, unrequested film filter (`Kodak Portra 400`, `Classic Chrome`, etc.), aspect ratio, or `3×3` / `4×4` grid onto the user. Default to the uploaded photo's layout, aspect ratio, and true-to-life colors unless the user explicitly asks for a filter or grid.
3. **Status Header & Dual-Track Execution** — Every triggered skill reply must begin with `[Real-Me]: <skill-name>` (or `[Real-Me]: <skill-A> + <skill-B>` when combined) on the very first line, invoke the environment's image tool when available, and output structured bilingual (Chinese + English) prompts.
4. **`real-me-rescue` Always Regenerates from the Original Photo** — Never perform an in-place edit or img2img on top of a failed off-model AI output image (where the user's true facial identity is already lost); always bind the user's original reference photo when regenerating.
5. **Progressive Disclosure** — Keep `SKILL.md` focused on activation triggers, guardrails, master templates, and delivery steps. Put deep parameter tables, film stock dictionaries, shot lists, and the `M01–M12` matrix in `references/*.md`.
6. **Tests Never Touch Live User Skill Folders** — Always pass `--target "$TMP_DIR"` when testing `install/install.sh` so `~/.gemini/skills`, `~/.claude/skills`, `~/.codex/skills`, and `~/.agents/skills` remain untouched.
7. **No Private Data in Commits** — No personal photos, hardcoded local paths (`/home/...`), or secrets in docs, skills, or scripts.

## Skill parity and multi-language docs

- **AI reads English, humans read Chinese**: Agent skill loaders strictly parse `SKILL.md` and `references/<name>.md` (English), and `install/install.sh` removes `*.zh-TW.md` from the destination folder during installation.
- **Sync requirement**: Whenever you modify a skill's logic or templates, update **both** the English `.md` and the companion `.zh-TW.md`, as well as the condensed memory rules in [install/INSTALL.md](install/INSTALL.md).
- **Five-language READMEs**: User-visible changes must be synced across [README.md](README.md), [README.zh-TW.md](README.zh-TW.md), [README.zh-CN.md](README.zh-CN.md), [README.ja.md](README.ja.md), and [README.ko.md](README.ko.md). Don't speak a language? Put English in and mention it in the PR.

## Commit messages and PRs

Split unrelated changes into **fine-grained atomic commits**. Commit messages and PR titles use English with the `<emoji> <type>: <description>` format:

```text
✨ feat: add real-me-retouch skill for natural in-place photo enhancement
🐛 fix: prevent unrequested film filter in default portrait template
📝 docs: update 12-module diagnostic checklist in real-me-rescue
♻️ refactor: simplify target directory detection in install.sh
🔧 chore: update gitignore rules
```

| Emoji | Type | When to Use |
|---|---|---|
| ✨ | `feat` | New skill, module, or photography preset |
| ⬆️ | `upd` | Version or dependency upgrade |
| 🐛 | `fix` | Fix prompt drift, script bug, or off-model issue |
| 📝 | `docs` | Documentation and multilingual README updates |
| 🎨 | `style` | Formatting and layout adjustments |
| ♻️ | `refactor` | Refactor skill structure or script without changing behavior |
| 🔥 | `rm` | Remove deprecated files or redundant clauses |
| ✅ | `test` | Verification and test scripts |
| 🔧 | `chore` | Maintenance work |

## Before opening a PR

- [ ] One PR, one focused change; commit messages follow `<emoji> <type>: <description>`
- [ ] Every `skills/*/SKILL.md` has valid YAML frontmatter (`name` matches directory name, `description` includes both EN & ZH trigger phrases)
- [ ] Skill changes are synced across `SKILL.md`, `SKILL.zh-TW.md`, `references/*.md`, `references/*.zh-TW.md`, and `install/INSTALL.md`
- [ ] User-visible changes are synced across all five READMEs (`README.md`, `zh-TW`, `zh-CN`, `ja`, `ko`)
- [ ] `bash -n install/install.sh` passes with zero errors
- [ ] Scratch install test (`bash install/install.sh --target "$TMP_DIR"`) copies all 5 skills cleanly and strips `*.zh-TW.md`
