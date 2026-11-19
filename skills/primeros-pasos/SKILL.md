---
name: primeros-pasos
description: Presenta Licita IA a quien acaba de conectarlo o pregunta qué puede hacer — comprueba su organización, sus líneas de actividad y su plan, y le propone tres primeras preguntas útiles para su empresa. Úsala con «¿qué puedes hacer con Licita?», «acabo de conectar Licita», «cómo empiezo» o la primera vez que se usa el conector en una conversación.
license: MIT
metadata:
  autor: DPI Systems
  servidor: https://licita-ia.es/api/mcp
---

# Primeros pasos con Licita IA

## Antes de nada: Licita IA tiene que estar conectado

- Si no tienes disponibles las herramientas de Licita IA (no aparecen, o piden iniciar sesión),
  di a la persona que conecte Licita IA. En ChatGPT: Complementos → Licita IA → Conectar. En
  Claude: Personalizar → Conectores → Licita IA → Conectar.
  - Si no tiene cuenta, la crea en ese mismo paso, y al terminar vuelve sola a autorizar.
  - No respondas «no hay datos»: sin conexión no has consultado nada.
- Si combinas estos datos con los de otra fuente, di de dónde sale cada uno.

## 1. Mira quién es

Llama a `ver_mi_organizacion()`. Devuelve la empresa enlazada, su descripción, las líneas de
actividad (lo que Licita le recomienda) y el plan.

- **Sin empresa o sin líneas:** las recomendaciones serán pobres. Ofrece configurarlas con
  `configurar_lineas`, a partir de lo que la persona cuente que hace su empresa, y confirma
  antes de guardar.
- **Funciones no incluidas:** si una herramienta responde que la organización no la tiene
  disponible, dilo una vez, tal cual, y sigue con lo que sí funciona.

## 2. Enséñale lo que hay hoy

Llama a `recomendar_licitaciones()` y resume en dos o tres líneas lo más interesante: cuántas
oportunidades hay, cuáles cierran pronto y de qué organismos.

## 3. Propón tres preguntas

Adáptalas a su sector y zona, por ejemplo:

1. «¿Qué licitaciones de <su sector> cierran en las próximas dos semanas en <su comunidad>?»
2. «Estudia la licitación <una de las recomendadas>: ¿nos presentamos?»
3. «¿Quién nos gana más contratos y con qué baja?»

## 4. Cómo funciona

- Todo lo que ve el asistente está limitado a su organización y a su plan.
- Licita no recibe la conversación, sólo las llamadas a sus herramientas.
- Lo que cambia algo para el equipo (descartar, comentar, líneas, análisis) se hace con su cuenta
  y siempre con confirmación.
- La conexión se revoca en Licita → Ajustes → Conexiones.

Sé breve: es una bienvenida, no un manual.
