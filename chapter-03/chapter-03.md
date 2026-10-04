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
| Fuente base | Segoe UI / Helvetica Neue / Arial | 1rem | 400 | Texto general, párrafos |
| Fuente de títulos | Segoe UI / Helvetica Neue / Arial | Variable | 700 | Encabezados h1–h4 |
| h1 | — | 2.5rem | 700 | Título principal del Hero |
| h2 | — | 2rem | 700 | Títulos de sección |
| h3 | — | 1.35rem | 700 | Títulos de tarjetas y subsecciones |
| h4 | — | 1.1rem | 600 | Subtítulos internos |
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
| `--space-1` | 0.25rem | Separaciones mínimas |
| `--space-2` | 0.5rem | Padding interno de botones pequeños |
| `--space-3` | 0.75rem | Separación entre elementos inline |
| `--space-4` | 1rem | Padding estándar |
| `--space-5` | 1.5rem | Separación entre bloques |
| `--space-6` | 2rem | Separación entre secciones |

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

Los wireframes del Landing Page fueron elaborados en **Figma** para las versiones **Desktop Web Browser** y **Mobile Web Browser**, con el objetivo de definir previamente la estructura, distribución de contenidos, jerarquía visual y navegación de la interfaz antes de desarrollar los mock-ups de alta fidelidad.

### Estructura general del wireframe

La estructura del Landing Page se organizó en diez secciones principales, siguiendo un flujo orientado a presentar el problema, introducir la solución y facilitar el acceso a la aplicación:

1. **Header / Navbar:** contiene el logotipo, menú de navegación, selector de idioma ES/EN y botón principal de descarga. En dispositivos móviles, el menú se adapta mediante un botón desplegable.
2. **Hero:** presenta el mensaje principal de la solución, una descripción breve, botones de acción, beneficios principales e imagen representativa.
3. **Problema:** presenta tres situaciones identificadas durante la investigación: incertidumbre al solicitar una cita, pérdida de cupos disponibles y procesos administrativos en papel.
4. **Solución:** presenta las funcionalidades principales de las aplicaciones destinadas a pacientes y personal de salud.
5. **Videos:** incorpora contenido audiovisual relacionado con el producto y el equipo de desarrollo.
6. **Modelo de negocio:** presenta las principales modalidades de implementación y servicios asociados a la solución.
7. **Testimonios:** presenta opiniones y experiencias obtenidas de los entrevistados.
8. **Sobre nosotros:** presenta la misión, visión, valores y miembros del equipo de RuwaLabs.
9. **Descarga:** incluye los accesos correspondientes a Google Play y App Store.
10. **Footer:** contiene el logotipo, enlaces de navegación, información del proyecto, medios de contacto y derechos de autor.

### Wireframe Desktop Web Browser

| Vista | Secciones destacadas |
|:---|:---|
| Vista superior | Header, Hero, Problema y Solución |
| Vista inferior | Videos, Modelo de negocio y Testimonios |

![Wireframe Desktop - Vista superior](assets/landing-page/wireframes/wireframe-desktop-superior.png)

![Wireframe Desktop - Vista inferior](assets/landing-page/wireframes/wireframe-desktop-inferior.png)

### Wireframe Mobile Web Browser

| Vista | Secciones destacadas |
|:---|:---|
| Vista superior | Header, Hero, Problema y Solución |
| Vista inferior | Videos, Modelo de negocio y Testimonios |

![Wireframe Mobile - Vista superior](assets/landing-page/wireframes/wireframe-mobile-superior.png)

![Wireframe Mobile - Vista inferior](assets/landing-page/wireframes/wireframe-mobile-inferior.png)

### Principios de diseño aplicados

- **Jerarquía visual:** se establecieron diferentes niveles tipográficos y variaciones de fondo para diferenciar títulos, contenidos y secciones.
- **Diseño inclusivo:** se consideraron contraste adecuado, tipografía legible, áreas de interacción apropiadas y estados de foco visibles.
- **Arquitectura de información:** la organización sigue una secuencia de problema → solución → evidencia → equipo → descarga, facilitando la comprensión progresiva del producto.
- **Consistencia visual:** se mantuvieron criterios uniformes de espaciado, tamaños, radios y componentes a lo largo de la interfaz.
- **Diseño responsive:** la estructura fue adaptada para mantener la legibilidad y funcionalidad tanto en pantallas de escritorio como en dispositivos móviles.

