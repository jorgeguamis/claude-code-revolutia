# Cómo personalizar este repo para tu uso

> Guía rápida para convertir este "kit genérico" en TU sistema funcional.

## Antes de empezar

Decide qué paradigma vas a usar (puedes usar los dos):

- **Paradigma A — Proyectos aislados**: cada proyecto tiene su carpeta. Usas `plantilla-proyecto/`.
- **Paradigma B — Life OS**: un vault que gestiona tu vida + trabajo. Usas `vault-template/`.

Lee la lección **L2.1** del módulo si tienes dudas.

## Personalizar el `vault-template/` (Paradigma B)

### Opción rápida — con el prompt agéntico

```bash
cd modulo-claude-code-revolutia
claude
```

Después pega este prompt (o lee el completo en `prompts/personaliza-mi-vida-os.md`):

> "Voy a personalizar el `vault-template/` para mi Life OS personal. Lee el prompt en `prompts/personaliza-mi-vida-os.md` y guíame paso a paso."

Claude te entrevistará y construirá `vault-template-personalizado/`. Luego lo mueves a la carpeta donde quieras tener tu Life OS real (ej. `~/Documents/MiVidaOS/`).

### Opción manual

1. Copia `vault-template/` a una carpeta nueva fuera del repo:
   ```bash
   cp -r vault-template ~/Documents/MiVidaOS
   cd ~/Documents/MiVidaOS
   ```

2. Renombra `CLAUDE.md.template` → `CLAUDE.md` y rellénalo con tu info.

3. Renombra los `.template` de cada área (`Personal.md.template`, `Negocio.md.template`) y personaliza.

4. Ajusta las áreas: borra las que no uses (Salud, Finanzas, etc.), añade nuevas si necesitas.

5. Si usas Obsidian, abre la carpeta como vault nuevo.

6. Empieza a usarlo.

## Personalizar `.claude/` para tu trabajo

### Tu primer agente custom

1. Copia `plantillas/AGENT.md.template` → `.claude/agents/<nombre>.md`
2. Personaliza descripción, rol, tools permitidas, prompt sistema
3. Prueba: pídele a Claude algo que dispare el agente

Ejemplo: agente "qa-cliente" que revisa cualquier output como si fuera tu cliente más exigente.

### Tu primera skill custom

1. Crea carpeta `.claude/skills/<nombre>/`
2. Copia `plantillas/SKILL.md.template` → `.claude/skills/<nombre>/SKILL.md`
3. Personaliza process, output esperado, criterios de calidad
4. Prueba: invócala con `/<nombre>` desde Claude Code
5. Usa la sección "Known Issues & Learnings" para registrar fallos cada vez que la uses

Ejemplo: skill `/resumen-reunion` que convierte transcripción de Fireflies en acta + acciones.

### Tu CLAUDE.md raíz

Copia `plantillas/CLAUDE.md.template` → `CLAUDE.md` (en la raíz de tu proyecto o vault).

**Regla de oro**: ≤ 200 líneas. Si crece más:
- Lo procedimental → mover a una skill
- Lo automático → mover a un hook (avanzado)
- Lo que Claude ya hace bien → borrar

## Personalizar el landing del Bloque 6

```bash
cp -r plantilla-vibecoding/landing-html-simple ~/mi-landing
cd ~/mi-landing
claude
```

Pídele a Claude:

> "Personaliza este landing para mi oferta. Avatar: [...]. Problema: [...]. Solución: [...]. CTA: [...]. Tono: [...]. Mantén estructura, cambia copy y placeholders. Antes de tocar nada, propón copy completa para revisar."

Después deploy a Vercel:

```bash
vercel              # primera vez: pide login + nombre
vercel --prod       # cada cambio
```

## Patrones recomendados

### Patrón "vault personal + repos de proyecto"

Mantén tu `vault-template-personalizado/` como tu Life OS. Para cada cliente o proyecto grande, abre carpeta aparte siguiendo `plantilla-proyecto/`. No mezcles.

### Patrón "compartir `.claude/` con cliente"

Cuando entregues un proyecto a un cliente, considera incluir el `.claude/` con CLAUDE.md y skills configuradas. El cliente puede seguir usando el sistema después de tu intervención. Es parte del valor que entregas.

### Patrón "fork del repo del módulo"

Si quieres hacer tu propia versión personal del repo del módulo (con tus skills, tu vault), forkéalo en GitHub. Mantenlo privado. Sigue haciendo `git pull` desde el original para no perderte updates.

## Qué NO compartir / commitear

- `.env` con claves API
- Datos personales reales de clientes
- Tu `vault-template-personalizado/` (es tuyo, ponlo en repo privado aparte)
- `.claude/settings.json` (puede tener tokens)
- `02_outputs/` con outputs reales

Todos estos están en `.gitignore` por defecto.

## Si te bloqueas

- [TROUBLESHOOTING.md](./TROUBLESHOOTING.md) — errores comunes
- Espacio "Material vivo" en Circle — preguntas y compartidos del equipo + alumnos
- Pregunta en Circle, no abras issues para dudas conceptuales
