## 3.1.1. Style Guidelines

### 3.1.1.1. General Style Guidelines

Las presentes guías de estilo establecen los lineamientos visuales y de comunicación que rigen la identidad de **SaludYa**, producto digital desarrollado por la startup **RuwaLabs**. Su propósito es garantizar consistencia en todos los productos de la solución (Landing Page, aplicaciones móviles para pacientes y personal de salud, y servicios web), facilitando el trabajo colaborativo del equipo y asegurando una experiencia coherente para los usuarios.

Las decisiones aquí documentadas se sustentan en los principios de diseño inclusivo, accesibilidad (a11y) e internacionalización (i18n) establecidos en el proyecto, y toman como referencia buenas prácticas de Design Systems reconocidos, adaptadas al contexto de los establecimientos públicos de salud del Perú.

#### Branding

La identidad de marca de SaludYa se construye sobre los siguientes elementos:

| Elemento | Descripción |
|:---|:---|
| Nombre | SaludYa |
| Startup | RuwaLabs |
| Logotipo | Isotipo con icono de salud (cruz/maleta) en color primario, acompañado del nombre "SaludYa" en tipografía sans-serif |
| Isotipo | Símbolo gráfico que representa el acceso ágil a la salud, usado en favicon, app icon y elementos de navegación |
| Tagline | "Citas médicas sin colas para el Perú" |
| Tono de comunicación | Formal pero cercano, empático, claro y directo |
| Público objetivo | Pacientes de zonas urbanas periféricas y personal asistencial/administrativo de establecimientos públicos de salud |
| Valores de marca | Accesibilidad, transparencia, colaboración e impacto social |

El logotipo se utiliza en el header y footer del Landing Page, así como en las pantallas de inicio de sesión de ambas aplicaciones móviles. Su versión reducida (`--logo-height-sm`) se emplea en contextos donde el espacio es limitado, como la versión móvil del Landing Page.

#### Typography

La tipografía seleccionada prioriza la legibilidad en pantallas de distintos tamaños y en contextos de baja iluminación, frecuentes en establecimientos de salud.

##### Landing Page (web)

| Elemento | Fuente | Tamaño | Peso | Uso |
|:---|:---|:---|:---|:---|
| Fuente base | Segoe UI / Helvetica Neue / Arial | 16px (1rem) | 400 | Texto general, párrafos |
| Fuente de títulos | Segoe UI / Helvetica Neue / Arial | Variable | 700 | Encabezados h1–h4 |
| h1 | — | 2.5rem (40px) | 700 | Título principal del Hero |
| h2 | — | 2rem (32px) | 700 | Títulos de sección |
| h3 | — | 1.35rem (21.6px) | 700 | Títulos de tarjetas y subsecciones |
| h4 | — | 1.1rem (17.6px) | 600 | Subtítulos internos |
| Interlineado | — | 1.6 | — | Cuerpo de texto |
| Interlineado títulos | — | 1.25 | — | Encabezados |

La elección de fuentes del sistema (Segoe UI, Helvetica Neue, Arial) responde a criterios de rendimiento, disponibilidad multiplataforma y familiaridad para el usuario, evitando dependencias externas que afecten la carga del Landing Page.

##### Aplicaciones móviles (Android)

| Elemento | Fuente | Tamaño | Peso | Uso |
|:---|:---|:---|:---|:---|
| Fuente base | Inter | Variable | 400 | Texto general |
| Fuente de títulos | Inter | Variable | 600 | Encabezados y énfasis |
| Body Bold Large | Inter | 18sp / 150% (27sp) | 600 | Cuerpo destacado, títulos de tarjeta |
| Body Extra Small | Inter | 12sp / 150% (18sp) | 400 | Texto secundario, captions |

En las aplicaciones móviles se utiliza la familia **Inter** con `letter-spacing` negativo en textos destacados (`-0.18px` en Body Bold Large) y `font-feature-settings: 'calt' off` para desactivar ligaduras contextuales. Los tamaños se expresan en **sp** (scale-independent pixels), conforme a las guías de Material Design para Android.

#### Colors

La paleta de colores de SaludYa se inspira en el sector salud, utilizando tonos verdes que transmiten confianza, bienestar y cercanía, complementados con un acento amarillo para elementos de foco y llamadas de atención.

##### Landing Page (web)

| Color | Código HEX | Uso principal |
|:---|:---|:---|
| Primario | `#0b8f6b` | Botones, enlaces, iconos, acentos |
| Primario oscuro | `#076e52` | Hover de botones, títulos de tarjetas |
| Primario claro | `#e6f5f0` | Fondos de sección, hover de navegación |
| Acento | `#ffb703` | Foco visible, detalles de marca |
| Texto | `#1c2b2a` | Texto principal |
| Texto atenuado | `#56706d` | Párrafos secundarios, roles |
| Fondo | `#ffffff` | Fondo base |
| Fondo alterno | `#f4faf8` | Secciones alternas |
| Borde | `#d8e6e2` | Bordes de tarjetas y separadores |
| Peligro | `#c0392b` | Mensajes de error (formularios) |
| Blanco | `#ffffff` | Texto sobre fondos oscuros |
| Footer | `#0d2722` | Fondo del pie de página |

##### Aplicaciones móviles (Android)

