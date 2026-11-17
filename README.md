# Licita IA — plugin para Claude y ChatGPT

Licitaciones públicas de España dentro de tu asistente. Este plugin conecta Claude o ChatGPT con tu
cuenta de [Licita IA](https://licita-ia.es) y añade cuatro skills que enseñan al asistente a
trabajar con licitaciones como lo haría un técnico de ofertas.

## Qué incluye

- **Conector MCP** remoto en `https://licita-ia.es/api/mcp`, con OAuth: inicias sesión en Licita IA
  y apruebas los permisos; el asistente nunca ve tu contraseña. Búsqueda, recomendaciones de tu
  organización, fichas de licitaciones, competencia y bajas, empresas y órganos de contratación,
  lectura de pliegos con cita de página y enlaces de descarga temporales.
- **Skills**
  - `estudiar-licitacion` — go / no-go de una licitación con cita del pliego.
  - `preparar-oferta` — qué presentar, estudio de costes y modelos, con las recetas de Licita IA.
  - `analizar-competencia` — rivales, baja recomendada y simulación de ofertas.
  - `vigilar-oportunidades` — encontrar, filtrar y descartar oportunidades; líneas de actividad.

Necesitas una cuenta de Licita IA (hay plan gratuito). Algunas funciones son del plan de pago y lo
dicen al usarlas.

## Instalar

- **Claude (claude.ai, Desktop, Cowork):** busca *Licita IA* en el directorio de plugins.
- **Claude Code:** `/plugin marketplace add DPI-Systems/licita-ia-plugin` y después
  `/plugin install licita-ia@licita-ia`.
- **ChatGPT:** busca *Licita IA* en el directorio de plugins de ChatGPT.

Guía completa, permisos y soporte: <https://licita-ia.es/asistentes>.

## Estructura

| Ruta | Para |
|---|---|
| `.claude-plugin/plugin.json`, `.mcp.json` | Plugin de Claude |
| `.claude-plugin/marketplace.json` | Instalación desde este repositorio en Claude Code |
| `chatgpt/plugin.json`, `chatgpt/mcp.json` | Paquete de ChatGPT (`scripts/build-chatgpt.sh` genera el ZIP) |
| `skills/` | Skills, compartidas por los dos |
| `assets/` | Logo e icono |

## Privacidad y soporte

- [Política de privacidad](https://licita-ia.es/privacidad) · [Condiciones](https://licita-ia.es/condiciones)
- Soporte: fernando@licita-ia.es
