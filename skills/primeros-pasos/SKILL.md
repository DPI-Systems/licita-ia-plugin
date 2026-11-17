---
name: primeros-pasos
description: Presenta Licita IA a quien acaba de conectarlo o pregunta qué puede hacer — comprueba su organización, sus líneas de actividad y su plan, y le propone tres primeras preguntas útiles para su empresa. Úsala con «¿qué puedes hacer con Licita?», «acabo de conectar Licita», «cómo empiezo» o la primera vez que se usa el conector en una conversación.
license: MIT
metadata:
  autor: DPI Systems
  servidor: https://licita-ia.es/api/mcp
---

# Primeros pasos con Licita IA

## 1. Mira quién es

Llama a `ver_mi_organizacion()`. Devuelve la empresa enlazada, su descripción, las líneas de
actividad (lo que Licita le recomienda) y el plan.

- **Sin empresa o sin líneas:** las recomendaciones serán pobres. Ofrece configurarlas con
  `configurar_lineas`, a partir de lo que la persona cuente que hace su empresa, y confirma
  antes de guardar.
- **Plan gratuito:** todo lo de consultar funciona. Procesar pliegos a fondo, las recetas, los
  ficheros del Workbench y la documentación corporativa son de pago. Dilo una vez, sin vender.

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