| Token | Código HEX | Uso principal |
|:---|:---|:---|
| WF White | `#FFFFFF` | Fondo base, superficies |
| WF 100 | `#F7F9FC` | Fondo alterno muy claro |
| WF 200 | `#EDF0F7` | Fondos de tarjetas y contenedores |
| WF 300 | `#E2E7F0` | Separadores suaves |
| WF 400 | `#CBD2E0` | Bordes suaves, elementos inactivos |
| WF 600 | `#717D96` | Texto secundario |
| WF 700 | `#4A5468` | Texto de énfasis medio |
| WF 800 | `#2D3648` | Texto principal, bordes |
| WF 900 | `#1A202C` | Texto de máximo contraste |
| Negro | `#000000` | Texto en superficies claras |
| Gris claro | `#D9D9D9` | Placeholders, elementos deshabilitados |

Los colores fueron seleccionados para cumplir con el nivel de contraste **WCAG AA**, garantizando legibilidad para personas con baja visión o daltonismo.

#### Spacing

##### Landing Page (web)

Se define una escala de espaciado consistente basada en múltiplos de 0.25rem, aplicada a márgenes, padding y separación entre elementos en el Landing Page.

| Variable | Valor | Uso |
|:---|:---|:---|
| `--space-1` | 0.25rem (4px) | Separaciones mínimas |
| `--space-2` | 0.5rem (8px) | Padding interno de botones pequeños |
| `--space-3` | 0.75rem (12px) | Separación entre elementos inline |
| `--space-4` | 1rem (16px) | Padding estándar |
| `--space-5` | 1.5rem (24px) | Separación entre bloques |
| `--space-6` | 2rem (32px) | Separación entre secciones |

##### Aplicaciones móviles (Android)

| Token | Valor | Uso |
|:---|:---|:---|
| `--space-1` | 2dp | Separaciones mínimas, bordes internos |
| `--space-2` | 8dp | Gap entre íconos y texto, separación inline |
| `--space-3` | 11dp | Padding vertical de contenedores pequeños |
| `--space-4` | 12dp | Padding interno de botones y cards |
| `--space-5` | 28dp | Padding horizontal de secciones |
| `--space-6` | 45dp | Separación entre bloques principales |

Los valores en **dp** (density-independent pixels) provienen directamente de los tokens definidos en Figma y se aplican a padding, márgenes y gaps en las aplicaciones móviles.

#### Border Radius

##### Landing Page (web)

| Variable | Valor | Uso |
|:---|:---|:---|
| `--radius-sm` | 6px | Botones pequeños, badges |
| `--radius-md` | 12px | Botones, tarjetas |
| `--radius-lg` | 20px | Contenedores destacados, hero |

##### Aplicaciones móviles (Android)

| Token | Valor | Uso |
|:---|:---|:---|
| `--radius-sm` | 12dp | Cards superiores (radio superior únicamente) |
| `--radius-md` | 12dp | Botones y contenedores estándar |

En las aplicaciones móviles los contenedores principales utilizan un radio superior de **12dp** (`border-radius: 12dp 12dp 0 0`), reservado para cards ancladas a la parte inferior de la pantalla.

#### Shadows

##### Landing Page (web)

| Variable | Valor | Uso |
|:---|:---|:---|
| `--shadow-sm` | `0 1px 3px rgba(0, 0, 0, 0.08)` | Tarjetas en reposo |
| `--shadow-md` | `0 6px 18px rgba(11, 143, 107, 0.12)` | Tarjetas en hover, menú móvil |
| `--shadow-lg` | `0 12px 32px rgba(11, 143, 107, 0.18)` | Hero, elementos destacados |

##### Aplicaciones móviles (Android)

Las aplicaciones móviles **no emplean sombras** en su diseño actual. La jerarquía visual se resuelve mediante contraste de color, bordes y espaciado, siguiendo un enfoque flat consistente con los wireframes de alta fidelidad definidos en Figma.


#### Tone of Voice

El tono de comunicación de SaludYa se define a partir de cuatro dimensiones:

| Dimensión | Elección | Justificación |
|:---|:---|:---|
| Divertido / Serio | Serio con toques cercanos | El contexto de salud requiere credibilidad, pero se busca cercanía con el paciente |
| Formal / Casual | Formal | Se comunica con usuarios de diversos niveles educativos y con personal institucional |
| Respetuoso / Irreverente | Respetuoso | Se aborda un tema sensible como la salud pública |
| Entusiasta / Sereno | Sereno | Se transmite confianza y estabilidad, evitando promesas exageradas |

El lenguaje empleado en el Landing Page y las aplicaciones evita tecnicismos innecesarios, prioriza frases cortas y utiliza un vocabulario accesible para ambos segmentos objetivo.

#### Iconography

Se utiliza la librería **Font Awesome 6.5.2** para la iconografía del Landing Page, seleccionando iconos universales y reconocibles:

| Icono | Uso |
|:---|:---|
| `fa-circle-check` | Bullets de beneficios en el Hero |
| `fa-bullseye` | Misión en la sección Sobre nosotros |
| `fa-eye` | Visión en la sección Sobre nosotros |
| `fa-universal-access` | Valor de accesibilidad |
| `fa-shield-halved` | Valor de transparencia |
| `fa-handshake` | Valor de colaboración |
| `fa-heart-pulse` | Valor de impacto social |

#### Design System de referencia

