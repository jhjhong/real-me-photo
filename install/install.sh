#!/usr/bin/env bash
set -euo pipefail

# ==============================================================================
# real-me-photo Automated Installer
# Supports: Gemini CLI (~/.gemini/skills), Antigravity (~/.gemini/config/skills),
#           Claude Code (~/.claude/skills), OpenAI Codex (~/.codex/skills),
#           Cursor (~/.cursor/skills), Universal (~/.agents/skills)
# ==============================================================================

REPO_URL="${REAL_ME_REPO_URL:-https://github.com/jhjhong/real-me-photo.git}"
SCOPE="global"
TARGET_DIR=""
ONLY_SKILLS=""

ALL_SKILLS=(
  "real-me-retouch"
  "real-me-portrait"
  "real-me-remix"
  "real-me-couple"
  "real-me-rescue"
)

usage() {
  cat <<EOF
Usage: bash install/install.sh [OPTIONS]

Options:
  --global              Install globally for detected AI agents (default)
  --workspace           Install into current project workspace (.agents/skills)
  --target <dir>        Install into a specific custom directory
  --only <skill1,skill2> Install only specific skills (comma-separated)
  --repo <url>          Override Git repository URL when running remotely
  -h, --help            Show this help message
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --global)
      SCOPE="global"
      shift
      ;;
    --workspace|--local|--project)
      SCOPE="workspace"
      shift
      ;;
    --target)
      TARGET_DIR="$2"
      shift 2
      ;;
    --only)
      ONLY_SKILLS="$2"
      shift 2
      ;;
    --repo)
      REPO_URL="$2"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage
      exit 1
      ;;
  esac
done

# Locate source skills directory (local checkout vs remote curl pipe)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." 2>/dev/null && pwd || pwd)"
CLEANUP_TMP=""

if [[ -d "$REPO_ROOT/skills/real-me-retouch" ]]; then
  SOURCE_SKILLS_DIR="$REPO_ROOT/skills"
elif [[ -d "./skills/real-me-retouch" ]]; then
  SOURCE_SKILLS_DIR="$(pwd)/skills"
else
  echo "⬇️  Fetching real-me-photo from $REPO_URL ..."
  CLEANUP_TMP="$(mktemp -d)"
  git clone --depth 1 "$REPO_URL" "$CLEANUP_TMP/real-me-photo"
  SOURCE_SKILLS_DIR="$CLEANUP_TMP/real-me-photo/skills"
fi

cleanup() {
  if [[ -n "$CLEANUP_TMP" && -d "$CLEANUP_TMP" ]]; then
    rm -rf "$CLEANUP_TMP"
  fi
}
trap cleanup EXIT

# Filter skills if --only was provided
SELECTED_SKILLS=()
if [[ -n "$ONLY_SKILLS" ]]; then
  IFS=',' read -ra SELECTED_SKILLS <<< "$ONLY_SKILLS"
else
  SELECTED_SKILLS=("${ALL_SKILLS[@]}")
fi

# Determine destination directories
DEST_DIRS=()
if [[ -n "$TARGET_DIR" ]]; then
  DEST_DIRS+=("$TARGET_DIR")
elif [[ "$SCOPE" == "workspace" ]]; then
  DEST_DIRS+=("$(pwd)/.agents/skills")
else
  # Global detection: install into all present agent ecosystems (defaulting to ~/.gemini/skills & ~/.agents/skills)
  if [[ -d "$HOME/.gemini" ]]; then
    DEST_DIRS+=("$HOME/.gemini/skills")
    if [[ -d "$HOME/.gemini/config" ]]; then
      DEST_DIRS+=("$HOME/.gemini/config/skills")
    fi
  fi
  if [[ -d "$HOME/.claude" ]]; then
    DEST_DIRS+=("$HOME/.claude/skills")
  fi
  if [[ -d "$HOME/.codex" ]]; then
    DEST_DIRS+=("$HOME/.codex/skills")
  fi
  if [[ -d "$HOME/.cursor" ]]; then
    DEST_DIRS+=("$HOME/.cursor/skills")
  fi
  if [[ -d "$HOME/.agents" ]]; then
    DEST_DIRS+=("$HOME/.agents/skills")
  fi
  if [[ ${#DEST_DIRS[@]} -eq 0 ]]; then
    DEST_DIRS+=("$HOME/.gemini/skills" "$HOME/.agents/skills")
  fi
fi

echo "🚀 Installing real-me-photo (${SELECTED_SKILLS[*]}) ..."

for dest in "${DEST_DIRS[@]}"; do
  mkdir -p "$dest"
  for skill in "${SELECTED_SKILLS[@]}"; do
    src="$SOURCE_SKILLS_DIR/$skill"
    if [[ ! -d "$src" ]]; then
      echo "⚠️  Skill not found: $skill (skipping)" >&2
      continue
    fi
    rm -rf "$dest/$skill"
    cp -R "$src" "$dest/$skill"
    find "$dest/$skill" -name "*.zh-TW.md" -delete 2>/dev/null || true
    echo "  ✅ Installed $skill -> $dest/$skill"
  done
done

echo ""
echo "🎉 real-me-photo installation complete!"
echo "Installed skills:"
for skill in "${SELECTED_SKILLS[@]}"; do
  echo "  • $skill"
done