## 3.1.3.2. Landing Page Mock-up

Los mock-ups fueron desarrollados en **Figma** a partir de la estructura definida en los wireframes y aplicando el **Design System de SaludYa**. Este sistema establece los criterios visuales utilizados para mantener consistencia en colores, tipografía, espaciado, componentes e interacción.

### Design System aplicado

| Elemento | Valor | Aplicación |
|:---|:---|:---|
| Color primario | `#0b8f6b` | Botones, enlaces e iconos |
| Color primario oscuro | `#076e52` | Estados hover y elementos destacados |
| Color primario claro | `#e6f5f0` | Fondos de sección y estados hover |
| Color de acento | `#ffb703` | Indicadores de foco y elementos de énfasis |
| Texto principal | `#1c2b2a` | Títulos y contenido principal |
| Texto secundario | `#56706d` | Descripciones y contenido complementario |
| Fondos | `#ffffff` / `#f4faf8` | Fondo principal y secciones alternas |
| Borde | `#d8e6e2` | Tarjetas, controles y separadores |
| Tipografía | Segoe UI / Helvetica Neue / Arial | Títulos y contenido |
| Radios | 6px / 12px / 20px | Tarjetas, botones y contenedores |
| Sombras | sm / md / lg | Jerarquía y profundidad visual |

### Mock-up Desktop Web Browser

| Vista | Secciones destacadas |
|:---|:---|
| Vista superior | Header, Hero, Problema y Solución |
| Vista inferior | Videos, Modelo de negocio y Testimonios |

![Mock-up Desktop - Vista superior](assets/landing-page/mockups/mockup-desktop-superior.png)

![Mock-up Desktop - Vista inferior](assets/landing-page/mockups/mockup-desktop-inferior.png)

### Mock-up Mobile Web Browser

| Vista | Secciones destacadas |
|:---|:---|
| Vista superior | Header, Hero, Problema y Solución |
| Vista inferior | Videos, Modelo de negocio y Testimonios |

![Mock-up Mobile - Vista superior](assets/landing-page/mockups/mockup-mobile-superior.png)

![Mock-up Mobile - Vista inferior](assets/landing-page/mockups/mockup-mobile-inferior.png)

### Aplicación del Design System y diseño inclusivo

| Criterio | Aplicación |
|:---|:---|
| Branding | Uso consistente del logotipo y de la paleta cromática de SaludYa |
| Tipografía | Jerarquía visual clara, tamaño legible e interlineado adecuado |
| Colores | Contraste adecuado para facilitar la lectura y diferenciación de acciones |
| Espaciado | Escala uniforme de márgenes, rellenos y separación entre componentes |
| Diseño inclusivo | Etiquetas accesibles, textos alternativos, áreas de interacción adecuadas y soporte para reducción de movimiento |
| Internacionalización | Selector ES/EN para adaptar dinámicamente los contenidos |
| Navegación | Menú sticky y desplazamiento suave entre las diferentes secciones |
| Responsive | Adaptación de estructura, componentes y contenidos a diferentes tamaños de pantalla |

### Componentes reutilizables

| Componente | Descripción | Estados |
|:---|:---|:---|
| Botón primario | Botón de acción principal con fondo verde y texto blanco | Default, hover, focus |
| Botón secundario | Botón con fondo transparente y borde del color primario | Default, hover, focus |
| Tarjeta | Contenedor para información con borde y sombra | Default, hover |
| Testimonio | Tarjeta destinada a mostrar opiniones y citas de usuarios | Default |
| Miembro del equipo | Componente con fotografía, nombre y rol | Default, hover |
| Selector de idioma | Control para alternar entre español e inglés | Activo, inactivo |
| Menú de navegación | Control responsive para mostrar u ocultar las opciones de navegación | Cerrado, abierto |

### Landing Page implementado

El diseño definido en los wireframes y mock-ups fue posteriormente trasladado a una implementación funcional. Esta versión permite visualizar la aplicación de los lineamientos establecidos en el Design System y comprobar la adaptación de la interfaz a diferentes tamaños de pantalla.

![Landing Page de SaludYa - Implementación](assets/landing-page/landing-page.png)