Las decisiones visuales de SaludYa toman como referencia principios de **Material Design** (jerarquía, elevación, uso del color) y buenas prácticas de Design Systems accesibles, adaptadas al contexto peruano y a las restricciones técnicas del proyecto (rendimiento en redes móviles, compatibilidad con dispositivos de gama media y baja).

## 3.1.2. Information Architecture

La arquitectura de información de **SaludYa** define la manera en que se organiza, etiqueta, navega y busca el contenido en los productos digitales que forman parte de la solución: el Landing Page, la aplicación móvil para pacientes y la aplicación móvil para el personal de salud. Su objetivo es que los visitantes y usuarios encuentren sin esfuerzo la información o funcionalidad que necesitan, reduciendo la carga cognitiva y facilitando la adopción del producto.

Las decisiones aquí documentadas se sustentan en los principios de diseño inclusivo, accesibilidad (a11y) e internacionalización (i18n), y consideran las características de ambos segmentos objetivo: pacientes de zonas urbanas periféricas y personal asistencial y administrativo de establecimientos públicos de salud.

### 3.1.2.1. Organization Systems

La organización del contenido en SaludYa combina distintos sistemas según el tipo de información y el objetivo del usuario en cada producto.

#### Landing Page

| Sección | Sistema de organización | Justificación |
|:---|:---|:---|
| Header | Jerárquico + matricial | Menú horizontal con enlaces principales y selector de idioma; organización matricial por categorías de contenido |
| Hero | Jerárquico | Prioriza mensaje principal, subtítulo, CTAs y beneficios en orden de importancia |
| Problema | Jerárquico | Tres tarjetas con igual jerarquía, organizadas por tema |
| Solución | Jerárquico | Dos bloques comparativos (paciente vs. personal) con listas de funcionalidades |
| Videos | Cronológico | Dos bloques secuenciales: About the Product y About the Team |
| Modelo de negocio | Jerárquico | Tres tarjetas con igual jerarquía |
| Testimonios | Alfabético | Seis tarjetas organizadas por nombre del entrevistado |
| Sobre nosotros | Jerárquico | Misión, visión, valores y equipo en orden de relevancia |
| Descarga | Jerárquico | Botones de tiendas como acción principal |
| Footer | Jerárquico | Cuatro columnas organizadas por categoría (marca, enlaces, proyecto, contacto) |

#### Aplicación móvil para pacientes

| Sección | Sistema de organización | Justificación |
|:---|:---|:---|
| Inicio | Jerárquico | Accesos rápidos a reserva, lista de espera y citas próximas |
| Reserva de citas | Secuencial (step-by-step) | Flujo paso a paso: especialidad → establecimiento → fecha → confirmación |
| Lista de espera | Cronológico | Orden por fecha de inscripción y disponibilidad |
| Mis citas | Cronológico | Orden por fecha de atención |
| Familiares a cargo | Alfabético | Orden por nombre del familiar |
| Perfil | Jerárquico | Datos personales, notificaciones y configuración |

#### Aplicación móvil para personal de salud

| Sección | Sistema de organización | Justificación |
|:---|:---|:---|
| Panel principal | Jerárquico | Resumen del flujo de atención del día |
| Gestión de citas | Cronológico | Orden por hora de atención |
| Lista de espera | Cronológico | Orden por fecha de inscripción |
| Cancelaciones e inasistencias | Cronológico | Orden por fecha del evento |
| Pacientes | Alfabético | Orden por apellido |
| Reportes | Jerárquico | Acceso a métricas y exportación |

#### Esquemas de categorización aplicados

- **Alfabético:** testimonios, pacientes, familiares a cargo.
- **Cronológico:** citas, lista de espera, cancelaciones, reportes por fecha.
- **Por tópicos:** secciones del Landing Page (problema, solución, modelo de negocio).
- **Según audiencia:** separación entre app pacientes y app personal de salud.
- **Jerárquico:** estructura general de navegación en todos los productos.

### 3.1.2.2. Labelling Systems

Las etiquetas de SaludYa buscan ser simples, claras y libres de ambigüedad, empleando el mínimo número de palabras posible y un vocabulario accesible para ambos segmentos objetivo.

#### Landing Page

| Etiqueta | Representa |
|:---|:---|
| Producto | Sección con el problema y la solución |
| Videos | Bloque con los videos About the Product y About the Team |
| Testimonios | Citas de entrevistados |
| Sobre nosotros | Información de la startup y el equipo |
| Descargar app | CTA principal hacia las tiendas |
| ES / EN | Selector de idioma |

#### Aplicación móvil para pacientes

| Etiqueta | Representa |
|:---|:---|
| Inicio | Pantalla principal |
| Reservar cita | Inicio del flujo de reserva |
| Lista de espera | Inscripción y seguimiento de cupos |
| Mis citas | Citas reservadas por el paciente |
| Familiares | Gestión de dependientes |
| Perfil | Datos personales y configuración |

#### Aplicación móvil para personal de salud

| Etiqueta | Representa |
|:---|:---|
| Panel | Resumen del día |
| Citas | Gestión de citas del establecimiento |
| Lista de espera | Pacientes en espera de cupo |
| Cancelaciones | Registro de cancelaciones e inasistencias |
| Pacientes | Búsqueda y consulta de pacientes |
| Reportes | Métricas y exportación |

#### Asociaciones entre etiquetas

