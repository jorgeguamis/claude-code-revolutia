---
name: acta-reunion
description: Convierte una transcripción o notas de reunión en un acta estructurada con resumen ejecutivo, decisiones, acciones (con responsable y plazo), próximos pasos y dudas. Úsala siempre que el usuario pida resumir una reunión, procesar una transcripción, sacar las acciones de una llamada con un cliente, o convertir notas de una reunión en un acta, aunque no diga literalmente "acta".
---

# Skill — Acta de reunión

## Propósito

Convierte una transcripción o notas de reunión en un acta estructurada, lista para archivar o enviar a los participantes. El objetivo es capturar lo que realmente se dijo (decisiones y acciones), no rellenar huecos con suposiciones.

## Cuándo usarla

- Tienes una transcripción de reunión (Fireflies, Zoom, manual) o notas sueltas y necesitas un acta ordenada
- El usuario pide "resume esta reunión", "procesa esta transcripción" o "saca las acciones de esta llamada"
- Acabas de tener una llamada con un cliente y quieres dejar por escrito decisiones y próximos pasos

## Cuándo NO usarla

- No hay transcripción ni notas reales de la reunión (la skill no inventa el contenido de una reunión)
- Lo que quieres es redactar un correo, una propuesta o un contenido a partir de la reunión (eso es otra cosa; esta skill solo produce el acta)
- Quieres un análisis estratégico profundo del cliente, no un registro de lo hablado

## Inputs

Necesitas la transcripción o notas de la reunión. Puede llegar de dos formas:

- **Pegada directamente en el chat** — úsala tal cual
- **Como archivo en `01_inputs/`** — por ejemplo `transcripcion-reunion.md` o `notas-reunion.md`

Opcional pero útil:

- Nombre/contexto de la reunión y quién es el cliente, si no queda claro en la transcripción

Si no hay transcripción ni notas, pídelas. No generes un acta de una reunión que no puedes leer.

## Process

1. **Leer la transcripción completa.** No la resumas todavía; primero entiende de qué fue la reunión y quién hablaba.
2. **Extraer el contexto y los participantes.** Quién asistió, en qué rol (cliente, equipo interno), tema y fecha si aparece. Si un dato no está, márcalo como "no consta en la transcripción" en lugar de deducirlo.
3. **Identificar las decisiones tomadas.** Solo lo que se acordó explícitamente. Una opinión o una idea lanzada al aire no es una decisión; distingue ambas cosas.
4. **Extraer las acciones pendientes.** Para cada acción anota responsable y plazo **únicamente si se mencionaron en la reunión**. Si no se nombró responsable, déjalo como "pendiente de clarificar" — nunca asignes a alguien por inferencia. Lo mismo con el plazo.
5. **Recoger los próximos pasos.** Qué pasa después de esta reunión (siguiente llamada, envío de algo, seguimiento). Pueden solaparse con acciones; aquí van a nivel de "qué sigue", no de tarea concreta.
6. **Listar las dudas y ambigüedades.** Todo lo que quedó abierto, sin responsable claro, o que requiere confirmación posterior. Aquí caben también las acciones cuyo responsable o plazo quedaron como "pendiente de clarificar".

## Por qué importa no inventar

El valor de un acta es que sea fiel. Si inventas una acción que nadie mencionó, o asignas un responsable por suposición, el acta deja de ser un registro y se convierte en una fuente de errores: alguien se da por aludido cuando no lo es, o se da por hecho un compromiso que nunca se asumió. Cuando dudes entre asumir o marcar como pendiente, marca como pendiente. Es más útil una duda explícita que una afirmación falsa.

## Output

El acta tiene **exactamente estas cinco secciones**, en este orden:

```markdown
# Acta de reunión — [tema] ([fecha si consta])

**Participantes:** [lista con rol]

## Resumen ejecutivo
[3-5 frases con lo esencial de la reunión]

## Decisiones
- [Decisión acordada explícitamente]
- [...]

## Acciones
| Acción | Responsable | Plazo |
|---|---|---|
| [qué hay que hacer] | [nombre tal cual aparece / "pendiente de clarificar"] | [plazo mencionado / "no mencionado"] |

## Próximos pasos
- [Qué ocurre después de esta reunión]
- [...]

## Dudas
- [Lo que quedó abierto o necesita confirmación]
- [...]
```

Guarda el acta en `02_outputs/acta-reunion.md`.

Si una sección no tiene contenido real (por ejemplo, no se tomó ninguna decisión), escríbela igual con una línea explícita: "No se registraron decisiones en esta reunión." No la borres y no la rellenes con paja.

## Reglas de calidad

- Nunca inventes acciones, decisiones o próximos pasos que no aparezcan en la transcripción
- Nunca asignes un responsable que no se nombre explícitamente; usa "pendiente de clarificar"
- Si una acción parece dirigida al usuario pero nadie lo dijo expresamente, márcala como "pendiente de clarificar", no la asumas suya
- Distingue una decisión cerrada de una idea o intención abierta
- Lenguaje claro y de negocio; el acta debe leerse en 1 minuto

## Confirmación

Antes de escribir el archivo en `02_outputs/`, presenta al usuario:

1. Resumen de lo entendido (contexto + participantes)
2. Lista de decisiones detectadas
3. Tabla de acciones con responsables y plazos (mostrando claramente los "pendiente de clarificar")

Solo después de su "ok, adelante" → escribe el archivo.

## Known Issues & Learnings

> Cada vez que la skill falle o produzca algo inesperado, registra el aprendizaje aquí. Esto es self-annealing: el sistema mejora con el uso.

| Date | Issue | Resolution |
|---|---|---|
| | | |