**Landing Page de SaludYa:**  
https://ruwalabs.github.io/saludya-landing/


### Conclusión de la sección

Los wireframes y mock-ups del Landing Page evidencian la aplicación coherente del Design System, los principios de diseño inclusivo y la arquitectura de información. La propuesta comunica el modelo de negocio de RuwaLabs, el problema que resuelve SaludYa y los beneficios para ambos segmentos objetivo, facilitando la conversión del visitante hacia la descarga de las aplicaciones móviles. La inclusión de internacionalización y accesibilidad garantiza una experiencia inclusiva y consistente.

#### 3.1.4.3. Mobile Applications Mock-ups

En este entregable se presentan los mock-ups de alta fidelidad de la aplicación móvil de SaludYa para el paciente, incluyendo la gestión de citas de menores a su cargo. El diseño parte de los wireframes del equipo y las historias de usuario del reporte. Los recorridos del personal de admisión, Super Admin, configuración operativa y exportación de reportes quedan pendientes para una entrega posterior.

La identidad visual utiliza el verde primario `#0B8F6B`, fondos claros y tipografía Inter. Las pantallas tienen un tamaño de referencia de 375 × 812 píxeles; los botones principales, una altura de 48 píxeles y esquinas de 12 píxeles. Se incluyen estados de confirmación, error y ausencia de información. Los datos son ficticios y las imágenes representan el diseño de la experiencia.

**Sección Autenticación y Registro — Identity & Access Management**

<p align="center">
  <img src="assets/mockups/iam-registro.png" alt="SaludYa — Bienvenida y registro del paciente" width="100%"/>
</p>

Presenta la bienvenida, el ingreso del DNI, la verificación de datos personales y el registro del correo, contraseña y celular. Los botones de acceso y registro se agrupan en la bienvenida. La verificación del celular conserva el recorrido propuesto en los wireframes del equipo.

<p align="center">
  <img src="assets/mockups/iam-acceso-recuperacion.png" alt="SaludYa — Acceso y recuperación de la cuenta del paciente" width="100%"/>
</p>

El paciente inicia sesión con su correo y contraseña. El rol de este recorrido es Paciente y no se ofrece un selector de perfiles administrativos. La recuperación envía un enlace al correo registrado, con vigencia de 15 minutos; se muestran la solicitud enviada, el enlace vencido, la nueva contraseña y los errores de acceso.

**Sección Dashboard del Paciente**

<p align="center">
  <img src="assets/mockups/dashboard.png" alt="SaludYa — Inicio, citas pendientes e historial del paciente" width="100%"/>
</p>

El inicio reúne las citas pendientes, el acceso al historial y la reserva de una nueva cita. La campana de notificaciones se ubica en el extremo derecho de la cabecera. Las tarjetas identifican al beneficiario, la especialidad, el profesional, la fecha y el estado de la cita. Se incluyen el filtro por fecha, el detalle de la reserva y los estados sin citas o con error de carga.

**Sección Reserva de Citas**

<p align="center">
  <img src="assets/mockups/reservas-seleccion.png" alt="SaludYa — Selección de especialidad, beneficiario, fecha, profesional y horario" width="100%"/>
</p>

El paciente selecciona la especialidad, al titular o menor vinculado y una fecha disponible. Puede elegir primero al profesional o consultar directamente los horarios mediante la opción ubicada antes de la lista. Los horarios sin cupos se distinguen con texto y color de estado y no permiten selección.

<p align="center">
  <img src="assets/mockups/reservas-confirmacion.png" alt="SaludYa — Resumen, confirmación y estados de la reserva" width="100%"/>
</p>

El resumen permite revisar los datos antes de confirmar la cita. La reserva confirmada muestra su código identificador y los detalles de atención. Los estados alternativos contemplan cupos ocupados, cruces de horarios, falta de disponibilidad y restricciones de cancelación. Un fallo en el envío del comprobante no anula la reserva.

**Sección Check-in y Atención del Paciente**

<p align="center">
  <img src="assets/mockups/check-in-atencion.png" alt="SaludYa — Registro de llegada, escaneo del QR del establecimiento, ticket y cola" width="100%"/>
</p>

Para registrar su llegada, el paciente selecciona una reserva y escanea el QR ubicado en el establecimiento, conforme a US-12. La aplicación valida la cita y la ventana de tolerancia antes de confirmar la presencia. Este recorrido no solicita presentar un QR personal generado al reservar.