- **Reservar cita** se asocia con **Lista de espera** cuando no hay cupos disponibles.
- **Mis citas** se asocia con **Cancelaciones** en la app del personal.
- **Familiares** se asocia con **Reservar cita** para agendar a nombre de un dependiente.
- **Perfil** se asocia con **Notificaciones** y **Configuración**.

### 3.1.2.3. SEO Tags and Meta Tags

Los SEO Tags y Meta Tags del Landing Page se definen en el `<head>` del documento y buscan posicionar el sitio en buscadores para consultas relacionadas con citas médicas en establecimientos públicos de salud del Perú.

#### Landing Page

| Tag | Valor |
|:---|:---|
| Title | SaludYa — Citas médicas sin colas |
| Meta Description | SaludYa — Plataforma digital que conecta pacientes y personal de establecimientos públicos de salud en Perú. Reserva de citas, lista de espera dinámica y check-in por QR. |
| Meta Keywords | SaludYa, citas médicas, MINSA, SIS, salud pública Perú, reserva de citas, lista de espera, RuwaLabs |
| Meta Author | RuwaLabs |
| Meta Robots | index, follow |
| Open Graph Title | SaludYa — Citas médicas sin colas |
| Open Graph Description | Reserva tu cita, recibe avisos de cupos liberados y llega justo a tu atención. Para pacientes y personal de establecimientos públicos de salud. |
| Open Graph Image | `assets/img/icon-saludya.png` |
| Open Graph Type | website |
| Open Graph URL | https://saludya.pe/ |
| Twitter Card | summary_large_image |
| Twitter Title | SaludYa — Citas médicas sin colas |
| Twitter Description | Reserva de citas, lista de espera dinámica y check-in por QR para establecimientos públicos de salud. |
| Twitter Image | `assets/img/icon-saludya.png` |

#### ASO (App Store Optimization)

| Elemento | App pacientes | App personal de salud |
|:---|:---|:---|
| App Title | SaludYa — Citas médicas | SaludYa Staff — Gestión de citas |
| App Subtitle | Reserva sin colas | Gestión del flujo de atención |
| App Keywords | citas médicas, MINSA, SIS, salud pública, reserva, lista de espera | gestión de citas, personal de salud, MINSA, SIS, flujo de atención |
| App Description | Reserva tu cita en establecimientos públicos de salud, recibe avisos de cupos liberados y gestiona a tus familiares a cargo. | Administra las citas, la lista de espera y el flujo de atención de tu establecimiento de salud en tiempo real. |

### 3.1.2.4. Searching Systems

Los sistemas de búsqueda de SaludYa están diseñados para evitar que el usuario se pierda entre el volumen de información, ofreciendo filtros claros y resultados consistentes.

#### Landing Page

| Acción | Descripción |
|:---|:---|
| Navegación por anclas | Enlaces del header que llevan a secciones específicas (Producto, Videos, Testimonios, Sobre nosotros) |
| Selector de idioma | Búsqueda de contenido en ES o EN |
| Scroll suave | Desplazamiento con compensación de altura del header |

#### Aplicación móvil para pacientes

| Búsqueda | Filtros disponibles | Resultado |
|:---|:---|:---|
| Buscar establecimiento | Distrito, especialidad | Lista de establecimientos con disponibilidad |
| Buscar especialidad | Establecimiento, disponibilidad | Lista de especialidades y cupos |
| Buscar cita | Fecha, especialidad, establecimiento | Lista de citas reservadas |
| Buscar familiar | Nombre | Ficha del familiar a cargo |

#### Aplicación móvil para personal de salud

| Búsqueda | Filtros disponibles | Resultado |
|:---|:---|:---|
| Buscar paciente | Apellido, DNI, historia clínica | Ficha del paciente |
| Buscar cita | Fecha, especialidad, estado | Lista de citas |
| Buscar cancelación | Fecha, especialidad | Registro de cancelaciones |
| Buscar cupo liberado | Fecha, especialidad | Lista de cupos disponibles |

#### Visualización de resultados

Los resultados se muestran en listas ordenadas cronológica o alfabéticamente, con indicadores visuales de estado (disponible, reservado, cancelado, atendido) y opciones de acción directa (reservar, cancelar, confirmar).

### 3.1.2.5. Navigation Systems

Los sistemas de navegación de SaludYa guían al usuario a través del Landing Page y las aplicaciones móviles, permitiéndole cumplir sus metas e interactuar de forma satisfactoria con el producto.

#### Landing Page

| Acción | Descripción |
|:---|:---|
| Navegación sticky | El header permanece visible al hacer scroll |
| Menú de anclas | Enlaces directos a secciones |
| Botón hamburguesa | En vista móvil, despliega el menú verticalmente |
| Scroll suave | Desplazamiento con compensación del header |
| Enlace activo | Resaltado del enlace correspondiente a la sección visible |
| Selector de idioma | Cambio dinámico ES/EN sin recargar la página |

#### Aplicación móvil para pacientes

| Acción | Descripción |
|:---|:---|
| Barra de navegación inferior | Accesos a Inicio, Reservar, Mis citas, Familiares y Perfil |
| Flujo secuencial | Reserva paso a paso con retroceso y confirmación |
| Notificaciones push | Avisos de cupos liberados y recordatorios |
| Check-in por QR | Acceso rápido a la atención el día de la cita |

#### Aplicación móvil para personal de salud

