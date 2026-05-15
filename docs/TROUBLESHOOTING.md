# TROUBLESHOOTING

> Errores comunes y cómo resolverlos. Si tu problema no está aquí, pregunta en Circle antes de abrir un issue.

## Errores de instalación

### `claude: command not found`

**Qué significa**: el sistema no encuentra Claude Code.

**Solución base**:
```bash
npm install -g @anthropic-ai/claude-code
claude --version
```

**Si sigue fallando**: tu PATH puede no incluir el directorio de paquetes globales de npm.
```bash
npm config get prefix
# El output debería estar en tu PATH (echo $PATH)
```

Si no está, añádelo a tu `.zshrc` o `.bashrc`:
```bash
export PATH="$(npm config get prefix)/bin:$PATH"
```

### `EACCES: permission denied` al instalar

**Qué pasa**: npm intenta escribir en una carpeta donde no tienes permisos.

**❌ NO uses `sudo npm install -g`** — es un parche que crea más problemas.

**✅ Configura npm para usar tu carpeta home**:
```bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
npm install -g @anthropic-ai/claude-code
```

### `claude auth login` no abre el browser

Suele pasar en entornos remotos (SSH, contenedores).

**Solución**: copia la URL que aparece en terminal y ábrela manualmente en tu browser local.

### `claude doctor` reporta problemas

Lee cada línea con calma. Suele ser uno de:
- Node antiguo → instalar Node LTS desde https://nodejs.org
- Auth no completo → `claude auth login` otra vez
- API key no detectada → `claude auth status`

## Errores en sesión

### Claude se queda colgado / muy lento

- Has compartido demasiado contexto (carpeta gigantesca)
- Hay un MCP que falla y no lo sabes

**Diagnóstico**:
```bash
/mcp           # Lista MCPs activos y su estado
/clear         # Limpia conversación si está saturada
/compact       # Comprime conversación larga
```

### Claude inventa datos / archivos

Has dado contexto pobre. Soluciones:

1. Usa el `prompt-anti-invencion.md` (carpeta `prompts/`)
2. Mete regla permanente en CLAUDE.md: "No inventes datos. Si falta info, marca [Dato faltante: X]"
3. Pide revisión: "Revisa el doc y marca cualquier afirmación no respaldada por inputs"

### Claude hace cambios que no quería

Activa Plan Mode SIEMPRE en proyectos importantes:
- `Shift+Tab` (dos veces) o `/plan`
- Claude no puede tocar archivos hasta que apruebes

### Output demasiado técnico

Mete en CLAUDE.md o en TASK.md:
> "Audiencia: persona no técnica de [sector]. Lenguaje claro, sin jerga. Si tienes que mencionar tecnología, explícala en una frase."

### Se agotó la cuota del plan Pro

Pasa en sesiones largas. Opciones:
1. Esperar al reset (cada 5h en Pro)
2. Subir a Max (recomendado para uso profesional, ver L2.5 del módulo)
3. Activar "extra usage" si tu plan lo permite

## Errores con MCPs

### MCP aparece como "Disconnected"

Casi siempre el proceso del servidor crasheó al arrancar.

**Diagnóstico**:
```bash
claude mcp list                  # ver estado
claude mcp get <nombre-mcp>      # detalles
```

Después ejecuta el comando del MCP **manualmente** en terminal para ver el error real:
```bash
# Ejemplo si tu MCP es notion-mcp
npx @notionhq/notion-mcp-server
# Lee el error que sale
```

### `Invalid JSON` al añadir un MCP

99% de las veces es por **trailing commas** en `.mcp.json` o `~/.claude.json`. JSON estricto NO las admite:

```json
{
  "mcpServers": {
    "notion": { ... },  ← esta coma final FALLA
  }
}
```

Quita la última coma.

### MCP requiere auth y no funciona

Algunos MCPs (Notion, Google Workspace) requieren auth interactiva (OAuth en browser). Si estás en entorno remoto sin display, no van a funcionar bien. Solución: hacer auth desde tu Mac local primero.

## Errores con Vercel (B6)

### `vercel: command not found`

```bash
npm install -g vercel
```

### `vercel deploy` falla con "Authentication required"

```bash
vercel login        # login con GitHub recomendado
```

### Mi landing se ve bien local pero feo en Vercel

99% de las veces son rutas relativas mal puestas. Asegúrate de que CSS y JS están referenciados como `./styles.css` y `./script.js`, no con rutas absolutas.

### "Build failed" al desplegar Next.js

Lee el log de Vercel. Suele ser:
- Falta `package.json`
- Versión de Node incompatible
- `npm install` falla por dependencia rota

```bash
vercel logs              # ver logs del último deploy
```

### Quiero borrar un deploy / proyecto

```bash
vercel remove <nombre-proyecto>
# o desde el dashboard de Vercel: Settings → Delete Project
```

## Cuando nada funciona

1. **Cierra sesión**: `claude` exit, vuelve a abrirlo
2. **Reinicia terminal**: a veces el PATH no se refresca
3. **`claude doctor`**: te dice qué falla
4. **Pregunta en Circle**: comparte tu error literal + capturas
5. **Issue en este repo**: SOLO si crees que es un problema del repo en sí (no del entorno)

## Recursos útiles

- Docs Claude Code: https://code.claude.com/docs
- Status Anthropic: https://status.anthropic.com
- Comunidad Circle Revolutia: [enlace privado]
