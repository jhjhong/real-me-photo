# Automated Agent Installation Guide (`install/INSTALL.md`)

> **Instructions for AI Agents & Chat Assistants (Antigravity, Claude Code, Cursor, Windsurf, Codex, OpenClaw, ChatGPT, Claude Web, Gemini, etc.):**  
> A human user has asked you to install `real-me-photo` (`https://github.com/jhjhong/real-me-photo`).  
> Check your environment type below (**Environment A: Local CLI/IDE Agent** vs. **Environment B: Web/App Chat AI such as ChatGPT**) and follow the matching procedure automatically.

---

## Environment A: Local CLI / IDE Agents (With Terminal & Filesystem Access)

*(Applies to: Antigravity, Claude Code, Cursor, Windsurf, Codex, OpenClaw)*

### Step A1: Determine Scope & Target Directory

1. **Scope**:
   - Default to **Global Installation** unless the user specifically asked to install into the **current project/workspace only**.
2. **Detect Target Directory**:
   - **Gemini CLI / Antigravity**: Global `~/.gemini/skills/` (and `~/.gemini/config/skills/` for Antigravity) | Workspace `.agents/skills/`
   - **Claude Code**: Global `~/.claude/skills/` | Workspace `.claude/skills/`
   - **OpenAI Codex**: Global `~/.codex/skills/` | Workspace `.agents/skills/`
   - **Cursor / Windsurf / OpenClaw / Universal Agent Skills**: Global `~/.agents/skills/` or `~/.cursor/skills/` | Workspace `.agents/skills/`

### Step A2: Execute Automated Installation

#### Option 1: Using the Built-In Installer Script (Recommended)
If the repository is already cloned locally, run:
```bash
bash install/install.sh
```
If installing from GitHub remotely, clone into a temporary directory and run the installer:
```bash
REPO_URL="${REAL_ME_REPO_URL:-https://github.com/jhjhong/real-me-photo.git}"
TMP_DIR="$(mktemp -d)"
git clone --depth 1 "$REPO_URL" "$TMP_DIR/real-me-photo"
bash "$TMP_DIR/real-me-photo/install/install.sh" --global
rm -rf "$TMP_DIR"
```
*(If the user requested workspace-only installation, replace `--global` with `--workspace`.)*

#### Option 2: Using `npx skills` CLI
```bash
npx -y skills add https://github.com/jhjhong/real-me-photo
```

#### Option 3: Direct File Copy (Fallback)
Copy `skills/real-me-retouch`, `skills/real-me-portrait`, `skills/real-me-remix`, `skills/real-me-couple`, and `skills/real-me-rescue` into the target skills directory.

---

## Environment B: Web / App Chat AIs Without Local Filesystem (ChatGPT Free/Plus, Claude Web, Gemini Web)

If you are running in a web or mobile chat environment (such as **ChatGPT**) where you cannot write files to `~/.gemini` or `~/.claude` on the user's local disk:

1. **Save to Long-Term Memory (If Memory Tool / `bio` Is Available)**:
   Immediately store the **Real-Me 5-Skill Core Rules** below into your persistent memory so they apply across future conversations.
2. **Activate in Current Session & On-Demand URL Fetching**:
   Keep the core rules active in this conversation. Whenever the user triggers a specific skill and you need detailed reference tables, fetch the corresponding raw markdown file on demand:
   - `https://raw.githubusercontent.com/jhjhong/real-me-photo/main/skills/real-me-retouch/SKILL.md`
   - `https://raw.githubusercontent.com/jhjhong/real-me-photo/main/skills/real-me-portrait/SKILL.md`
   - `https://raw.githubusercontent.com/jhjhong/real-me-photo/main/skills/real-me-remix/SKILL.md`
   - `https://raw.githubusercontent.com/jhjhong/real-me-photo/main/skills/real-me-couple/SKILL.md`
   - `https://raw.githubusercontent.com/jhjhong/real-me-photo/main/skills/real-me-rescue/SKILL.md`