| Acción | Descripción |
|:---|:---|
| Barra de navegación inferior | Accesos a Panel, Citas, Lista de espera, Pacientes y Reportes |
| Filtros por fecha y especialidad | Segmentación del flujo de atención |
| Actualización en tiempo real | Visualización del estado de cada paciente |
| Reasignación de cupos | Acción directa sobre cupos liberados |

#### Recorrido del usuario

1. El visitante llega al Landing Page y comprende el problema y la solución.
2. Revisa los videos y testimonios de validación.
3. Conoce el equipo y el modelo de negocio.
4. Descarga la aplicación correspondiente a su perfil.
5. En la app, navega por las secciones principales mediante la barra inferior.
6. Completa sus tareas (reservar, gestionar, consultar) con flujos claros y retroalimentación visual.

### 3.1.2.1. Organization Systems

La organización del contenido en SaludYa combina distintos sistemas según el tipo de información y el objetivo del usuario en cada producto. Se aplican principios de organización visual (jerárquica, secuencial y matricial) y esquemas de categorización (alfabético, cronológico, por tópicos y según audiencia), buscando siempre reducir la carga cognitiva y facilitar el acceso a la información.

#### Landing Page

| Sección | Sistema de organización visual | Esquema de categorización | Justificación |
|:---|:---|:---|:---|
| Header | Jerárquico + matricial | Por tópicos | Menú horizontal con enlaces principales y selector de idioma; organización matricial por categorías de contenido |
| Hero | Jerárquico | Por tópicos | Prioriza mensaje principal, subtítulo, CTAs y beneficios en orden de importancia |
| Problema | Jerárquico | Por tópicos | Tres tarjetas con igual jerarquía, organizadas por tema |
| Solución | Jerárquico | Según audiencia | Dos bloques comparativos (paciente vs. personal) con listas de funcionalidades |
| Videos | Secuencial | Cronológico | Dos bloques secuenciales: About the Product y About the Team |
| Modelo de negocio | Jerárquico | Por tópicos | Tres tarjetas con igual jerarquía |
| Testimonios | Matricial | Alfabético | Seis tarjetas organizadas por nombre del entrevistado |
| Sobre nosotros | Jerárquico | Por tópicos | Misión, visión, valores y equipo en orden de relevancia |
| Descarga | Jerárquico | Por tópicos | Botones de tiendas como acción principal |
| Footer | Jerárquico | Por tópicos | Cuatro columnas organizadas por categoría (marca, enlaces, proyecto, contacto) |

#### Aplicación móvil para pacientes

| Sección | Sistema de organización visual | Esquema de categorización | Justificación |
|:---|:---|:---|:---|
| Inicio | Jerárquico | Por tópicos | Accesos rápidos a reserva, lista de espera y citas próximas |
| Reserva de citas | Secuencial (step-by-step) | Cronológico | Flujo paso a paso: especialidad → establecimiento → fecha → confirmación |
| Lista de espera | Secuencial | Cronológico | Orden por fecha de inscripción y disponibilidad |
| Mis citas | Jerárquico | Cronológico | Orden por fecha de atención |
| Familiares a cargo | Jerárquico | Alfabético | Orden por nombre del familiar |
| Perfil | Jerárquico | Por tópicos | Datos personales, notificaciones y configuración |

#### Aplicación móvil para personal de salud

| Sección | Sistema de organización visual | Esquema de categorización | Justificación |
|:---|:---|:---|:---|
| Panel principal | Jerárquico | Por tópicos | Resumen del flujo de atención del día |
| Gestión de citas | Jerárquico | Cronológico | Orden por hora de atención |
| Lista de espera | Secuencial | Cronológico | Orden por fecha de inscripción |
| Cancelaciones e inasistencias | Jerárquico | Cronológico | Orden por fecha del evento |
| Pacientes | Jerárquico | Alfabético | Orden por apellido |
| Reportes | Jerárquico | Cronológico | Acceso a métricas y exportación por fecha |

#### Esquemas de categorización aplicados

- **Alfabético:** testimonios en el Landing Page, pacientes y familiares a cargo en las aplicaciones.
- **Cronológico:** citas, lista de espera, cancelaciones, reportes y videos.
- **Por tópicos:** secciones del Landing Page (problema, solución, modelo de negocio, equipo) y pantallas principales de las aplicaciones.
- **Según audiencia:** separación entre la app para pacientes y la app para personal de salud, y bloques diferenciados en la sección Solución del Landing Page.
- **Jerárquico:** estructura general de navegación en todos los productos, priorizando la información más relevante para el usuario.
- **Secuencial:** flujos paso a paso en la reserva de citas y en la inscripción a la lista de espera.
- **Matricial:** grid de testimonios en el Landing Page, donde el usuario puede explorar varias tarjetas sin un orden estricto.

### 3.1.2.2. Labelling Systems

Las etiquetas de SaludYa buscan ser simples, claras y libres de ambigüedad, empleando el mínimo número de palabras posible y un vocabulario accesible para ambos segmentos objetivo. Se prioriza el uso de términos del dominio de la salud y de la gestión de citas, evitando tecnicismos innecesarios y anglicismos.

#### Landing Page

