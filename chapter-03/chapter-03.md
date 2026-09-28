
# 3.1.3. Landing Page UI Design

## 3.1.3.1. Landing Page Wireframe

Los wireframes del Landing Page se elaboraron en **Figma** para **Desktop Web Browser** y **Mobile Web Browser**, definiendo la estructura, la jerarquía visual y el flujo de navegación antes de la construcción de los mock-ups.

### Estructura general del wireframe

El Landing Page se organiza en diez secciones, en el siguiente orden:

1. **Header / Navbar:** barra sticky con logotipo, menú principal, selector de idioma ES/EN y CTA "Descargar app". En móvil se colapsa con botón hamburguesa.
2. **Hero:** eyebrow, título, subtítulo, dos botones de acción, tres bullets de beneficios e imagen representativa.
3. **Problema:** tres tarjetas (madrugar sin certeza, cupos que se pierden, gestión en papel).
4. **Solución:** dos bloques (app pacientes y app personal de salud) con seis funcionalidades cada uno.
5. **Videos:** dos bloques embebidos (About the Product y About the Team).
6. **Modelo de negocio:** tres tarjetas (implementación institucional, convenios, soporte y capacitación).
7. **Testimonios:** seis tarjetas con citas de entrevistados.
8. **Sobre nosotros:** misión, visión, valores y equipo RuwaLabs.
9. **Descarga:** botones de Google Play y App Store.
10. **Footer:** logotipo, enlaces, proyecto, contacto y copyright.

### Wireframe Desktop Web Browser

| Sección | Layout | Elementos clave | Comportamiento |
|:---|:---|:---|:---|
| Header | Flex: logo / menú / idioma / CTA | Logotipo, 4 enlaces, ES/EN, CTA | Sticky, altura 72 px |
| Hero | Grid 2 columnas (1.1fr / 1fr) | Título, subtítulo, 2 botones, 3 bullets, imagen | Imagen a la derecha |
| Problema | Grid 3 columnas | 3 tarjetas | Igual altura |
| Solución | Grid 2 columnas | 2 bloques con listas | — |
| Videos | Grid 2 columnas | 2 iframes 16:9 | — |
| Modelo de negocio | Grid 3 columnas | 3 tarjetas | — |
| Testimonios | Grid 3 columnas | 6 tarjetas (2 filas) | — |
| Sobre nosotros | Misión/visión 2 col; valores 4 col; equipo auto-fit | Textos, iconos, fotos | — |
| Descarga | Centrado | 2 botones store | En línea |
| Footer | Grid 4 columnas | Logo, enlaces, proyecto, contacto | 1.5fr / 1fr / 1fr / 1fr |


### Wireframe Mobile Web Browser

| Sección | Layout | Elementos clave | Comportamiento |
|:---|:---|:---|:---|
| Header | Flex: logo + hamburguesa | Logotipo reducido, botón toggle | Menú desplegable vertical |
| Hero | 1 columna | Imagen primero, título, subtítulo, botones apilados | `order: -1` |
| Problema | 1 columna | 3 tarjetas apiladas | — |
| Solución | 1 columna | 2 bloques apilados | — |
| Videos | 1 columna | 2 iframes apilados | — |
| Modelo de negocio | 1 columna | 3 tarjetas apiladas | — |
| Testimonios | 1 columna | 6 tarjetas apiladas | — |
| Sobre nosotros | 1 columna | Misión, visión, valores y equipo apilados | — |
| Descarga | 1 columna | Botones apilados al 100% | — |
| Footer | 1 columna | 4 secciones apiladas | — |


### Principios de diseño aplicados

- **Jerarquía visual:** tamaños tipográficos diferenciados (h1 > h2 > h3) y fondos alternos entre secciones.
- **Diseño inclusivo:** contraste de colores, fuente legible, área táctil mínima de 40x40 px y foco visible.
- **Arquitectura de información:** secuencia problema → solución → evidencia → equipo → descarga.
- **Consistencia:** escala de espaciado uniforme y radios de borde comunes.