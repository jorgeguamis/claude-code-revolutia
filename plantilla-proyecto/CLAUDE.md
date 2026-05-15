# CLAUDE.md — Proyecto demo

> Plantilla mínima de proyecto aislado. Personaliza este archivo y empieza a trabajar.

## Proyecto

[Nombre del proyecto]

## Objetivo

[Qué quieres conseguir con este proyecto. 1-3 frases.]

## Carpetas

- `00_contexto/` → archivos de contexto persistente (sobre cliente, marca, restricciones)
- `01_inputs/` → datos / inputs que Claude debe leer
- `02_outputs/` → entregables generados (lo que Claude crea)

## Restricciones

- Nunca tocar archivos fuera de `02_outputs/` sin confirmación
- No inventar datos. Si falta información, marcar "[Dato faltante: X]"
- Lenguaje no técnico (audiencia: cliente / dirección)

## Workflow

1. Activar Plan Mode (`Shift+Tab` x2)
2. Pedir comprensión sin tocar archivos
3. Pedir plan sin ejecutar
4. Aprobar / corregir plan
5. Ejecutar por bloques (no todo de golpe)
6. Revisar contra criterios
7. Iterar mejoras

## Criterios de calidad

- El output se entiende sin explicación adicional
- Distingue hechos de suposiciones
- Incluye próximos pasos concretos
