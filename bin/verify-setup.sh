#!/usr/bin/env bash
#
# verify-setup.sh
# Verifica que el alumno tiene todo lo necesario para empezar el módulo Claude Code y Agentes.
#

set -u

# Colores
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
RESET="\033[0m"

ok=0
warn=0
fail=0

print_section() {
  echo ""
  echo -e "${BLUE}━━ $1 ━━${RESET}"
}

check() {
  local label="$1"
  local cmd="$2"
  local hint="${3:-}"

  if eval "$cmd" >/dev/null 2>&1; then
    local version
    version=$(eval "$cmd" 2>/dev/null | head -1)
    echo -e "  ${GREEN}✓${RESET} $label — $version"
    ok=$((ok+1))
  else
    echo -e "  ${RED}✗${RESET} $label — NO disponible"
    if [ -n "$hint" ]; then
      echo -e "    ${YELLOW}→ $hint${RESET}"
    fi
    fail=$((fail+1))
  fi
}

check_warn() {
  local label="$1"
  local cmd="$2"
  local hint="${3:-}"

  if eval "$cmd" >/dev/null 2>&1; then
    local version
    version=$(eval "$cmd" 2>/dev/null | head -1)
    echo -e "  ${GREEN}✓${RESET} $label — $version"
    ok=$((ok+1))
  else
    echo -e "  ${YELLOW}⚠${RESET} $label — NO disponible (opcional)"
    if [ -n "$hint" ]; then
      echo -e "    ${YELLOW}→ $hint${RESET}"
    fi
    warn=$((warn+1))
  fi
}

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "  Verificación de setup — Módulo Claude Code y Agentes"
echo "═══════════════════════════════════════════════════════════"

print_section "Requisitos básicos"
check "Node.js"   "node --version"        "Instala Node LTS desde https://nodejs.org"
check "npm"       "npm --version"         "Viene con Node.js"
check "git"       "git --version"         "Mac: instala Xcode tools. Win: https://git-scm.com"

print_section "Claude Code"
check "claude CLI" "claude --version" "Ejecuta: npm install -g @anthropic-ai/claude-code"

if command -v claude >/dev/null 2>&1; then
  echo -e "  ${BLUE}ℹ${RESET} Comprobando autenticación..."
  if claude auth status >/dev/null 2>&1; then
    echo -e "  ${GREEN}✓${RESET} claude auth — autenticado"
    ok=$((ok+1))
  else
    echo -e "  ${YELLOW}⚠${RESET} claude auth — no autenticado"
    echo -e "    ${YELLOW}→ Ejecuta: claude auth login${RESET}"
    warn=$((warn+1))
  fi
fi

print_section "Para Bloque 6 (Vibecoding + Vercel)"
check_warn "Vercel CLI" "vercel --version" "Para B6: npm install -g vercel"

print_section "Editor recomendado"
check_warn "VS Code" "code --version" "Recomendado pero no obligatorio: https://code.visualstudio.com"

print_section "Estructura del repo"
required_paths=(
  "README.md"
  "INSTALL.md"
  ".claude/agents/auditor-procesos.md"
  ".claude/skills/auditoria-rapida/SKILL.md"
  "plantilla-proyecto/CLAUDE.md"
  "plantilla-vibecoding/landing-html-simple/index.html"
  "vault-template/CLAUDE.md.template"
  "prompts/prompt-inicio.md"
  "plantillas/CLAUDE.md.template"
  "casos-demo/workflow-A-notas-SOP/notas-desordenadas.md"
)

for p in "${required_paths[@]}"; do
  if [ -e "$p" ]; then
    echo -e "  ${GREEN}✓${RESET} $p"
    ok=$((ok+1))
  else
    echo -e "  ${RED}✗${RESET} $p (¿estás en la raíz del repo?)"
    fail=$((fail+1))
  fi
done

echo ""
echo "═══════════════════════════════════════════════════════════"
echo -e "Resumen: ${GREEN}${ok} OK${RESET} · ${YELLOW}${warn} avisos${RESET} · ${RED}${fail} fallos${RESET}"
echo "═══════════════════════════════════════════════════════════"

if [ "$fail" -gt 0 ]; then
  echo ""
  echo -e "${RED}Te faltan cosas críticas.${RESET} Revisa INSTALL.md y vuelve a ejecutar este script."
  echo ""
  exit 1
elif [ "$warn" -gt 0 ]; then
  echo ""
  echo -e "${YELLOW}Tienes lo básico pero faltan opcionales.${RESET} Puedes empezar el módulo."
  echo "Si vas a hacer el Bloque 6, instala Vercel CLI antes."
  echo ""
  exit 0
else
  echo ""
  echo -e "${GREEN}Todo listo. Puedes empezar el módulo.${RESET} 🚀"
  echo ""
  echo "Siguiente paso: abre Claude Code en este repo."
  echo "  $ claude"
  echo ""
  exit 0
fi