| Etiqueta | Representa |
|:---|:---|
| Producto | Sección con el problema y la solución |
| Videos | Bloque con los videos About the Product y About the Team |
| Testimonios | Citas de entrevistados |
| Sobre nosotros | Información de la startup y el equipo |
| Descargar app | CTA principal hacia las tiendas |
| ES / EN | Selector de idioma |
| Google Play | Botón de descarga para Android |
| App Store | Botón de descarga para iOS |

#### Aplicación móvil para pacientes

| Etiqueta | Representa |
|:---|:---|
| Inicio | Pantalla principal con accesos rápidos |
| Reservar cita | Inicio del flujo de reserva |
| Lista de espera | Inscripción y seguimiento de cupos |
| Mis citas | Citas reservadas por el paciente |
| Familiares | Gestión de dependientes |
| Perfil | Datos personales y configuración |
| Check-in QR | Acceso rápido el día de la cita |

#### Aplicación móvil para personal de salud

| Etiqueta | Representa |
|:---|:---|
| Panel | Resumen del día |
| Citas | Gestión de citas del establecimiento |
| Lista de espera | Pacientes en espera de cupo |
| Cancelaciones | Registro de cancelaciones e inasistencias |
| Pacientes | Búsqueda y consulta de pacientes |
| Reportes | Métricas y exportación |
| Reasignar cupo | Acción sobre cupos liberados |

#### Asociaciones entre etiquetas

- **Reservar cita** se asocia con **Lista de espera** cuando no hay cupos disponibles.
- **Mis citas** se asocia con **Cancelaciones** en la app del personal.
- **Familiares** se asocia con **Reservar cita** para agendar a nombre de un dependiente.
- **Perfil** se asocia con **Notificaciones** y **Configuración**.
- **Check-in QR** se asocia con **Mis citas** el día de la atención.

### 3.1.2.3. SEO Tags and Meta Tags

Los SEO Tags y Meta Tags del Landing Page se definen en el `<head>` del documento y buscan posicionar el sitio en buscadores para consultas relacionadas con citas médicas en establecimientos públicos de salud del Perú. Asimismo, se definen los elementos de ASO (App Store Optimization) para las aplicaciones móviles publicadas en Google Play y App Store.

#### Landing Page

| Tag | Valor |
|:---|:---|
| Title | SaludYa — Citas médicas sin colas |
| Meta Description | SaludYa — Plataforma digital que conecta pacientes y personal de establecimientos públicos de salud en Perú. Reserva de citas, lista de espera dinámica y check-in por QR. |
| Meta Keywords | SaludYa, citas médicas, MINSA, SIS, salud pública Perú, reserva de citas, lista de espera, RuwaLabs |
| Meta Author | RuwaLabs |
| Meta Robots | index, follow |
| Open Graph Title | SaludYa — Citas médicas sin colas |
| Open Graph Description | Reserva tu cita, recibe avisos de cupos liberados y llega justo a tu atención. Para pacientes y personal de establecimientos públicos de salud. |
| Open Graph Image | `assets/img/icon-saludya.png` |
| Open Graph Type | website |
| Open Graph URL | https://saludya.pe/ |
| Twitter Card | summary_large_image |
| Twitter Title | SaludYa — Citas médicas sin colas |
| Twitter Description | Reserva de citas, lista de espera dinámica y check-in por QR para establecimientos públicos de salud. |
| Twitter Image | `assets/img/icon-saludya.png` |

#### ASO (App Store Optimization)

| Elemento | App pacientes | App personal de salud |
|:---|:---|:---|
| App Title | SaludYa — Citas médicas | SaludYa Staff — Gestión de citas |
| App Subtitle | Reserva sin colas | Gestión del flujo de atención |
| App Keywords | citas médicas, MINSA, SIS, salud pública, reserva, lista de espera | gestión de citas, personal de salud, MINSA, SIS, flujo de atención |
| App Description | Reserva tu cita en establecimientos públicos de salud, recibe avisos de cupos liberados y gestiona a tus familiares a cargo. | Administra las citas, la lista de espera y el flujo de atención de tu establecimiento de salud en tiempo real. |

### 3.1.2.4. Searching Systems

Los sistemas de búsqueda de SaludYa están diseñados para evitar que el usuario se pierda entre el volumen de información, ofreciendo filtros claros, resultados consistentes y opciones de acción directa sobre los elementos encontrados.

#### Landing Page

| Acción | Descripción |
|:---|:---|
| Navegación por anclas | Enlaces del header que llevan a secciones específicas (Producto, Videos, Testimonios, Sobre nosotros) |
| Selector de idioma | Búsqueda de contenido en ES o EN |
| Scroll suave | Desplazamiento con compensación de altura del header |

#### Aplicación móvil para pacientes

| Búsqueda | Filtros disponibles | Resultado |
|:---|:---|:---|
| Buscar establecimiento | Distrito, especialidad | Lista de establecimientos con disponibilidad |
| Buscar especialidad | Establecimiento, disponibilidad | Lista de especialidades y cupos |
| Buscar cita | Fecha, especialidad, establecimiento | Lista de citas reservadas |
| Buscar familiar | Nombre | Ficha del familiar a cargo |

#### Aplicación móvil para personal de salud

| Búsqueda | Filtros disponibles | Resultado |
|:---|:---|:---|
| Buscar paciente | Apellido, DNI, historia clínica | Ficha del paciente |
| Buscar cita | Fecha, especialidad, estado | Lista de citas |
| Buscar cancelación | Fecha, especialidad | Registro de cancelaciones |
| Buscar cupo liberado | Fecha, especialidad | Lista de cupos disponibles |

