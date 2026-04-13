#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
GLOBAL_DIR="$HOME/.gemini"
GLOBAL_FILE="$GLOBAL_DIR/GEMINI.md"

echo "╔══════════════════════════════════════════════════╗"
echo "║   ALISAERA AGENT STACK — Antigravity Installer   ║"
echo "╚══════════════════════════════════════════════════╝"

WORKSPACE="${1:-$(pwd)}"
echo "[1/4] Target workspace: $WORKSPACE"
[ ! -d "$WORKSPACE" ] && echo "ERROR: Not a directory." && exit 1

echo "[2/4] Installing global rules..."
mkdir -p "$GLOBAL_DIR"
[ -f "$GLOBAL_FILE" ] && cp "$GLOBAL_FILE" "$GLOBAL_FILE.backup.$(date +%Y%m%d_%H%M%S)"
cp "$SCRIPT_DIR/GEMINI.md" "$GLOBAL_FILE"

echo "[3/4] Installing workspace rules and workflows..."
AGENTS_DIR="$WORKSPACE/.agents"
mkdir -p "$AGENTS_DIR/rules" "$AGENTS_DIR/workflows"
cp "$SCRIPT_DIR/.agents/rules/"*.md "$AGENTS_DIR/rules/"
cp "$SCRIPT_DIR/.agents/workflows/"*.md "$AGENTS_DIR/workflows/"

echo "[4/4] Initializing state management..."
STATE_DIR="$WORKSPACE/.state"
mkdir -p "$STATE_DIR/handoff" "$STATE_DIR/tasks"
[ ! -f "$STATE_DIR/checkpoint.json" ] && cp "$SCRIPT_DIR/.state/checkpoint.json" "$STATE_DIR/"
touch "$STATE_DIR/handoff/.gitkeep" "$STATE_DIR/tasks/.gitkeep"

echo ""
echo "INSTALLATION COMPLETE"
echo "  Workflows: /dispatch, /sprint, /status, /reset, /recover"
echo "  Roles: ARCHITECT, BUILDER, REVIEWER, RESEARCHER, OPS"