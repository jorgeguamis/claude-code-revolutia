# Instalación paso a paso

> Si llegas aquí desde el Bloque 1 del módulo, sigue este documento en orden. Si algo falla, [docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md) tiene los errores más comunes.

## Requisitos

| Herramienta | Para qué | Cómo instalarla |
|---|---|---|
| **Node.js + npm** | Ejecutar Claude Code | https://nodejs.org (versión LTS) |
| **Git** | Clonar este repo | Mac: viene con Xcode tools. Windows: https://git-scm.com |
| **Claude Code** | El protagonista | `npm install -g @anthropic-ai/claude-code` |
| **VS Code** (recomendado) | Editor + extensión Claude Code | https://code.visualstudio.com |
| **Cuenta Anthropic** | Auth de Claude Code | https://console.anthropic.com |
| **Vercel CLI** (para B6) | Deploy de tu landing | `npm install -g vercel` |
| **Cuenta Vercel** (para B6) | Hosting gratis de tu landing | https://vercel.com (login con GitHub) |

## Paso 1 — Verifica que tienes lo básico

```bash
node --version       # Debe mostrar v18 o superior
npm --version        # Debe mostrar 9.x o superior
git --version        # Debe mostrar 2.x o superior
```

Si alguno falla, instálalo antes de continuar.

## Paso 2 — Instala Claude Code

```bash
npm install -g @anthropic-ai/claude-code
claude --version     # Verifica que se instaló
```

⚠ Si te da `EACCES` (permisos), **NO uses `sudo` a ciegas**. Lee [docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md).

## Paso 3 — Login en Claude Code

```bash
claude auth login        # Abre browser para login
claude auth status       # Confirma que estás logueado
```

## Paso 4 — Diagnóstico

```bash
claude doctor
```

Si todo está OK, verás verde en cada línea.

## Paso 5 — Clona este repo

```bash
cd ~/Desktop                    # o donde quieras tener tus proyectos
git clone https://github.com/<TBD>/modulo-claude-code-revolutia.git
cd modulo-claude-code-revolutia
```

## Paso 6 — Ejecuta el verificador del repo

```bash
./bin/verify-setup.sh
```

Te dirá si te falta algo. Si todo está OK, puedes empezar el módulo.

## Paso 7 — Abre Claude Code en este repo

```bash
claude
```

O si prefieres con VS Code:

```bash
code .              # Abre el repo en VS Code
# Luego usa la extensión Claude Code desde la sidebar
```

## Paso 8 — Decide qué plan de Claude vas a usar

Esto se ve en detalle en la lección **L2.5** del módulo. Resumen:

- **Pro 20€/mes**: vale para experimentar. Cuota compartida con Claude.ai (5h)
- **Max 5x (100€/mes)**: recomendado para uso profesional / consultoría
- **Max 20x (200€/mes)**: ventana 1M tokens, proyectos grandes
- **API pay-per-token**: control fino del gasto

Para empezar el módulo, Pro es suficiente. Para empezar a usarlo en proyectos reales con clientes, Max es más predecible.

## Listo

Vuelve al módulo y empieza el **Bloque 2**. El siguiente paso es decidir qué paradigma usas: `plantilla-proyecto/` (proyectos aislados) o `vault-template/` (Life OS personal).
