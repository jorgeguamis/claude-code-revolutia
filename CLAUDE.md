# modulo-claude-code-revolutia — módulo para alumnos

Repo **oficial del módulo de Claude Code** de Revolutia IA Pro. El alumno lo clona, lo
personaliza y sale con su propio sistema de consultoría con IA: `plantilla-proyecto/`,
`plantilla-vibecoding/`, `casos-demo/`, `bin/`, `docs/` y una `.claude/` de ejemplo.

Nota: el remoto se llama `claude-code-revolutia` aunque la carpeta local sea
`modulo-claude-code-revolutia`. No es un error, pero despista al buscar.

## Lo que hace especial a este repo

**Lo lee gente que está aprendiendo, y lo ejecuta en su propia máquina.** Eso cambia las reglas:

- **Cero datos reales.** Ni clientes, ni cifras, ni rutas del vault de Jorge, ni credenciales. Si
  un caso viene de un proyecto real, va anonimizado — método y resultado, sin nombre ni portal.
- **Tiene que funcionar en la máquina de otro**, no en la de Jorge: sin rutas absolutas, sin
  suponer herramientas instaladas, sin dependencias de su config.
- La promesa del README es "**empezar en 3 minutos**". Si un cambio la rompe, o se arregla el
  cambio o se corrige la promesa. Verifícala a cronómetro en una carpeta limpia, igual que hace
  `agentos-molde`.

`INSTALL.md` es lo primero que lee el alumno: si algo cambia en el arranque, se actualiza ahí antes
que en ningún otro sitio.