Después del check-in se habilitan el ticket digital y la posición en la cola, ordenada por llegada presencial. Para los menores se identifica al beneficiario y a su representante. Se muestran el llamado a consultorio, la atención finalizada, la ausencia y los errores de QR o de horario. La variante que ocultaba la posición de la cola queda fuera de este entregable.

**Sección Configuración y Perfil del Paciente**

<p align="center">
  <img src="assets/mockups/configuracion-perfil.png" alt="SaludYa — Configuración, datos personales y actualización del contacto" width="100%"/>
</p>

El paciente consulta sus datos y actualiza su celular o correo. Las pantallas de verificación de contacto conservan la propuesta de los wireframes y presentan los resultados de actualización y los datos inválidos. La identidad verificada permanece como información de consulta.

**Sección Gestión de Menores Vinculados**

<p align="center">
  <img src="assets/mockups/configuracion-menores.png" alt="SaludYa — Vinculación, verificación y gestión de menores a cargo" width="100%"/>
</p>

El titular consulta sus menores vinculados, registra un menor y verifica sus datos para gestionar sus citas. Se incluyen el detalle del menor, el inicio del representado, la lista vacía, las restricciones de vinculación y la confirmación de desvinculación.

**Sección Notificaciones y Reasignación de Citas**

<p align="center">
  <img src="assets/mockups/notificaciones.png" alt="SaludYa — Notificaciones y ofertas de reasignación de citas" width="100%"/>
</p>

Las notificaciones informan sobre reservas, llamados y propuestas de adelanto. El paciente compara el horario actual con el ofrecido y acepta o rechaza la propuesta dentro del plazo. El rechazo, el vencimiento de la oferta o la ocupación del cupo conservan la reserva original.

**Archivo de diseño**

[Mobile Application Mockups — SaludYa](https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=2-2)

#### 3.1.4.4. Mobile Applications User Flow Diagrams

Un user flow representa el recorrido que sigue un usuario para alcanzar un objetivo dentro de una aplicación. Los diagramas de SaludYa describen las pantallas, acciones, decisiones y resultados de los recorridos de pacientes, representantes de menores, personal de admisión y Super Admin.

Se elaboraron a partir de los mock-ups y las historias de usuario del reporte. Cada objetivo presenta un **Happy Path**, correspondiente a la ruta esperada, y sus **Unhappy Paths**, que incluyen errores, restricciones y decisiones alternativas. Los diagramas se leen de izquierda a derecha: los extremos redondeados identifican el inicio o resultado, los rectángulos representan pantallas o acciones, los rombos muestran decisiones y las flechas indican las transiciones.

Se presentan 21 objetivos de usuario mediante 42 diagramas, organizados en IAM, perfil y menores, citas y reasignación, llegada y atención, operación del personal, configuración e indicadores, y sesión y permisos. Las imágenes documentan los recorridos propuestos; no constituyen evidencia de implementación funcional ni sustituyen el prototipo interactivo.

- **User Goal 1:** El paciente desea registrarse en SaludYa.

**Happy Path**

El paciente accede a Bienvenida, selecciona Registrarse e ingresa su documento y datos personales. Después de validar su identidad, completa los datos de acceso y verifica su celular. El recorrido finaliza con la cuenta creada y el envío del correo de bienvenida.

<p align="center">
  <img src="assets/userflows/user-goal-01-happy.png" alt="SaludYa — User Goal 1: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan datos de identidad no coincidentes, correo previamente registrado, código de verificación incorrecto e indisponibilidad del servicio de identidad. Cada ruta indica cómo corregir los datos o reintentar la validación sin crear una cuenta antes de completar las verificaciones.

<p align="center">
  <img src="assets/userflows/user-goal-01-unhappy.png" alt="SaludYa — User Goal 1: Unhappy Paths" width="100%"/>
</p>

- **User Goal 2:** El usuario desea iniciar sesión y acceder al panel de su rol.

**Happy Path**

El usuario ingresa su correo y contraseña y selecciona el rol correspondiente. Si las credenciales y el rol son válidos, accede al panel de Paciente, Personal de Admisión o Super Admin. Se incluye la variante de los wireframes basada en documento y verificación por celular.

