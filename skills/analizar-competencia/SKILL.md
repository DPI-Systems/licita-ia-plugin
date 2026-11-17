---
name: analizar-competencia
description: Analiza la competencia y el precio en licitaciones públicas españolas con Licita IA — quién suele ganar, con qué baja, historial de adjudicaciones de una empresa u órgano, comparación entre empresas y simulación de qué puesto habría sacado una oferta. Úsala para «¿quién gana esto?», «¿qué baja meto?», «¿cómo le va a X?», «compáranos con Y» o «¿y si hubiéramos ofertado un 5 % menos?».
license: MIT
metadata:
  autor: DPI Systems
  servidor: https://licita-ia.es/api/mcp
---

# Analizar competencia y precio

## Antes de nada: Licita IA tiene que estar conectado

- Si no tienes disponibles las herramientas de Licita IA (no aparecen, o piden iniciar sesión),
  **no busques en otras fuentes ni en otros conectores para suplirlas**.
  - Di a la persona que conecte Licita IA. En ChatGPT: Ajustes → Apps → Licita IA → Conectar. En
    Claude: Personalizar → Conectores → Licita IA → Conectar.
  - Si no tiene cuenta, la crea gratis en ese mismo paso, y al terminar vuelve sola a autorizar.
  - No respondas «no hay datos»: sin conexión no has consultado nada.
- Cuando la persona nombra Licita IA, usa **sólo** sus herramientas. Si crees que conviene
  contrastar con otra fuente, pregúntalo antes.

## Qué herramienta para qué

| Pregunta | Herramienta |
|---|---|
| Competencia en **esta** licitación | `ver_licitacion(apartado="competencia")` |
| Quién ofertó y con qué puntos (ya abierta) | `ver_licitacion(apartado="mesa")`, y con `lote` el detalle |
| «¿Y si hubiéramos ofertado X?» | `simular_oferta(lote, precio, licitador)` |
| Una empresa (adjudicaciones, órganos, bajas) | `buscar_empresa_u_organo(tipo="empresa", nombre_busqueda=…)` → `ver_empresa` (con `vista="puja"`, su baja) |
| Varias empresas frente a frente | `comparar_empresas(modo="lado_a_lado", empresas=[…])`; parecidas a una: `modo="similares"` |
| Un órgano (a quién adjudica, cuánto, cómo) | `buscar_empresa_u_organo(tipo="organo", …)` → `ver_organo` |
| La posición de mi empresa en su sector | `ver_mi_mercado` |

Las empresas se nombran por id, nombre o NIF; si hay varias candidatas, pregunta cuál.
`licitador="mia"` en `simular_oferta` usa la oferta de la propia organización.

## Cómo razonar la baja

1. Parte de la **baja en contratos comparables** que da `competencia` (mismo órgano, CPV e
   importe parecido), no de una media del sector.
2. Mira **cuántos licitadores** hubo en esos contratos: con un solo licitador, adjudicar al
   precio de licitación es lo normal y no dice nada de la baja.
3. Compara con el **umbral de baja anormal** del pliego (si el pliego no lo fija, el art. 85
   del RGLCAP: con 3 o más licitadores, más de 10 puntos por debajo de la media) (búscalo con `buscar_en_documentos`:
   «ofertas anormalmente bajas», «temeraria») y con la fórmula de puntuación del precio.
4. Si hay mesa abierta, `simular_oferta` dice qué puesto, cuántos puntos y qué margen habría
   tenido otro precio, y si caería en anormal.

## Entrega

Rivales probables con su historial (contratos, importe, baja media), la baja recomendada como
**rango** con su porqué, el riesgo de anormalidad y las fuentes (licitaciones y actas
enlazadas). Importes sin IVA. Las empresas competidoras van siempre por separado: no las
agrupes en grupos empresariales.