#### Visualización de resultados

Los resultados se muestran en listas ordenadas cronológica o alfabéticamente, con indicadores visuales de estado (disponible, reservado, cancelado, atendido) y opciones de acción directa (reservar, cancelar, confirmar).

### 3.1.2.5. Navigation Systems

Los sistemas de navegación de SaludYa guían al usuario a través del Landing Page y las aplicaciones móviles, permitiéndole cumplir sus metas e interactuar de forma satisfactoria con el producto. Las decisiones de navegación se alinean con la arquitectura de información y los sistemas de búsqueda previamente definidos.

#### Landing Page

| Acción | Descripción |
|:---|:---|
| Navegación sticky | El header permanece visible al hacer scroll |
| Menú de anclas | Enlaces directos a secciones |
| Botón hamburguesa | En vista móvil, despliega el menú verticalmente |
| Scroll suave | Desplazamiento con compensación del header |
| Enlace activo | Resaltado del enlace correspondiente a la sección visible |
| Selector de idioma | Cambio dinámico ES/EN sin recargar la página |

#### Aplicación móvil para pacientes

| Acción | Descripción |
|:---|:---|
| Barra de navegación inferior | Accesos a Inicio, Reservar, Mis citas, Familiares y Perfil |
| Flujo secuencial | Reserva paso a paso con retroceso y confirmación |
| Notificaciones push | Avisos de cupos liberados y recordatorios |
| Check-in por QR | Acceso rápido a la atención el día de la cita |

#### Aplicación móvil para personal de salud

| Acción | Descripción |
|:---|:---|
| Barra de navegación inferior | Accesos a Panel, Citas, Lista de espera, Pacientes y Reportes |
| Filtros por fecha y especialidad | Segmentación del flujo de atención |
| Actualización en tiempo real | Visualización del estado de cada paciente |
| Reasignación de cupos | Acción directa sobre cupos liberados |

#### Recorrido del usuario

1. El visitante llega al Landing Page y comprende el problema y la solución.
2. Revisa los videos y testimonios de validación.
3. Conoce el equipo y el modelo de negocio.
4. Descarga la aplicación correspondiente a su perfil.
5. En la app, navega por las secciones principales mediante la barra inferior.
6. Completa sus tareas (reservar, gestionar, consultar) con flujos claros y retroalimentación visual.

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

#### 3.1.4.3. Mobile Applications Mock-ups

En esta sección se presentan los mock-ups de alta fidelidad de las aplicaciones móviles de SaludYa, desarrolladas para pacientes y personal de establecimientos públicos de salud. Su diseño toma como base los wireframes elaborados previamente y las funcionalidades descritas en las historias de usuario del proyecto.

Los mock-ups incorporan la identidad visual de SaludYa mediante el color verde primario `#0B8F6B`, fondos claros, tipografía Inter y componentes con estilos consistentes. Las pantallas utilizan un tamaño de referencia de 375 × 812 píxeles. Los botones principales tienen una altura de 48 píxeles y esquinas redondeadas de 12 píxeles.

Se incluyen pantallas principales y estados de confirmación, error y ausencia de información. Los datos utilizados son ficticios y permiten representar los escenarios de uso. Estos diseños muestran la apariencia y organización de las interfaces; no constituyen evidencia de funcionalidades implementadas.

**Sección Autenticación y Registro — Identity & Access Management**

<p align="center">
  <img src="assets/mockups/iam-registro.png" alt="Mock-ups de bienvenida, registro y verificación de identidad de SaludYa" width="100%"/>
</p>

Presenta las pantallas de bienvenida, selección del tipo de documento, verificación de identidad, registro de datos de contacto y validación del celular. El diseño incorpora el logotipo de SaludYa, formularios con etiquetas claras y botones diferenciados para las acciones principales y secundarias.

<p align="center">
  <img src="assets/mockups/iam-acceso-recuperacion.png" alt="Mock-ups de inicio de sesión y recuperación de contraseña de SaludYa" width="100%"/>
</p>

Muestra las interfaces de inicio de sesión y recuperación de contraseña. Se representan los pasos de verificación y los mensajes de éxito o error que orientan al usuario durante el acceso y la recuperación de su cuenta.

**Sección Dashboard del Paciente**

<p align="center">
  <img src="assets/mockups/dashboard.png" alt="Mock-ups del inicio, citas pendientes e historial del paciente" width="100%"/>
</p>

Presenta la pantalla de inicio del paciente, sus citas pendientes, el detalle de una reserva y el historial de citas. Las tarjetas muestran el beneficiario, la especialidad, el profesional, la fecha, el horario y el estado de la cita. Se incluye el filtro por fecha y una barra de navegación inferior para acceder a las funciones principales.

**Sección Reserva de Citas**

<p align="center">
  <img src="assets/mockups/reservas-seleccion.png" alt="Mock-ups de selección de especialidad, beneficiario, fecha, profesional y horario" width="100%"/>
</p>

Representa el recorrido para reservar una cita médica. El paciente selecciona la especialidad, el beneficiario —titular o menor vinculado—, la fecha, el profesional y un horario disponible. El calendario y las tarjetas permiten distinguir las opciones disponibles de los horarios sin cupos.