<p align="center">
  <img src="assets/userflows/user-goal-02-happy.png" alt="SaludYa — User Goal 2: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Las rutas alternas contemplan credenciales incorrectas, rol no correspondiente, cuenta inactiva y código de acceso inválido en la variante por celular. Se indica el retorno al formulario o la consulta con admisión, manteniendo restringido el acceso.

<p align="center">
  <img src="assets/userflows/user-goal-02-unhappy.png" alt="SaludYa — User Goal 2: Unhappy Paths" width="100%"/>
</p>

- **User Goal 3:** El usuario desea recuperar su contraseña.

**Happy Path**

El usuario solicita un enlace seguro mediante su correo registrado. La aplicación muestra una confirmación genérica y, al abrir un enlace vigente, permite definir una nueva contraseña. Se incorpora la alternativa de los wireframes mediante verificación por código de celular o correo.

<p align="center">
  <img src="assets/userflows/user-goal-03-happy.png" alt="SaludYa — User Goal 3: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran enlaces vencidos o inválidos, contraseñas no coincidentes y pérdida de acceso a los medios de contacto. Para correos no registrados se mantiene una respuesta genérica, sin revelar la existencia de una cuenta ni emitir un token. El enlace de recuperación tiene una vigencia de 15 minutos.

<p align="center">
  <img src="assets/userflows/user-goal-03-unhappy.png" alt="SaludYa — User Goal 3: Unhappy Paths" width="100%"/>
</p>

- **User Goal 4:** El Super Admin desea crear una cuenta para el personal.

**Happy Path**

El Super Admin autenticado ingresa los datos de identidad del personal y su contacto corporativo. Tras validar la concordancia con el DNI y la disponibilidad del correo, se crea la cuenta y se envían las instrucciones de acceso.

<p align="center">
  <img src="assets/userflows/user-goal-04-happy.png" alt="SaludYa — User Goal 4: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan intentos realizados sin el rol autorizado, datos de identidad no coincidentes y correo corporativo duplicado. La cuenta no se crea hasta corregir los datos y cumplir las restricciones de acceso.

<p align="center">
  <img src="assets/userflows/user-goal-04-unhappy.png" alt="SaludYa — User Goal 4: Unhappy Paths" width="100%"/>
</p>

- **User Goal 5:** El paciente titular desea vincular o desvincular a un menor.

**Happy Path**

El titular accede a Parientes vinculados, ingresa el documento y los datos del menor y confirma su filiación. Tras completar las validaciones, puede consultar el perfil y gestionar las citas del menor. También se representa la desvinculación mediante una confirmación explícita.

<p align="center">
  <img src="assets/userflows/user-goal-05-happy.png" alt="SaludYa — User Goal 5: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran menores vinculados previamente, datos de identidad o edad no válidos y cancelación de la desvinculación. Cuando existe un vínculo con otra cuenta, se requiere revisión de la tutela por admisión; no se realiza una transferencia automática.

<p align="center">
  <img src="assets/userflows/user-goal-05-unhappy.png" alt="SaludYa — User Goal 5: Unhappy Paths" width="100%"/>
</p>

- **User Goal 6:** El usuario desea actualizar su correo o celular.

**Happy Path**

El usuario consulta su perfil, elige el dato de contacto que desea modificar e ingresa el nuevo valor. Después de validar el dato y verificar el código correspondiente, se guarda el cambio y se representa la notificación de seguridad.

<p align="center">
  <img src="assets/userflows/user-goal-06-happy.png" alt="SaludYa — User Goal 6: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Las rutas alternas contemplan formatos inválidos, correo registrado por otra cuenta y códigos incorrectos o vencidos. El recorrido permite corregir el contacto o solicitar un nuevo código antes de confirmar la actualización.

<p align="center">
  <img src="assets/userflows/user-goal-06-unhappy.png" alt="SaludYa — User Goal 6: Unhappy Paths" width="100%"/>
</p>

- **User Goal 7:** El paciente desea consultar la disponibilidad de citas.

**Happy Path**

El paciente abre Reservar cita, selecciona una especialidad y una fecha y consulta los profesionales y horarios disponibles. El flujo permite elegir un horario para continuar con la reserva, incluyendo las variantes por profesional o por horario.

