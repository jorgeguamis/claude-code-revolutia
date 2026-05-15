# Landing HTML simple

Plantilla minimalista lista para que la personalices y deployes a Vercel en 30 segundos.

## Estructura

- `index.html` — la página, con marcadores `[...]` que tienes que rellenar
- `styles.css` — estilos. Hay variables CSS arriba para cambiar paleta rápido
- `vercel.json` — config mínima para Vercel
- `README.md` — esto

## Uso rápido

1. **Copia a una carpeta personal** (fuera del repo del módulo):
   ```bash
   cp -r ../plantilla-vibecoding/landing-html-simple ~/mi-landing
   cd ~/mi-landing
   ```

2. **Abre Claude Code y personaliza**:
   ```bash
   claude
   ```
   Pídele cosas como:
   - "Lee `index.html` y `styles.css`. Personaliza para una oferta de [tu nicho]. El avatar es [...], el problema [...], la solución [...]. Mantén la estructura."

3. **Preview local**:
   ```bash
   open index.html        # Mac
   start index.html       # Windows
   xdg-open index.html    # Linux
   ```

4. **Deploy a Vercel**:
   ```bash
   vercel              # primera vez: pide login + nombre proyecto
   ```

5. **Iterar**: cambia con Claude, repite preview, redeploy con:
   ```bash
   vercel --prod
   ```

## Marcadores que tienes que rellenar

Busca en `index.html` los `[...]` y reemplázalos. Hay 12 aprox.

Los principales:
- `[NOMBRE OFERTA]`, `[TU MARCA]`
- Headline principal y subtítulo
- 3 síntomas del avatar (sección Problema)
- 3 pasos de tu método (sección Solución)
- CTA final + email

## Personalización avanzada con Claude

```
Lee index.html y styles.css. Quiero que personalices para mi oferta.

Avatar: [descripción]
Problema: [descripción]
Solución: [descripción]
CTA: [acción]
Tono: [profesional / cercano / técnico / etc.]
Paleta de colores: [primario y secundario]

Mantén:
- Estructura de secciones (Hero, Problema, Solución, CTA)
- Estilos responsive
- Marcado HTML semántico

Cambia:
- Todos los placeholders [...]
- Variables CSS de color si lo pido
- Copy completo

Antes de tocar nada, dame propuesta de copy completa para revisar.
```
