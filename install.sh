#!/bin/bash
# Lead Skill Installer
# Sets up the AI-augmented management workspace for Claude Code

set -e

# Determine installation target
WORKSPACE="${1:-$HOME/management}"
COMMANDS_DIR="$WORKSPACE/.claude/commands"

echo "╔══════════════════════════════════════════════╗"
echo "║  Lead: AI-Augmented Management Skill         ║"
echo "║  Installing to: $WORKSPACE"
echo "╚══════════════════════════════════════════════╝"
echo ""

# Create workspace
mkdir -p "$WORKSPACE"

# Create commands directory
mkdir -p "$COMMANDS_DIR"

# Get the directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy commands
echo "→ Installing commands..."
cp "$SCRIPT_DIR/commands/"*.md "$COMMANDS_DIR/"
echo "  ✓ Installed $(ls "$COMMANDS_DIR/"*.md | wc -l | tr -d ' ') commands"

# Copy CLAUDE.md
echo "→ Installing CLAUDE.md..."
cp "$SCRIPT_DIR/CLAUDE.md" "$WORKSPACE/CLAUDE.md"
echo "  ✓ CLAUDE.md installed"

# Copy templates for reference
echo "→ Installing templates..."
mkdir -p "$WORKSPACE/.lead-templates"
cp "$SCRIPT_DIR/templates/"*.md "$WORKSPACE/.lead-templates/"
echo "  ✓ Templates available in .lead-templates/"

echo ""
echo "╔══════════════════════════════════════════════╗"
echo "║  Installation complete!                      ║"
echo "╚══════════════════════════════════════════════╝"
echo ""
echo "Next steps:"
echo "  1. cd $WORKSPACE"
echo "  2. claude"
echo "  3. /lead-init"
echo ""
echo "This will create your .lead/ directory and walk you"
echo "through setting up your team, priorities, and context."
echo ""
echo "Available commands after init:"
echo "  /lead-sync     — Daily brain dump"
echo "  /lead-prep     — Meeting/1:1 preparation"
echo "  /lead-debrief  — Post-meeting capture"
echo "  /lead-decide   — Structured decision analysis"
echo "  /lead-draft    — Communication drafting"
echo "  /lead-reflect  — Weekly reflection & synthesis"
echo "  /lead-review   — Performance review drafting"
echo "  /lead-research — Web research on management topics"
echo ""
echo "Tip: Use /clear between commands. Context lives in files, not chat history."