<p align="center">
  <img src="assets/userflows/user-goal-07-happy.png" alt="SaludYa — User Goal 7: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan búsquedas de especialidades sin resultados y días sin cupos. El paciente puede modificar la búsqueda o regresar al calendario para elegir otra fecha disponible.

<p align="center">
  <img src="assets/userflows/user-goal-07-unhappy.png" alt="SaludYa — User Goal 7: Unhappy Paths" width="100%"/>
</p>

- **User Goal 8:** El paciente desea reservar una cita y recibir su confirmación.

**Happy Path**

El paciente selecciona al beneficiario —titular o menor vinculado—, la fecha, el profesional y el horario. Revisa el resumen y confirma la reserva. Si el cupo permanece disponible y no existe un cruce de horarios, se muestra el código de reserva y se envía el comprobante por correo.

<p align="center">
  <img src="assets/userflows/user-goal-08-happy.png" alt="SaludYa — User Goal 8: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran cupos tomados por otro paciente, reservas que coinciden con otra cita, cancelación de la confirmación y fallos en el envío del comprobante. La indisponibilidad del correo no cancela una reserva confirmada; su código continúa disponible en Mis citas.

<p align="center">
  <img src="assets/userflows/user-goal-08-unhappy.png" alt="SaludYa — User Goal 8: Unhappy Paths" width="100%"/>
</p>

- **User Goal 9:** El paciente desea consultar sus citas, detalles e historial.

**Happy Path**

Desde Inicio, el paciente accede a Citas pendientes o Historial. Puede filtrar por fecha, abrir una cita y consultar el beneficiario, la especialidad, el profesional, el horario y el estado de la reserva.

<p align="center">
  <img src="assets/userflows/user-goal-09-happy.png" alt="SaludYa — User Goal 9: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan listas sin citas, errores de carga y la necesidad de cambiar al perfil de un menor vinculado para consultar sus citas. El flujo permite reservar una nueva cita, reintentar la consulta o acceder a la información del representado.

<p align="center">
  <img src="assets/userflows/user-goal-09-unhappy.png" alt="SaludYa — User Goal 9: Unhappy Paths" width="100%"/>
</p>

- **User Goal 10:** El paciente desea cancelar una reserva dentro del plazo permitido.

**Happy Path**

El paciente abre el detalle de una reserva pendiente y selecciona Cancelar reserva. Si la solicitud cumple el plazo configurado, confirma la acción. La reserva cambia a Cancelada y el cupo se libera.

<p align="center">
  <img src="assets/userflows/user-goal-10-happy.png" alt="SaludYa — User Goal 10: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Si el plazo de cancelación terminó, el paciente debe consultar con admisión y la reserva permanece activa. Si decide no confirmar la cancelación, regresa al detalle conservando su cita. Cancelar una reserva se distingue de dejar la cola presencial.

<p align="center">
  <img src="assets/userflows/user-goal-10-unhappy.png" alt="SaludYa — User Goal 10: Unhappy Paths" width="100%"/>
</p>

- **User Goal 11:** El paciente desea responder a una oferta de adelanto de horario.

**Happy Path**

El paciente recibe una notificación y compara el horario actual con el ofrecido. Si acepta dentro del plazo y el cupo sigue disponible, se asigna el nuevo horario, se libera el anterior y se confirma la reasignación.

<p align="center">
  <img src="assets/userflows/user-goal-11-happy.png" alt="SaludYa — User Goal 11: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan el rechazo de la oferta, el vencimiento del plazo y la aceptación de un cupo ya ocupado. En estos escenarios se conserva la reserva original. La prioridad de las ofertas corresponde al orden de reserva, no al orden de llegada presencial.

<p align="center">
  <img src="assets/userflows/user-goal-11-unhappy.png" alt="SaludYa — User Goal 11: Unhappy Paths" width="100%"/>
</p>

- **User Goal 12:** El paciente desea registrar su llegada presencial mediante QR.

**Happy Path**

Al llegar al establecimiento, el paciente selecciona la reserva del titular o del menor y procesa el QR presencial. Si la cita y la ventana horaria son válidas, se registra la presencia, se ingresa a la cola según la hora de llegada y se habilita el ticket digital.

<p align="center">
  <img src="assets/userflows/user-goal-12-happy.png" alt="SaludYa — User Goal 12: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran códigos inválidos, reservas inactivas, llegada demasiado anticipada, fecha incorrecta y tolerancia de llegada vencida. En este último caso se representa el registro de inasistencia y la liberación del cupo conforme a las reglas del establecimiento.

