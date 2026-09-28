
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

## 3.1.3.2. Landing Page Mock-up

Los mock-ups del Landing Page se elaboraron en **Figma** aplicando el **Design System** de SaludYa, el cual define la paleta de colores, tipografía, espaciado, iconografía y componentes reutilizables.

### Design System aplicado

| Elemento | Valor | Uso |
|:---|:---|:---|
| Color primario | `#0b8f6b` | Botones, enlaces, iconos |
| Color primario oscuro | `#076e52` | Hover, títulos de tarjetas |
| Color primario claro | `#e6f5f0` | Fondos de sección, hover |
| Color de acento | `#ffb703` | Foco visible, detalles |
| Texto | `#1c2b2a` | Texto principal |
| Texto atenuado | `#56706d` | Párrafos secundarios |
| Fondo / alterno | `#ffffff` / `#f4faf8` | Base y secciones alternas |
| Borde | `#d8e6e2` | Tarjetas y separadores |
| Tipografía | Segoe UI / Helvetica Neue / Arial | Base y títulos |
| Radios | 6px / 12px / 20px | Tarjetas, botones, contenedores |
| Sombras | sm / md / lg | Profundidad |


### Mock-up Desktop Web Browser

| Sección | Descripción visual |
|:---|:---|
| Header | Fondo blanco con desenfoque, logotipo a la izquierda, menú con subrayado activo, selector ES/EN y CTA primario |
| Hero | Gradiente de `#e6f5f0` a `#ffffff`, título 2.75rem, botones primario y ghost, imagen con sombra `--shadow-lg` |
| Problema | Fondo alterno, tarjetas blancas con hover elevado |
| Solución | Fondo blanco, dos bloques con listas y viñetas en color primario |
| Videos | Fondo alterno, iframes 16:9 con border-radius 6px |
| Modelo de negocio | Fondo primario claro, tres tarjetas con títulos en color oscuro |
| Testimonios | Fondo blanco, tarjetas con comilla decorativa y cita en cursiva |
| Sobre nosotros | Fondo alterno, misión/visión con iconos circulares, valores en 4 columnas, equipo con fotos circulares |
| Descarga | Gradiente verde, texto blanco, botones blancos con sombra |
| Footer | Fondo `#0d2722`, texto claro, logotipo y enlaces |


### Mock-up Mobile Web Browser

| Sección | Descripción visual |
|:---|:---|
| Header | Logotipo reducido y botón hamburguesa con animación a X |
| Hero | Una columna, imagen primero, título 1.75rem, botones al 100% |
| Secciones | Una columna con padding reducido |
| Testimonios | Tarjetas apiladas |
| Equipo | Fotos de 80x80 px |
| Descarga | Botones apilados |
| Footer | Una columna, logotipo a 38px |


### Aplicación del Design System y diseño inclusivo

| Criterio | Aplicación |
|:---|:---|
| Branding | Logotipo y paleta verde/amarillo consistentes en header y footer |
| Tipografía | Jerarquía clara, texto a la izquierda, interlineado 1.6 |
| Colores | Contraste WCAG AA, color primario para acciones y acento para foco |
| Espaciado | Escala consistente en todas las secciones |
| Diseño inclusivo | `aria-label`, `aria-expanded`, `aria-pressed`, textos alternativos, área táctil adecuada y `prefers-reduced-motion` |
| Internacionalización | Selector ES/EN con carga dinámica de textos |
| Arquitectura de información | Navegación sticky y scroll suave compensado por el header |


### Componentes reutilizables

| Componente | Descripción | Estados |
|:---|:---|:---|
| Botón primario | Fondo `#0b8f6b`, texto blanco, radio 12px | Default, hover, focus |
| Botón ghost | Fondo transparente, borde `#0b8f6b` | Default, hover, focus |
| Tarjeta | Fondo blanco, borde `#d8e6e2`, sombra sm | Default, hover con elevación |
| Testimonio | Tarjeta con comilla y cita en cursiva | Default |
| Miembro del equipo | Tarjeta con foto circular, nombre y rol | Default, hover |
| Selector de idioma | Botones ES/EN agrupados | Activo, inactivo |
| Nav toggle | Botón hamburguesa animado | Cerrado, abierto |


### Conclusión de la sección

Los wireframes y mock-ups del Landing Page evidencian la aplicación coherente del Design System, los principios de diseño inclusivo y la arquitectura de información. La propuesta comunica el modelo de negocio de RuwaLabs, el problema que resuelve SaludYa y los beneficios para ambos segmentos objetivo, facilitando la conversión del visitante hacia la descarga de las aplicaciones móviles. La inclusión de internacionalización y accesibilidad garantiza una experiencia inclusiva y consistente.