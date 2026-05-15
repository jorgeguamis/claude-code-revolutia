# Plantilla Vibecoding

> Para el Bloque 6 del módulo. Dos plantillas listas para que personalices con Claude Code y deployes a Vercel.

## Opciones

### `landing-html-simple/`

HTML + CSS + JS vanilla. Sin build step. Ideal para:
- Tu primera landing publicada
- Validación rápida de oferta
- Demos a clientes
- Si no quieres lidiar con frameworks

**Deploy en 30 segundos**:
```bash
cd landing-html-simple
vercel              # primera vez te pide login y nombre proyecto
# Después de eso, cada nuevo cambio:
vercel --prod
```

### `landing-nextjs/` (próximamente)

Next.js para alumnos que quieran ir más allá. Deploy con `vercel` igual de simple, pero te da:
- React components reutilizables
- Server-side rendering
- API routes si necesitas backend simple
- Mejor SEO

> Si estás empezando, **usa `landing-html-simple/`**. Cuando lo domines y quieras más, mira el de Next.js.

## Workflow recomendado

1. Decide qué plantilla usar
2. Cópiala a una carpeta nueva fuera del repo (para no commitear tu landing personal):
   ```bash
   cp -r landing-html-simple ~/mi-landing
   cd ~/mi-landing
   ```
3. Abre Claude Code dentro y personaliza con prompts del tipo:
   - "Cambia el headline a X"
   - "Añade sección de testimonios con estas 3 quotes"
   - "Cambia paleta de colores a [...]"
4. Preview local: abre `index.html` en el browser
5. Cuando esté listo: `vercel --prod`
6. Comparte URL con cliente / publica en LinkedIn

## Aviso

Lee [`prompts/prompt-deploy-vercel.md`](../prompts/prompt-deploy-vercel.md) para deploy. **Antes de cualquier deploy: revisa que NO haya claves API ni datos sensibles en el código.**