<p align="center">
  <img src="assets/userflows/user-goal-12-unhappy.png" alt="SaludYa — User Goal 12: Unhappy Paths" width="100%"/>
</p>

- **User Goal 13:** El paciente desea obtener su ticket digital de atención.

**Happy Path**

Una vez confirmado el check-in, se genera el código del turno y se muestran la especialidad, el profesional, la sala de espera y el consultorio. Para un menor, el ticket identifica al beneficiario y a su representante.

<p align="center">
  <img src="assets/userflows/user-goal-13-happy.png" alt="SaludYa — User Goal 13: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Si la presencia no está confirmada, se solicita completar el registro de llegada. Si el turno ya fue atendido o declarado ausente, se muestra su estado final y se orienta al usuario hacia el historial o admisión.

<p align="center">
  <img src="assets/userflows/user-goal-13-unhappy.png" alt="SaludYa — User Goal 13: Unhappy Paths" width="100%"/>
</p>

- **User Goal 14:** El paciente desea consultar su posición o dejar la cola.

**Happy Path**

El paciente con presencia confirmada accede a Asistencia y consulta su posición y el total de pacientes, cuando la configuración permite mostrar la cola. También se representa la salida voluntaria mediante una confirmación antes de registrar que dejó la cola.

<p align="center">
  <img src="assets/userflows/user-goal-14-happy.png" alt="SaludYa — User Goal 14: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se contemplan ausencia de check-in, posición oculta por el establecimiento, turno finalizado y cancelación de la salida voluntaria. La cola se ordena por la hora del check-in y se actualiza al retirar pacientes atendidos o ausentes.

<p align="center">
  <img src="assets/userflows/user-goal-14-unhappy.png" alt="SaludYa — User Goal 14: Unhappy Paths" width="100%"/>
</p>

- **User Goal 15:** El paciente desea recibir el llamado y acudir al consultorio.

**Happy Path**

El paciente espera con presencia registrada y recibe el aviso cuando su turno es habilitado. Acude al consultorio indicado dentro del plazo configurado, inicia su atención y, al finalizar, consulta el estado correspondiente.

<p align="center">
  <img src="assets/userflows/user-goal-15-happy.png" alt="SaludYa — User Goal 15: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran fallos del canal de notificación y llegada posterior al plazo de llamado. El envío se reintenta sin detener el avance de la cola. Si vence la tolerancia sin ingreso a atención, se procesa la ausencia y se libera el cupo.

<p align="center">
  <img src="assets/userflows/user-goal-15-unhappy.png" alt="SaludYa — User Goal 15: Unhappy Paths" width="100%"/>
</p>

- **User Goal 16:** El personal de admisión desea registrar llegadas y atender la cola.

**Happy Path**

El personal valida el QR o código de reserva y confirma la llegada dentro del horario permitido. Después consulta la cola presencial, llama al siguiente paciente y registra el inicio y la finalización de la atención.

<p align="center">
  <img src="assets/userflows/user-goal-16-happy.png" alt="SaludYa — User Goal 16: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan reservas o horarios no válidos, cola sin pacientes e intentos de iniciar la atención de un turno declarado ausente. Cada ruta permite revisar los datos, esperar nuevas llegadas o gestionar la reprogramación mediante admisión.

<p align="center">
  <img src="assets/userflows/user-goal-16-unhappy.png" alt="SaludYa — User Goal 16: Unhappy Paths" width="100%"/>
</p>

- **User Goal 17:** El personal de admisión desea procesar una inasistencia y liberar el cupo.

**Happy Path**

Tras el llamado, se espera el plazo configurado. Si el paciente no ingresa a atención dentro de ese plazo, se confirma o procesa su ausencia, se libera el cupo y se inicia la oferta de adelanto al siguiente paciente de la cola de reserva.

<p align="center">
  <img src="assets/userflows/user-goal-17-happy.png" alt="SaludYa — User Goal 17: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran plazos aún vigentes, ingreso del paciente a tiempo e intentos de atender un turno ya perdido. Cuando el paciente inicia su atención dentro del margen permitido, se detiene el conteo y su estado cambia a En atención.

