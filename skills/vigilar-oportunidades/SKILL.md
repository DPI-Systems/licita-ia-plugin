---
name: vigilar-oportunidades
description: Encuentra y filtra oportunidades de licitación pública en España con Licita IA — las recomendaciones de la organización, búsquedas por sector, zona, importe y plazo, licitaciones parecidas, y el mantenimiento de las líneas de actividad y descartes. Úsala para «¿qué hay nuevo para nosotros?», «busca licitaciones de X en Y», «¿qué cierra esta semana?», «no nos interesa esta» o «ajusta lo que nos recomienda».
license: MIT
metadata:
  autor: DPI Systems
  servidor: https://licita-ia.es/api/mcp
---

# Vigilar oportunidades

## Antes de nada: Licita IA tiene que estar conectado

- Si no tienes disponibles las herramientas de Licita IA (no aparecen, o piden iniciar sesión),
  di a la persona que conecte Licita IA. En ChatGPT: Complementos → Licita IA → Conectar. En
  Claude: Personalizar → Conectores → Licita IA → Conectar.
  - Si no tiene cuenta, la crea en ese mismo paso, y al terminar vuelve sola a autorizar.
  - No respondas «no hay datos»: sin conexión no has consultado nada.
- Si combinas estos datos con los de otra fuente, di de dónde sale cada uno.

## Encontrar

- **Lo que le conviene a la organización:** `recomendar_licitaciones()` → portada de Descubrir,
  agrupada por filas (líneas de actividad, organismos habituales, cerca de lo que hace). Para
  ver una fila entera, `vista="fila"` con su clave.
- **Búsqueda libre:** `buscar_licitaciones` con `palabras_clave`, `tipos_contrato`,
  `comunidades`, `provincia`, `organo`, `importe_min` / `importe_max` (euros sin IVA),
  `cierra_en_dias`, `cpv` o `cnae`.
  - Anuncios previos: `carpeta="se_prepara"`. Contratos que vuelven a salir:
    `carpeta="vuelve_a_salir"`.
  - «Otras como esta»: `parecidas_a=<id>`.
- Pagina con `pagina` en vez de pedir más filtros a ciegas.

Muestra la lista numerada (título, órgano, importe, cierre) con su enlace, y ofrece abrir una
con la skill `estudiar-licitacion`. Listar no analiza: el análisis de los pliegos
(`analizar_licitacion`) se ofrece después, para la licitación que interese.

## Afinar

- **Descartar** («no nos interesa»): `descartar_licitacion`. Cambia lo que ve el equipo:
  confirma cuál antes de hacerlo. Las descartadas se consultan con
  `recomendar_licitaciones(vista="descartadas")`.
- **Comentar** para el equipo: `comentar_licitacion`, también con confirmación.
- **Líneas de actividad** (qué se recomienda): consulta las actuales con
  `ver_mi_organizacion` y cámbialas con `configurar_lineas`. Explica qué vas a cambiar y por
  qué, y pide confirmación: afecta a las recomendaciones de toda la organización.

## Buenas prácticas

- Usa siempre el `licitacion_id` numérico, no el expediente copiado del texto.
- Si la persona pide «avísame cuando…», explica que tú no puedes avisar en segundo plano; que
  te lo vuelva a preguntar, o que lo configure en Licita.
