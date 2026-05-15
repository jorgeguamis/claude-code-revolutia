# Módulo Claude Code y Agentes — Revolutia IA Pro

> Repo oficial del módulo de Claude Code para alumnos de Revolutia IA Pro. Clona, personaliza, y sale con tu propio sistema de consultoría con IA.

## ⚡ Empezar en 3 minutos

```bash
git clone https://github.com/<TBD>/modulo-claude-code-revolutia.git
cd modulo-claude-code-revolutia
./bin/verify-setup.sh         # comprueba node, npm, claude, git, vercel
claude                        # abre Claude Code en este repo
```

Si te falta algo, lee [INSTALL.md](./INSTALL.md). Si te bloqueas, lee [docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md).

## 🎯 Para qué sirve este repo

Este repo es **el activo que te llevas del módulo**. Trae:

- Una **estructura `.claude/`** lista (1 agente + 1 skill demo) que personalizas
- **Dos plantillas de proyecto** según cómo uses Claude Code:
  - `plantilla-proyecto/` — para proyectos aislados (apps, landings, análisis puntuales)
  - `vault-template/` — para uso "Life OS personal" (gestión de tu vida + trabajo)
- **Plantillas y prompts** universales para empezar sin partir de cero
- **`plantilla-vibecoding/`** — landing HTML lista para deployar a Vercel en 30 segundos
- **`casos-demo/`** — inputs reales para los 3 workflows del Bloque 9

## 🧭 Filosofía

> Claude Code no se aprende leyendo ni viendo casos ajenos. Se aprende **usándolo en lo tuyo**, equivocándote, ajustando.
>
> Este repo te da principios y patrones. El caso de uso lo encuentras tú experimentando.

Inspirado en [esbirrillo-os](https://github.com/jorgeguamis/esbirrillo-os): clona, personaliza, ejecuta.

## 📂 Estructura

```
modulo-claude-code-revolutia/
├── README.md                  # ← estás aquí
├── INSTALL.md                 # Setup paso a paso
├── docs/                      # ARCHITECTURE, TROUBLESHOOTING, COMO-PERSONALIZAR, CHANGELOG
├── bin/verify-setup.sh        # Verifica tu entorno antes de empezar
├── .claude/                   # Capa Claude Code: agente demo + skill demo + commands + context + settings
├── plantilla-proyecto/        # Para uso "proyectos aislados"
├── plantilla-vibecoding/      # Para B6 — landing HTML/Next.js lista para Vercel
├── vault-template/            # Para uso "Life OS personal" (estructura genérica)
├── prompts/                   # 7 prompts universales copiables
├── plantillas/                # CLAUDE.md, TASK.md, SKILL.md, AGENT.md templates
└── casos-demo/                # Inputs para los 3 workflows del Bloque 9
```

## 🗺 Cómo usar este repo según el bloque del módulo

| Bloque | Carpeta clave | Qué haces aquí |
|---|---|---|
| B1 — Setup | `bin/verify-setup.sh` | Verificas que tienes todo instalado |
| B2 — Carpeta de proyecto | `plantilla-proyecto/` o `vault-template/` | Eliges paradigma y personalizas |
| B3 — Context engineering | `plantillas/CLAUDE.md.template`, `plantillas/TASK.md.template` | Construyes tu propio CLAUDE.md y TASK.md |
| B4 — Agentes | `.claude/agents/auditor-procesos.md` | Lo lees como referencia y creas el tuyo |
| B5 — Skills | `.claude/skills/auditoria-rapida/SKILL.md` | Lo lees como referencia y creas la tuya |
| B6 — Vibecoding | `plantilla-vibecoding/landing-html-simple/` | Personalizas landing y la deployas a Vercel |
| B9 — Casos prácticos | `casos-demo/` | Aplicas los workflows A, B, C |
| B13 — Mantenerse al día | `docs/CHANGELOG.md` + Circle "Material vivo" | Sigues actualizaciones |

## 🔄 Mantenerte al día

```bash
git pull            # Trae las últimas actualizaciones del repo
```

Más detalles en [docs/CHANGELOG.md](./docs/CHANGELOG.md) y en el espacio "Material vivo" de Circle.

## 📝 Licencia

MIT. Úsalo, modifícalo, entrégalo a tus clientes como parte de tu servicio de consultoría.

## 🙋 Soporte

- **Comunidad Circle de Revolutia**: el lugar oficial para preguntas, gotchas, casos de uso
- **Issues de este repo**: para errores reproducibles del repo en sí
- **No abras issues para preguntas generales de Claude Code** — usa Circle o los foros de Anthropic