<p align="center">
  <img src="assets/userflows/user-goal-17-unhappy.png" alt="SaludYa — User Goal 17: Unhappy Paths" width="100%"/>
</p>

- **User Goal 18:** El personal autorizado desea consultar y editar bloques de atención.

**Happy Path**

El personal selecciona la especialidad y la fecha, consulta un bloque y sus reservas y modifica los datos permitidos. Si el cambio es compatible con la agenda del profesional y las reservas existentes, se guarda y se muestra el bloque actualizado.

<p align="center">
  <img src="assets/userflows/user-goal-18-happy.png" alt="SaludYa — User Goal 18: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Las rutas alternas contemplan conflictos con otros bloques o reservas confirmadas, cancelación de la edición y falta de permisos. Se conservan los datos anteriores hasta completar una actualización válida y autorizada.

<p align="center">
  <img src="assets/userflows/user-goal-18-unhappy.png" alt="SaludYa — User Goal 18: Unhappy Paths" width="100%"/>
</p>

- **User Goal 19:** El Super Admin desea configurar las reglas del establecimiento.

**Happy Path**

El Super Admin accede a Configuración general, selecciona una regla o intervalo e ingresa el nuevo valor. Tras validar su coherencia, guarda la configuración, preservando las citas confirmadas y aplicando las reglas conforme a las políticas del establecimiento.

<p align="center">
  <img src="assets/userflows/user-goal-19-happy.png" alt="SaludYa — User Goal 19: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan valores negativos o inconsistentes, tolerancias incompatibles con los intervalos, falta de autorización y cancelación de la edición. Los cambios no se guardan mientras existan errores o el usuario no tenga el permiso requerido.

<p align="center">
  <img src="assets/userflows/user-goal-19-unhappy.png" alt="SaludYa — User Goal 19: Unhappy Paths" width="100%"/>
</p>

- **User Goal 20:** El personal autorizado desea consultar indicadores y exportar reportes.

**Happy Path**

El usuario consulta las citas programadas, pendientes, canceladas y las inasistencias del día. Puede revisar la demanda por especialidad y seleccionar un periodo y formato PDF o CSV para descargar el reporte correspondiente.

<p align="center">
  <img src="assets/userflows/user-goal-20-happy.png" alt="SaludYa — User Goal 20: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se consideran rangos de fechas inválidos, días sin actividad y errores de consulta. Los días sin registros muestran indicadores en cero; los periodos incorrectos deben corregirse antes de continuar con la exportación.

<p align="center">
  <img src="assets/userflows/user-goal-20-unhappy.png" alt="SaludYa — User Goal 20: Unhappy Paths" width="100%"/>
</p>

- **User Goal 21:** El usuario desea cerrar sesión y gestionar la expiración de su acceso.

**Happy Path**

El usuario accede a su perfil, selecciona Cerrar sesión y confirma la acción. La sesión finaliza y se retorna a Bienvenida para permitir un nuevo acceso.

<p align="center">
  <img src="assets/userflows/user-goal-21-happy.png" alt="SaludYa — User Goal 21: Happy Path" width="100%"/>
</p>

**Unhappy Paths**

Se representan la cancelación del cierre, la expiración de la sesión y el intento de ejecutar una acción sin autorización. Una sesión expirada requiere autenticarse nuevamente; una restricción de permisos no concede acceso a otro rol.

<p align="center">
  <img src="assets/userflows/user-goal-21-unhappy.png" alt="SaludYa — User Goal 21: Unhappy Paths" width="100%"/>
</p>

**Archivo de diseño**

Los diagramas editables y sus referencias a los mock-ups se encuentran en la página User Flow del siguiente archivo de Figma:

[Mobile Applications User Flow Diagrams — SaludYa](https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=52-2)

#### 3.1.4.5. Mobile Applications Prototyping

En esta sección se presenta el prótotipo interactivo desarrollado en Figma para la aplicación móvil. El diseño y los flujos de navegación están alineados con la arquitectura de información y los user flow diagrams definidos.


A continuación, se adjunta el enlace al video de demostración.

<p align="center">
  <img src="assets/mobile-application-prototyping.png" alt="SaludYa — Mobile applications prototyping" width="100%"/>
</p>

[Video Mobile Applications Prototyping](https://l1nq.com/u85pwhp)
