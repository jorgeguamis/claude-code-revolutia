# Prompt de ejecución controlada

> Para evitar que Claude haga "todo de golpe" cuando le pides una tarea grande.

```
Ejecuta solo el paso [X] del plan que aprobamos.

Crea o modifica archivos únicamente dentro de `02_outputs/`.

Al terminar, resume:
- Qué has creado/modificado (lista de archivos)
- Qué decisiones has tomado (cuáles fueron las opciones y por qué elegiste)
- Qué queda pendiente del paso [X]
- Qué debería revisar yo antes de continuar al paso [X+1]

NO continúes al siguiente paso hasta que yo te diga "ok, sigue".
```

## Para tareas largas: divide en bloques

```
La tarea completa es [X]. La voy a dividir en N bloques.

Bloque 1: [...]
Bloque 2: [...]
Bloque 3: [...]

Ejecuta solo el Bloque 1. Cuando termines, dame:
- Resumen de lo hecho
- Diff conceptual (qué cambió respecto al estado anterior)
- Qué decisiones tomaste y por qué
- Qué te bloquearía para el Bloque 2

Espera mi "ok" antes de seguir.
```

## Variante para sesión muy larga

```
Antes de continuar, ejecuta `/compact` para liberar contexto.

Después, retoma la tarea desde donde la dejamos. Lee:
- El último output en `02_outputs/`
- El TASK.md actualizado
- Mis comentarios anteriores en esta sesión (los que sobrevivan al compact)

Y dame plan para el siguiente bloque antes de ejecutar.
```
