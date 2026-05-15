# Prompt anti-invención

> Para cuando Claude empieza a "rellenar huecos" con datos que no estaban en el input. Cópialo después de cualquier output sospechoso.

```
Revisa todo el documento que acabas de generar y marca cualquier frase que no esté respaldada por los inputs disponibles en 01_inputs/ o por el contexto en CLAUDE.md.

Clasifica cada afirmación como:
- ✅ Confirmado por input
- 🟡 Suposición razonable (di en qué te basas)
- ❓ Dato faltante (lo que necesitas saber para confirmar)
- ⚠️ Posible invención (lo que no debería estar)

NO añadas información nueva en esta revisión. Solo clasifica lo que ya escribiste.

Después, dame una versión limpia donde:
- Las suposiciones están marcadas como tales
- Los datos faltantes aparecen como "[Dato faltante: X]"
- Las posibles invenciones están eliminadas
```

## Versión preventiva

> Mete esto en tu CLAUDE.md o en TASK.md desde el principio para evitar que pase.

```
Regla absoluta: No inventes datos.

Si necesitas un número, nombre, métrica o referencia que no está en los inputs, marca "[Dato faltante: descripción]" y continúa.

Si una afirmación es una suposición razonable basada en contexto, márcala como "Suposición:" y di en qué te basas.

Nunca presentes algo como hecho sin que esté en los inputs.
```
