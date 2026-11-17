---
name: preparar-oferta
description: Prepara la documentación de una oferta a una licitación pública con Licita IA siguiendo los procedimientos tipo de la plataforma (qué presentar en cada sobre, estudio de costes, modelos y anexos a rellenar). Úsala cuando pidan «qué tenemos que presentar», «hazme el estudio de costes», «prepara la oferta», «qué anexos hay que rellenar» o la lista de documentación de un sobre.
license: MIT
metadata:
  autor: DPI Systems
  servidor: https://licita-ia.es/api/mcp
---

# Preparar una oferta

Licita IA guarda **recetas**: procedimientos tipo con sus fases, sus criterios de calidad y las
salidas que deben producir. Las ejecutas tú, fase a fase, con las herramientas del conector.

## 1. Elegir la receta

- `ver_receta()` sin argumentos lista las recetas disponibles (por ejemplo «Qué presentar»,
  «Estudio de costes», «Extraer modelos»).
- `ver_receta(procedimiento=<id o nombre>)` devuelve la receta entera: contexto, fases,
  criterios, salidas y qué herramienta del MCP usar en cada paso.
- Es una función de **plan de pago**. Si responde que el plan no la incluye, dilo una vez y
  sigue con el método manual de abajo.

## 2. Ejecutarla

- Sigue las fases **en orden** y respeta los criterios de cada una: son la definición de «bien
  hecho».
- Cada dato sale del pliego: `buscar_en_documentos` → `leer_documento`, con cita de documento y
  página. Las tablas de precios y los modelos de anexo, mejor con `modo="imagen"`.
- Si una fase pide un fichero del Workbench o el Excel de mediciones: `archivos_licitacion`.
- Lo que la receta marca como «sólo en la web» (guardar entregables, rellenar el Word con la
  plantilla de la empresa) no se puede hacer desde aquí: dilo y deja el contenido listo para
  copiar.
- Para la documentación propia de la empresa (certificados, solvencia acreditada, CV),
  `buscar_documentacion_corporativa` (plan de pago).

## 3. Método manual (sin receta)

1. `listar_documentos` y localiza el PCAP.
2. Busca «documentación a presentar», «sobre», «archivo electrónico», «DEUC», «declaración
   responsable», «anexo».
3. Construye la lista por sobre: documento, quién lo firma, formato, de dónde sale y página
   del pliego que lo exige.
4. Señala lo que suele hacer perder ofertas: compromisos de adscripción de medios, criterios
   que no pueden ir en el sobre administrativo, garantía provisional, plazo de presentación.

## 4. Entrega

Una tabla por sobre o fase, con la cita en cada fila, y al final lo que falta por decidir o
conseguir. Nunca inventes un requisito: si no está en el pliego, no va.