<p align="center">
  <img src="assets/mockups/reservas-confirmacion.png" alt="Mock-ups del resumen, confirmación y estados de una reserva" width="100%"/>
</p>

Muestra el resumen previo a la confirmación y el resultado de una reserva exitosa, incluyendo su código identificador. También se presentan estados para horarios sin disponibilidad, cupos ocupados y reservas que coinciden con otra cita. Las ventanas de cancelación informan sobre la acción y las restricciones del plazo establecido.

**Sección Check-in y Atención del Paciente**

<p align="center">
  <img src="assets/mockups/check-in-atencion.png" alt="Mock-ups del registro de llegada, ticket digital, cola y llamado a consultorio" width="100%"/>
</p>

Presenta las interfaces del registro de llegada mediante QR, la emisión del ticket digital, la consulta de la posición en la cola y el llamado a consultorio. El ticket identifica al beneficiario, la especialidad, el profesional, la sala de espera y el consultorio.

La cola de atención se representa según el orden de llegada presencial, diferenciándola de la prioridad utilizada para la reasignación de cupos. Se incluyen estados de llegada fuera de la ventana permitida, ausencia de check-in y atención finalizada.

**Sección Configuración y Perfil del Paciente**

<p align="center">
  <img src="assets/mockups/configuracion-perfil.png" alt="Mock-ups de configuración, datos personales y verificación de contacto" width="100%"/>
</p>

Muestra la configuración de la cuenta y la consulta de datos personales. Las pantallas de cambio de celular y correo incorporan la verificación mediante código antes de confirmar la actualización. Se incluyen mensajes para códigos incorrectos, vencidos y cambios realizados.

**Sección Gestión de Menores Vinculados**

<p align="center">
  <img src="assets/mockups/configuracion-menores.png" alt="Mock-ups de registro, verificación y gestión de menores vinculados" width="100%"/>
</p>

Presenta la lista de menores vinculados, el registro de un menor, la verificación de sus datos y la consulta de su información. El paciente titular puede visualizar las citas del menor y acceder a su perfil representado. También se muestran estados de vinculación exitosa, validación no completada y confirmación de desvinculación.

**Sección Notificaciones y Reasignación de Citas**

<p align="center">
  <img src="assets/mockups/notificaciones.png" alt="Mock-ups de notificaciones y ofertas de reasignación de citas" width="100%"/>
</p>

Representa las notificaciones de reservas, llamados y ofertas de horarios anticipados. La oferta de reasignación permite comparar el horario actual con el nuevo horario y consultar el plazo para responder.

Se incluyen las opciones de aceptar o rechazar la oferta y los estados de reasignación exitosa, oferta vencida o cupo ocupado. En los escenarios de rechazo o vencimiento se informa que la reserva original se conserva.

**Sección Gestión de Citas del Personal**

<p align="center">
  <img src="assets/mockups/personal-citas.png" alt="Mock-ups del inicio del personal, calendario y gestión de bloques de atención" width="100%"/>
</p>

Muestra las interfaces del personal para consultar citas pendientes y canceladas, seleccionar una especialidad y revisar los bloques del calendario. El detalle de cada bloque presenta el horario, el profesional, la capacidad y las reservas asociadas. Se incluyen formularios de edición y mensajes para cambios que entran en conflicto con reservas existentes.

**Sección Gestión de Llegadas y Cola de Atención**

<p align="center">
  <img src="assets/mockups/personal-atencion.png" alt="Mock-ups del registro de llegada y gestión de la cola por el personal" width="100%"/>
</p>

Presenta las pantallas del personal para validar una reserva, registrar la llegada del paciente y consultar la cola presencial. Los turnos muestran el identificador, el paciente, la hora de llegada y el estado de atención.

Se representan las acciones de llamado, inicio y finalización de atención, así como la declaración de ausencia una vez cumplido el plazo posterior al llamado. Los estados y mensajes permiten distinguir pacientes en espera, llamados, atendidos y ausentes.

**Sección Configuración Operativa del Establecimiento**

<p align="center">
  <img src="assets/mockups/administracion-reglas.png" alt="Mock-ups de configuración y edición de reglas operativas del establecimiento" width="100%"/>
</p>

Muestra las interfaces destinadas al perfil autorizado para configurar la capacidad por bloque, los intervalos de atención, las tolerancias de llegada y llamado, el plazo de respuesta a una reasignación y las restricciones de reserva y cancelación.

También se representa la configuración de la visibilidad de la cola y del alcance de la prioridad de reasignación. Las ventanas de validación informan sobre valores inválidos o inconsistentes y la conservación de las citas previamente confirmadas.

**Sección Indicadores Operativos y Reportes**

<p align="center">
  <img src="assets/mockups/administracion-indicadores.png" alt="Mock-ups de indicadores diarios, demanda por especialidad y exportación de reportes" width="100%"/>
</p>

Presenta el dashboard operativo con las citas programadas, pendientes, canceladas y las inasistencias del día. Se incluyen vistas de demanda por especialidad y filtros de periodo para la exportación de reportes en formatos PDF y CSV.

También se muestra el escenario de un día sin actividad, con indicadores en cero, y mensajes de validación para rangos de fechas incorrectos.

**Archivo de diseño**

Los mock-ups completos y sus estados complementarios pueden consultarse en el siguiente archivo de Figma:

[Mobile Application Mockups — SaludYa](https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=2-2)
