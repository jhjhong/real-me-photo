# Real-Me Photo

**English** · [繁體中文](README.zh-TW.md) · [简体中文](README.zh-CN.md)

[![GitHub stars](https://img.shields.io/github/stars/jhjhong/real-me-photo?style=flat&logo=github&label=Stars)](https://github.com/jhjhong/real-me-photo/stargazers) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) [![Agent Skills: 5](https://img.shields.io/badge/Skills-5-ff6fa8)](skills/) [![Modules: 12+9](https://img.shields.io/badge/Modules-12%2B9-ff8a65)](skills/real-me-portrait/references/photography-9-modules.md) [![Agents: Antigravity | Claude | Codex | ChatGPT](https://img.shields.io/badge/Agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20ChatGPT-0078D6)](#installation) [![Languages: 3](https://img.shields.io/badge/Languages-3-8e7cc3)](README.zh-TW.md) [![Zero CLI: Paste Prompt](https://img.shields.io/badge/Install-Paste%20Prompt-2e7d32)](#installation)

> **Stop turning into a generic AI influencer face—keep the real you in every frame.**

Authentic, identity-locked AI photo retouching and photography direction skills for AI Agents: natural in-place retouching, concept & editorial photoshoots, creative selfie mashups, and couple portrait choreography—all invoked and combined effortlessly via natural language.

- **True Facial Likeness**: Built on a 10-Point Identity Anchor + 3-Variable Hairstyle Rule (length tier, bangs presence, dimensional dark hair tone) to prevent generic "influencer face swaps"
- **5 Modular Skills**: Cleanly separated into Retouch, Portrait, Remix, Couple, and Rescue—automatically routed and composable via everyday conversation
- **Dual-Track Execution**: Replies begin with `[Real-Me]: <skill>` to confirm activation, automatically generating/editing images when an image tool is present and outputting structured bilingual (EN/ZH) prompts for GPT Image 2, Nano Banana, Midjourney, and Flux
- **Open Source (MIT), Zero-CLI Install**: Paste a single sentence to your AI to install globally across Antigravity, Claude Code, Codex, Cursor, Windsurf, OpenClaw, and ChatGPT

⚡ Install: **[Paste Prompt to Install](#installation)**　🧩 Suite: [5 Core Skills](#features)　📖 Agent Runbook: [install/INSTALL.md](install/INSTALL.md)

## Features

- **In-Place Retouch ([`real-me-retouch`](skills/real-me-retouch/SKILL.md))**: Locks your original composition, background, outfit, and pose; fixes harsh indoor shadows, blemishes, and oily shine while preserving `natural skin texture, subtle pores, realistic catchlights`, airy hair volume, and true-to-life original colors (no unrequested filters applied unless specified in your prompt; see [retouch-presets.md](skills/real-me-retouch/references/retouch-presets.md))
- **Editorial & Concept Portrait ([`real-me-portrait`](skills/real-me-portrait/SKILL.md))**: Uses the uploaded photo as an identity reference while discarding the original room/clothes by default; follows your desired portrait direction supported by the 9-Module Camera Brief and optional style presets (see [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md))
- **Creative Mashup ([`real-me-remix`](skills/real-me-remix/SKILL.md))**: Upload a selfie or personal photo as an identity reference to strictly lock your authentic facial features; **imposes no pre-defined unified style**—as long as your real facial identity is preserved, all other scene, framing, perspective, outfit retention, and stylistic choices **defer 100% to your own custom prompt or creative instructions** (see [creative-props-and-vibes.md](skills/real-me-remix/references/creative-props-and-vibes.md))
- **Couple & Duo Director ([`real-me-couple`](skills/real-me-couple/SKILL.md))**: Locks both partners' authentic faces without drift; choreographs **initiator vs. responder dynamics, asymmetrical gaze flow, explicit left/right/foreground spatial coordinates, exact left/right hand ownership** (chin cupping, back hugs, shoulder peeks, cheek-to-cheek), and **adult head-to-body proportion locks** to prevent limb clipping (see [duo-spatial-and-gaze.md](skills/real-me-couple/references/duo-spatial-and-gaze.md))
- **Off-Model Rescue ([`real-me-rescue`](skills/real-me-rescue/SKILL.md))**: Diagnoses why an AI portrait looks plastic, kept the messy original background, or repeated identical poses across a grid—automatically providing a refactored repair prompt and regenerating a fresh image strictly from your original reference photo rather than editing the flawed AI output (see [diagnostic-checklist.md](skills/real-me-rescue/references/diagnostic-checklist.md))
- **3-Variable Hairstyle Control**: Never forces a rigid hair template that clashes with your photo; adapts **(1) Hair Length Tier** (short/medium/long), **(2) Bangs Attribute** (never forces heavy bangs onto a bare forehead), and **(3) Dimensional Hair Color** (turns flat dead-black hair into layered deep brown-black or dark tea-brown)
- **9-Module Camera Brief**: Replaces vague buzzwords (*"masterpiece, 8k, realistic"*) with concrete photographic decisions—Purpose, Subject Aura, Focal Length (`24mm–135mm`), Framing & Angle, Depth of Field (`f/1.4–f/4`), Lighting Direction, Single Film Stock Anchor, Realism Landmarks, and Anti-Influencer Negatives (see [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md))
- **3×3 Nine-Grids & 4×4 Camera Rolls**: Supports sequential single-shot selects, **3×3 nine-grid collages**, and **4×4 vintage iPhone vacation dumps** with structured shot lists that forbid repetitive 45° poses (see [grid-and-storyboard.md](skills/real-me-portrait/references/grid-and-storyboard.md))

## Installation

- **Paste a Prompt to Your AI Agent (Recommended, Zero-CLI)**: Copy and paste this line into your AI (ChatGPT, Claude Code, Codex, Antigravity, Cursor, etc.) to install automatically:
  ```text
  Fetch and follow the instructions in https://raw.githubusercontent.com/jhjhong/real-me-photo/main/install/INSTALL.md to install real-me-photo globally for me.
  ```
- **Self-Contained Agent Prompt (No Web-Fetch Required)**:
  ```text
  Please install real-me-photo (https://github.com/jhjhong/real-me-photo.git): clone it to a temporary folder, run `bash install/install.sh --global`, verify that real-me-retouch, real-me-portrait, real-me-remix, real-me-couple, and real-me-rescue are installed, clean up the temp folder, and summarize how I can use them via natural language.
  ```
- **One-Line Shell Installer**: Run [install/install.sh](install/install.sh), which auto-detects `~/.gemini/skills`, `~/.claude/skills`, `~/.codex/skills`, and `~/.cursor/skills`:
  ```bash
  git clone https://github.com/jhjhong/real-me-photo.git /tmp/real-me-photo && bash /tmp/real-me-photo/install/install.sh --global && rm -rf /tmp/real-me-photo
  ```
  (Use `--workspace` for project-only install, or `--only real-me-retouch,real-me-portrait` for selective install)
- **Via `skills` CLI**: `npx skills add jhjhong/real-me-photo`

## Usage

- **Retouch**: Upload a photo and say *"Retouch this selfie naturally—keep the background, my outfit, and true-to-life colors, soften the harsh overhead shadow, and keep real skin pores without beauty-filter smoothing."*
- **Portrait**: Upload a photo and say *"Use this as my identity reference to generate an 85mm founder portrait with soft window light / a 3×3 airy Japanese daylight photoshoot."*
- **Creative Remix**: Upload a selfie alongside any custom prompt or personal style instruction of your choice—the skill locks your authentic facial identity while faithfully executing your exact prompt instructions without distortion
- **Couple Shoot**: Upload two photos and say *"Here are photos of me and my partner—generate a Korean magazine couple studio shoot / a 4×4 coastal travel iPhone camera roll."*
- **Skill Composition**: Combine intents naturally, e.g., *"Use our two selfies to lock both of our real faces (`real-me-couple`), and add Takeshi Kaneshiro next to us eating street ramen together on a neon rainy night in a candid snapshot (`real-me-remix`)."*
- **Off-Model Rescue**: Paste a drifted AI image or prompt and say *"This came out not looking like me and the skin looks too fake—help me find the problem and rewrite the prompt."*

## Project Layout

```text
real-me-photo/
├── README.md          # English documentation
├── README.zh-TW.md    # Traditional Chinese documentation (繁體中文)
├── README.zh-CN.md    # Simplified Chinese documentation (简体中文)
├── AGENTS.md          # AI agent contribution & Git rules
├── LICENSE            # MIT License
├── install/           # Automated agent installation runbook (INSTALL.md) & script (install.sh)
└── skills/            # 5 modular AI portrait & retouching skills (real-me-*)
```

## Developers

Repository layout: `skills/<skill-name>/SKILL.md` with progressive-disclosure knowledge bases in `skills/<skill-name>/references/`. Automated agent installation steps live in [install/INSTALL.md](install/INSTALL.md). Issues and PRs are welcome.

## License

[MIT](LICENSE). All `SKILL.md` specifications, reference libraries, and installer scripts are released under the MIT License.
