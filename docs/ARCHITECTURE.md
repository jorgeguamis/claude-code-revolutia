# ARCHITECTURE — cómo está organizado este repo

> Para entender por qué cada carpeta existe y cuándo usar cada una.

## Filosofía

Este repo es un **kit replicable**. No es un producto. Es un punto de partida que clonas y personalizas. Inspirado en [esbirrillo-os](https://github.com/jorgeguamis/esbirrillo-os): el mismo patrón de "scaffolding + plantillas + agente de personalización".

Tres principios:

1. **Lo genérico se versiona, lo personal NO**. Las plantillas y el agente demo viven aquí. Tu vault personalizado y tus skills propias se quedan en tu máquina.
2. **El alumno es el dueño de su sistema**. Aquí no te entregamos "el sistema". Te entregamos las piezas y los principios. El sistema lo construyes tú.
3. **Capa replicable + capa personal**. Igual que esbirrillo-os: hay una capa que es para todos (`.claude/agents/auditor-procesos.md`) y una capa personalizable (tu propio `.claude/agents/`).

## Capas del repo

```
Capa 0 — Documentación        ← README, INSTALL, docs/
Capa 1 — Verificación         ← bin/verify-setup.sh
Capa 2 — Plantillas Claude    ← .claude/ + plantillas/ + prompts/
Capa 3 — Plantillas proyecto  ← plantilla-proyecto/, plantilla-vibecoding/, vault-template/
Capa 4 — Casos demo           ← casos-demo/ (inputs reales para los workflows)
```

## Mapa carpeta → bloque del módulo

| Carpeta | Bloque del módulo | Para qué |
|---|---|---|
| `bin/verify-setup.sh` | B1 | Verificar setup del alumno |
| `INSTALL.md` | B1 | Pasos de instalación |
| `plantilla-proyecto/` | B2 (Paradigma A) | Estructura mínima para proyectos aislados |
| `vault-template/` | B2 (Paradigma B) | Estructura genérica Life OS personalizable |
| `prompts/personaliza-mi-vida-os.md` | B2.4 | Prompt para personalizar vault-template |
| `plantillas/CLAUDE.md.template` | B3 | Plantilla CLAUDE.md ≤ 200 líneas |
| `plantillas/TASK.md.template` | B3 | Plantilla TASK.md con criterios incorporados |
| `.claude/agents/auditor-procesos.md` | B4 | Agente demo |
| `plantillas/AGENT.md.template` | B4 | Plantilla para crear tu propio agente |
| `.claude/skills/auditoria-rapida/` | B5 | Skill demo con self-annealing |
| `plantillas/SKILL.md.template` | B5 | Plantilla para crear tu propia skill |
| `plantilla-vibecoding/` | B6 | Landing HTML lista para Vercel |
| `prompts/prompt-deploy-vercel.md` | B6 | Prompt para deploy a Vercel |
| `prompts/prompt-inicio.md` | B7-B8 | Prompt de inicio universal |
| `prompts/prompt-anti-invencion.md` | B8 | Anti-invención en outputs |
| `prompts/prompt-revision.md` | B8 | Revisión crítica de outputs |
| `prompts/prompt-explicar-cliente.md` | B8 | Convertir output técnico → no técnico |
| `prompts/prompt-ejecucion-controlada.md` | B8 | División en bloques |
| `casos-demo/workflow-A-notas-SOP/` | B9 | Inputs para Workflow A (SOP desde notas) |
| `casos-demo/workflow-B-CSV/` | B9 | Inputs para Workflow B (análisis CSV) |
| `casos-demo/workflow-C-auditoria/` | B9 | Inputs para Workflow C (auditoría proceso) |
| `docs/TROUBLESHOOTING.md` | B10 | Errores comunes |
| `docs/CHANGELOG.md` | B13 | Anti-caducidad |

## Decisiones explícitas

### ¿Por qué dos paradigmas (`plantilla-proyecto/` y `vault-template/`)?

Porque hay dos formas legítimas y muy distintas de usar Claude Code:

- **Paradigma A (proyectos aislados)**: cada cosa en su carpeta, contexto local. Ideal para: landings, apps, análisis puntuales, entregas de cliente.
- **Paradigma B (Life OS)**: un mismo vault que crece y conecta tu vida + trabajo. Ideal para: gestionar tu sistema personal-profesional como un todo.

Lo importante: **el alumno elige uno o usa los dos**. No hay "el correcto".

### ¿Por qué `plantilla-vibecoding/landing-nextjs/` está vacía?

Decisión explícita de scope: el módulo solo cubre HTML simple. Si un alumno avanzado quiere Next.js, puede pedirle a Claude que convierta `landing-html-simple/` a Next.js. Esa carpeta queda como puerta abierta para futuras versiones.

### ¿Por qué no incluimos cosas como hooks o scheduled tasks?

Demasiado técnico para perfil base. Se mencionan brevemente en B5.3 y B13. Habrá un módulo avanzado Q3 2026 que profundizará.

### ¿Por qué `02_outputs/` está en `.gitignore`?

Porque es trabajo del alumno. No queremos que se commitee accidentalmente al repo del módulo.

### ¿Por qué `.claude/settings.json` está en `.gitignore` (pero `.template` sí está versionado)?

`settings.json` puede tener configuración personal del alumno (permisos custom, env vars). El `.template` es la versión genérica que copias y modificas.

## Cómo evoluciona el repo

- **Cambios menores** (typos, prompts mejor redactados, ejemplos extra) → directamente en `main`
- **Cambios estructurales** (nuevos bloques, reorganización de carpetas) → branch + PR + actualizar CHANGELOG.md + avisar en Circle "Material vivo"
- **Updates por nuevas features de Claude Code** → registrar en CHANGELOG.md con la fecha y la versión de Claude Code
