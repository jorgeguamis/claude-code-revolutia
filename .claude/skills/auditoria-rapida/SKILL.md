---
name: auditoria-rapida
description: Convierte descripción/notas de un proceso de cliente en un informe de auditoría estructurado con mapa, cuellos de botella, oportunidades de IA y MVP de 7 días. Úsala cuando tengas inputs de un cliente sobre cómo trabajan hoy y necesites generar el primer informe de propuesta.
---

# Skill — Auditoría rápida

## Propósito

Genera el primer informe de auditoría de procesos para un cliente PYME, listo para enviar como anexo a una propuesta comercial.

## Cuándo usarla

- Tienes notas, transcripción de reunión, formulario rellenado o descripción libre del proceso actual de un cliente
- Necesitas un informe estructurado en menos de 30 minutos
- El informe va a apoyar una propuesta comercial o un kick-off

## Cuándo NO usarla

- No tienes datos del cliente (la skill no inventa)
- El cliente quiere un análisis técnico profundo (esto es una auditoría operativa, no un assessment técnico)
- Vas a tomar decisiones irreversibles sobre el proceso del cliente sin validar con él primero

## Inputs requeridos

Coloca en `01_inputs/` al menos uno de estos:

- `proceso-actual.md` — descripción libre del proceso
- `transcripcion-cliente.md` — notas o transcripción de reunión
- `formulario-cliente.md` — respuestas a un cuestionario previo

Opcional pero recomendado:

- `restricciones.md` — presupuesto, equipo, privacidad, deadlines
- `objetivos-cliente.md` — qué quiere conseguir el cliente

## Process

1. **Leer todos los inputs en `01_inputs/`** y resumir en 3-5 bullets qué se entiende del proceso. Si falta información crítica, marcar como "Dato faltante" — no inventar.
2. **Mapear el proceso actual** paso a paso (formato textual numerado o tabla).
3. **Identificar cuellos de botella** (mínimo 3, máximo 7) clasificándolos por impacto (alto/medio/bajo).
4. **Listar oportunidades de automatización con IA**, cada una con propuesta en 3 niveles:
   - Nivel 1 (sin código): Make, Zapier, plantillas
   - Nivel 2 (simple): script puntual, IA en flujo concreto
   - Nivel 3 (avanzado): integración + IA + APIs
5. **Proponer MVP de 7 días** con: objetivo, entregable, criterio de éxito, coste estimado.
6. **Listar riesgos y validaciones pendientes** — todo lo que se asumió y necesita confirmación del cliente.

## Output

Crear los siguientes archivos en `02_outputs/`:

- `auditoria-proceso.md` — informe completo (puntos 1-5)
- `mvp-7-dias.md` — solo el MVP propuesto, listo para enviar al cliente como pre-propuesta
- `validaciones-pendientes.md` — lo que falta confirmar antes de cerrar la propuesta

## Reglas de calidad

- Lenguaje de negocio, no técnico
- Distinguir hechos confirmados de suposiciones
- Nunca inventar números, métricas o nombres
- Si una oportunidad requiere tecnología compleja pero hay alternativa simple que resuelve el 80%, recomendar la simple
- Marcar claramente lo que necesita validación humana antes de avanzar

## Confirmación

Antes de generar los archivos finales, presentar al usuario:

1. Resumen de lo entendido (paso 1)
2. Lista de oportunidades detectadas (paso 4)
3. Propuesta de MVP (paso 5)

Solo después de confirmación, escribir los archivos en `02_outputs/`.

## Known Issues & Learnings

| Date | Issue | Resolution |
|---|---|---|
| | (esta tabla se rellena con el uso real — cada fallo de la skill se registra aquí) | |
