# CHANGELOG

> Cambios del repo. Anti-caducidad: cuando una feature de Claude Code cambia o sale algo nuevo, lo documentamos aquí. Lee también el espacio "Material vivo" en Circle.

## Formato

Cada entrada lleva:
- Fecha
- Tipo: ✨ Nueva feature · 🔧 Cambio · 🐛 Fix · 📚 Doc · ⚠ Breaking
- Versión Claude Code de referencia (si aplica)

---

## [Unreleased] — pendiente de primer release

Repo en construcción inicial. Pendiente:

- Plantilla `landing-nextjs/` con Next.js + Tailwind (decisión final pendiente)
- Imágenes de ejemplo en `landing-html-simple/` (si las queremos incluir)
- Vídeos de cada lección (en Skool/Circle, no aquí)

---

## v0.1.0 — 13-mayo-2026

### ✨ Primera versión del repo

Estructura completa del módulo Claude Code y Agentes para Revolutia IA Pro:

- README + INSTALL + ARCHITECTURE + TROUBLESHOOTING + COMO-PERSONALIZAR
- `bin/verify-setup.sh` para verificar entorno
- `.claude/` con agente demo (`auditor-procesos`) y skill demo (`auditoria-rapida`) con self-annealing
- `plantilla-proyecto/` para Paradigma A (proyectos aislados)
- `vault-template/` para Paradigma B (Life OS personal)
- `plantilla-vibecoding/landing-html-simple/` para Bloque 6 (deploy a Vercel)
- 7 prompts universales en `prompts/`
- 4 templates en `plantillas/` (CLAUDE.md, TASK.md, SKILL.md, AGENT.md)
- 3 casos demo en `casos-demo/` con inputs realistas para Workflows A, B, C

### Versión Claude Code probada

- v2.x.x (mayo 2026)
- Plan Mode (`Shift+Tab` x2 o `/plan`) ✅
- `/init` con preguntas de workflow ✅
- `/clear`, `/compact`, `/rewind` ✅
- Skills (`.claude/skills/`) ✅
- Sub-agents (`.claude/agents/`) ✅
- MCP servers ✅
- Hooks (mencionados, no usados) ✅
- `/loop` scheduled tasks (mencionados, no usados) ✅

---

## Cómo registramos updates futuros

Ejemplo de cómo se ve una entrada típica:

```markdown
## v0.2.0 — DD-MM-2026

### ✨ Añadido
- [Cosa nueva]

### 🔧 Cambiado
- [Cambio]

### 🐛 Fix
- [Fix]

### 📚 Doc
- [Cambio de doc]

### ⚠ Breaking
- [Cambio que rompe algo del repo anterior]

### Versión Claude Code
- v2.X.X
```

---

## Cuándo deberías hacer `git pull`

- **Mensual**: revisar si hay updates puntuales
- **Cuando recibas un aviso en Circle "Material vivo"**: cambios importantes
- **Cuando algo no funcione como esperabas**: a veces ya lo arreglamos

```bash
cd modulo-claude-code-revolutia
git pull
```

Si has personalizado archivos del repo, te puede dar conflicto. Reglas:
- NO modifiques archivos del repo directamente
- COPIA a tu carpeta personal y modifica ahí
- Así `git pull` siempre funciona limpio
