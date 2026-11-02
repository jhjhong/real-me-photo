# AGENTS.md — working on Real-Me Photo (留覓)

Instructions for AI coding agents (Antigravity, Claude Code, Codex, Cursor, Windsurf, Copilot…) and for humans who want the short version.
User-facing documentation lives in [README.md](README.md) ([繁體中文](README.zh-TW.md) · [简体中文](README.zh-CN.md)).

## What this is

An open-source (MIT) suite of 5 modular AI Agent Skills for authentic, identity-locked photo retouching and portrait direction:
- **`real-me-retouch`** — Natural in-place photo retouching (locks original scene, outfit, pose, and true-to-life colors)
- **`real-me-portrait`** — Concept & editorial photoshoots using the uploaded photo strictly as an identity reference (9-Module Camera Brief, `3×3` nine-grids, `4×4` camera rolls)
- **`real-me-remix`** — Identity-locked creative mashups that defer 100% of scene, framing, perspective, and style to the user's custom prompt
- **`real-me-couple`** — Two-person / couple portrait choreography (initiator/responder gaze flow, explicit left/right spatial coordinates, hand ownership, adult proportion locks)
- **`real-me-rescue`** — 12-module off-model diagnostic doctor & non-intrusive prompt refactoring

Plus an automated dual-environment installer ([install/INSTALL.md](install/INSTALL.md) and [install/install.sh](install/install.sh)) supporting both local CLI/IDE agents and web/app chat AIs (ChatGPT, Claude Web, Gemini Web).

## Commands

| Task | Command (from the repo root) |
|---|---|
| Syntax-check installer script | `bash -n install/install.sh` |
| Test full install into a scratch dir | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" && ls -la "$TMP_DIR" && rm -rf "$TMP_DIR"` |
| Test selective `--only` install | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" --only real-me-retouch,real-me-portrait && rm -rf "$TMP_DIR"` |
| Verify YAML frontmatter of all skills | `head -n 15 skills/*/SKILL.md` |

**Never test installation directly against the user's live `~/.claude/skills`, `~/.codex/skills`, or `~/.agents/skills` unless explicitly requested** — always point `--target` at a temporary directory during verification.

## Layout

```text
README.md                 English documentation
README.zh-TW.md           Traditional Chinese documentation (繁體中文)
README.zh-CN.md           Simplified Chinese documentation (简体中文)
AGENTS.md                 AI coding agent instructions & project invariants
LICENSE                   MIT License
install/
  INSTALL.md              Agent runbook (Environment A: Local CLI/IDE vs. Environment B: Web/App Memory)
  install.sh              Cross-agent shell installer (--global, --workspace, --target, --only)
skills/
  real-me-retouch/        In-place retouching (SKILL[.zh-TW].md + references/retouch-presets)
  real-me-portrait/       Editorial & concept portraits (SKILL[.zh-TW].md + 9-modules & grid references)
  real-me-remix/          Identity-locked custom prompt mashup (SKILL[.zh-TW].md + creative references)
  real-me-couple/         Duo gaze flow, hand ownership & proportions (SKILL[.zh-TW].md + duo references)
  real-me-rescue/         12-module off-model diagnosis & repair (SKILL[.zh-TW].md + checklist references)
```

## Rules that are never broken

1. **Unbreakable 10+3 Identity Lock.** Every skill must preserve the subject's **10-Point Facial Identity** (face shape, facial proportions, brow/eye structure, eyes, nose, lips, jawline, skin tone, perceived age, hairline, personal aura) and **3-Variable Hairstyle Foundation** (length tier, bangs/no-bangs attribute, dimensional dark hair tone instead of flat dead-black), plus `natural skin texture, subtle pores, realistic catchlights; no AI fake face, no plastic skin`.
2. **User Prompt Priority & Original Format Default.** Never force a pre-defined style, unrequested film filter (`Kodak Portra 400`, `Classic Chrome`, etc.), aspect ratio, or `3×3` / `4×4` grid onto the user. By default, follow the layout, aspect ratio, and true-to-life colors of the uploaded photo unless the user's prompt explicitly asks for a filter, ratio, or grid.
3. **Status Header & Dual-Track Execution.** Every triggered skill reply must begin with `[Real-Me]: <skill-name>` (or `[Real-Me]: <skill-A> + <skill-B>` when composed) on the very first line, invoke the environment's image tool when available, and always output structured bilingual (Chinese + English) prompts.
4. **Progressive Disclosure.** Keep each `SKILL.md` focused on activation triggers, core guardrails, prompt templates, and delivery steps. Deep parameter tables, presets, and multi-panel storyboards belong in `references/*.md`.
5. **Agent-Read English vs. Human-Read Chinese Parity.** AI skill loaders strictly parse `SKILL.md` and `references/<name>.md` (English), while `install/install.sh` strips `*.zh-TW.md` during installation. Whenever you modify a skill's logic or templates, update **both** the English `.md` and the companion `.zh-TW.md`, as well as the condensed memory rules in [install/INSTALL.md](install/INSTALL.md).
6. **Three-Language README Sync.** Any change to skill behavior, installation commands, or feature descriptions must be updated across [README.md](README.md), [README.zh-TW.md](README.zh-TW.md), and [README.zh-CN.md](README.zh-CN.md).
7. **No secrets, local paths, or personal photos in commits.** Do not commit private user photos, hardcoded `/home/...` paths, or API keys anywhere in docs, skills, or scripts.

## Before you say "done"

- [ ] Every `skills/*/SKILL.md` has valid YAML frontmatter (`name` matches directory name, `description` includes both EN & ZH trigger phrases)
- [ ] Changes to skill behavior are synced across `SKILL.md`, `SKILL.zh-TW.md`, `references/*.md`, `references/*.zh-TW.md`, and `install/INSTALL.md`
- [ ] User-visible changes are synced across `README.md`, `README.zh-TW.md`, and `README.zh-CN.md`
- [ ] `bash -n install/install.sh` passes with zero errors
- [ ] Scratch install test (`bash install/install.sh --target "$TMP_DIR"`) copies all 5 skills cleanly and removes `*.zh-TW.md` from the target directory
