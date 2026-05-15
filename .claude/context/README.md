# Context files

> Archivos de contexto persistente para tus agentes y skills. Cada agente/skill lee estos archivos antes de generar output.

## Qué va aquí

- **Notas de cliente**: contexto persistente sobre cada cliente activo (anonimizado si compartes el repo)
- **Notas de negocio**: tu propia oferta, posicionamiento, voz de marca
- **Glosarios**: términos específicos de tu sector que la IA no conoce por defecto
- **Decisiones**: por qué decidiste cosas estructurales (para que la IA respete tus elecciones)

## Qué NO va aquí

- Secretos, claves API, tokens (eso va en `.env` y NUNCA se commitea)
- Datos personales de clientes que no hayan dado consentimiento explícito
- Ficheros de gran tamaño (PDF, vídeos) — referéncialos por path o URL

## Cómo se consume

En tu `CLAUDE.md` puedes referenciar cualquier archivo de contexto con `@`:

```markdown
@.claude/context/cliente-X.md
@.claude/context/voz-marca.md
```

## Ejemplo de archivo

```markdown
# .claude/context/voz-marca.md

## Tono
Directo, conversacional, sin buzzwords. Como si hablara con un amigo.

## Vocabulario que SÍ uso
- "Vamos a..."
- "El problema real es..."
- "Concretamente..."

## Vocabulario que NUNCA uso
- "Sinergia", "disruptivo", "leverage"
- Em dashes (—) en exceso. Máximo 2 por párrafo
```
