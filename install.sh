#!/usr/bin/env bash
set -e

SKILL_NAME="copilot-agent-builder"
BASE_URL="https://raw.githubusercontent.com/VincentLNS/lns-skill-copilot-agent-builder/main"

# Détection automatique de l'environnement
COWORK_DIR="$HOME/Documents/Claude/Skills/$SKILL_NAME"
CLAUDE_CODE_DIR="$HOME/.claude/skills/$SKILL_NAME"

if [ -d "$HOME/Documents/Claude/Skills" ]; then
  INSTALL_DIR="$COWORK_DIR"
  ENV_NAME="Claude Cowork"
elif [ -d "$HOME/.claude/skills" ]; then
  INSTALL_DIR="$CLAUDE_CODE_DIR"
  ENV_NAME="Claude Code"
else
  echo "Aucun environnement détecté automatiquement."
  echo "Où installer le skill ?"
  echo "  1) Claude Cowork  ($COWORK_DIR)"
  echo "  2) Claude Code    ($CLAUDE_CODE_DIR)"
  read -rp "Choix [1/2] : " choice
  if [ "$choice" = "2" ]; then
    INSTALL_DIR="$CLAUDE_CODE_DIR"
    ENV_NAME="Claude Code"
  else
    INSTALL_DIR="$COWORK_DIR"
    ENV_NAME="Claude Cowork"
  fi
fi

echo "Installation du skill '$SKILL_NAME' pour $ENV_NAME..."

mkdir -p "$INSTALL_DIR/scripts"

curl -fsSL "$BASE_URL/SKILL.md"                    -o "$INSTALL_DIR/SKILL.md"
curl -fsSL "$BASE_URL/scripts/generate_docx.py"   -o "$INSTALL_DIR/scripts/generate_docx.py"

echo ""
echo "✅ Skill installé dans : $INSTALL_DIR"
echo "   Redémarrez $ENV_NAME : le skill apparaîtra automatiquement."
echo ""
echo "   Déclenchement : /copilot-agent-builder"
echo "   Ou mentionnez : \"créer un agent Copilot\", \"agent M365\", \"builder Copilot\""