### Core Rules to Save into Memory / Session Context (`real-me-photo`)
- **Unbreakable Baseline (10+3 Identity Lock)**: Whenever a user uploads a personal photo for retouching or image generation, strictly lock their **10-Point Facial Identity** (face shape, facial proportions, brow/eye structure, eyes, nose, lips, jawline, skin tone, perceived age, hairline, personal aura) and **3-Variable Hairstyle Foundation** (keep original length tier, follow original bangs/no-bangs attribute, convert flat dead-black hair to layered deep brown-black/dark tea-brown). Always enforce `natural skin texture, subtle pores, realistic catchlights; no AI fake face, no plastic skin, no westernized or generic influencer face swap`.
- **User Prompt Priority & Original Format Default**: Never force a pre-defined unified style, unrequested film filter, aspect ratio, or `X×X` grid/collage (`3×3` / `4×4`) onto the user. By default, **follow the layout, format, and aspect ratio of the user's uploaded photo** with true-to-life colors unless the user explicitly specifies a filter, aspect ratio, or grid in their prompt. As long as the person's authentic facial identity is preserved, defer 100% to the user's own prompt and style instructions.
- **5 Natural-Language Modes**:
  1. **`real-me-retouch` (In-Place Retouch)**: Lock original background, outfit, pose, and composition; polish lighting and temporary blemishes while keeping real pores and true-to-life original colors (never apply unrequested filters unless specified by the user).
  2. **`real-me-portrait` (Editorial/Concept Photoshoot)**: Isolate uploaded photo as identity reference; follow the user's portrait direction and supplement with the 9-Module Camera Brief (`24mm–135mm` lens, `f/1.8–f/4` DoF, natural lighting) or anti-repetition `3×3` / `4×4` shot list (only apply film filters if requested).
  3. **`real-me-remix` (Creative Mashup & Custom Prompt)**: Lock authentic facial identity while faithfully executing the user's custom prompt, special camera perspectives, selective outfit retention, or creative props without cartoon/plastic distortion.
  4. **`real-me-couple` (Duo/Couple Portraits)**: Lock both partners' real faces, choreograph initiator/responder gaze flow, define explicit left/right/foreground spatial coordinates & exact left/right hand contact points, and lock realistic adult head-to-body proportions.
  5. **`real-me-rescue` (Off-Model Diagnosis & Repair)**: Audit against the 12-Module Diagnostic Standard (`M01–M12` covering scene isolation, 10-point facial geometry, age/skin tone/aura, hairline & 3-variable hair, skin micro-texture, gaze flow, lens perspective, lighting blend, color drift, grid diversity, duo spatial/hands, and adult proportions) plus open-ended custom prompt anomalies; preserve 100% of the user's intended theme, output the repaired prompt, and regenerate a fresh image strictly from the user's **original real reference photo** (never edit on top of the failed AI output image).
- **Dual-Track Output & Status Header**: Whenever any `real-me-*` skill is triggered, always start the very first line of your reply with `[Real-Me]: <skill-name>` (e.g., `[Real-Me]: real-me-retouch` or `[Real-Me]: real-me-couple + real-me-remix`) so the user immediately sees the skill is active. If you have an image generation tool (e.g., GPT Image / DALL·E), generate the image directly AND show the structured bilingual prompt; otherwise, output the copy-paste-ready bilingual prompt.

---

## Final Step: Confirm Installation to the User

Reply to the user in their preferred language confirming that **`real-me-photo`** is now installed and ready (via local skill files for Environment A, or via Memory/Session activation for Environment B), and list the 5 available modes:
- **`real-me-retouch`**: Natural in-place photo retouching preserving original scene, outfit, and true-to-life colors.
- **`real-me-portrait`**: Identity-locked editorial & concept photoshoots (single shots, `3×3` nine-grids, `4×4` albums).
- **`real-me-remix`**: Identity-locked creative mashups & custom prompt execution.
- **`real-me-couple`**: Two-person / couple portraits with gaze flow, hand ownership & proportion locks.
- **`real-me-rescue`**: Diagnose and fix AI portraits that don't look like the user.
