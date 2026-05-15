# Prompt: deploy a Vercel

> Pégalo en Claude Code cuando tengas listo tu landing en `plantilla-vibecoding/landing-html-simple/` (o tu propio HTML/Next.js) y quieras publicarlo en URL pública.

## Pre-requisitos

```bash
npm install -g vercel       # Solo la primera vez
vercel login                # Login con tu cuenta GitHub (recomendado)
```

## Prompt para el deploy inicial

```
Voy a hacer el primer deploy a Vercel del landing en `plantilla-vibecoding/landing-html-simple/` (o de mi propia carpeta).

Antes de ejecutar nada:
1. Verifica que tengo `vercel` CLI instalado
2. Verifica que estoy logueado: `vercel whoami`
3. Lee el contenido de la carpeta del landing
4. Comprueba que NO hay claves API, secretos o datos sensibles en los archivos
5. Dame plan: qué comando vas a ejecutar, qué nombre de proyecto vas a usar, qué dominio se generará

Espera mi confirmación antes del deploy.

Después del deploy:
- Dame la URL pública generada
- Confirma que está accesible (prueba con curl)
- Dime cómo veré los logs si algo falla en producción
- Dime cómo revertir un deploy si me arrepiento (`vercel rollback`)
```

## Prompt para iteración rápida

```
He hecho cambios en `[archivo modificado]`. Quiero que se reflejen en la URL pública.

Workflow:
1. Verifica los cambios localmente abriendo el HTML en preview (si es estático)
2. Si todo OK, redeploya con `vercel --prod`
3. Confirma URL actualizada
4. Si algo falla, dame el log y propón fix antes de reintentar

NO hagas redeploy si los cambios afectan a algo crítico (textos legales, precios, claims) sin que yo confirme primero.
```

## Aviso de seguridad

> Antes de deploy, **siempre** revisar:

- ¿Hay `.env` o claves en código? → ELIMINAR antes de pushear
- ¿Hay datos personales sin anonimizar? → ELIMINAR
- ¿Hay enlaces a recursos privados (Notion, Drive personal)? → REVISAR

Vercel es público por defecto. Lo que subes lo ve cualquiera con la URL.
