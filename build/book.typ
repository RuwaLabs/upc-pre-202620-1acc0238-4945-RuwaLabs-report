// ARCHIVO GENERADO por la app — no lo edites a mano.
 // Fuente: 1 capítulo(s) + theme/custom/ruwalabstheme.typ
 // Motor: Typst

 #import "../theme/custom/ruwalabstheme.typ": *

 // Esta función debe estar en el libro generado: un proyecto abierto puede
 // conservar su propia copia anterior de theme.typ sin fit-image. No tocarla.
 #let fit-image(src, alt: "", width: auto, height: auto, fit: "contain") = context {
   let content = image(src, alt: alt, width: width, height: height, fit: fit)
   let measured = measure(content)
   if measured.height > 205mm or measured.width > 160mm {
     image(
       src, alt: alt,
       width: if measured.width > 160mm { 100% } else { width },
       height: if measured.height > 205mm { 205mm } else { height },
       fit: "contain",
     )
   } else {
     content
   }
 }

 #let cfg = (title: "upc-pre-202620-1acc0238-4945-RuwaLabs-report", subtitle: "", authors: ("Autor",), course: "", institution: "", date: "", lang: "es", numbering: "none", page: (size: "a4", top: 26, bottom: 24, left: 25, right: 25, fontsize: 10.5))

#show: rules.with(cfg)
 #set heading(numbering: none)

// ---------- cuerpo ----------
// Solo se renderiza el contenido escrito en los Markdown. La portada, el
// índice y la lista de figuras no se generan automáticamente.
#set page(header: page-header(cfg), footer: page-footer(cfg), numbering: "1")
#counter(page).update(1)

// ---- README.md ----
#metadata((src: "README.md", line: 1, kind: "figure", img: "https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-0284edb80e2cfa61.png", alt: "Logo UPC", width: 112.5pt)]]

#metadata((src: "README.md", line: 5))
#align(center)[*Universidad Peruana de Ciencias Aplicadas*]

#metadata((src: "README.md", line: 10))
#align(center)[*1ACC0238*]

#metadata((src: "README.md", line: 15))
#align(center)[#heading(level: 2)[Informe del Trabajo Final]]

#metadata((src: "README.md", line: 17))
#align(center)[Docente]

#metadata((src: "README.md", line: 22))
#align(center)[Equipo]

#metadata((src: "README.md", line: 29))
#align(center)[*Integrantes*]

#metadata((src: "README.md", line: 31, kind: "table"))
#align(center)[
#table(
  columns: 2,
  align: (left, left),
  table.header([#text(weight: "bold")[Código]], [#text(weight: "bold")[Apellidos y nombres]]),
  tline,
  [u202318309], [Aguilar Untiveros, Rodrigo Fabrizio],
  [u202319950], [Meza Solórzano, Didier Sebastian],
  [u20241d934], [Montoya Nina, Paula Fernanda],
  [u20241e418], [Ramos Mera, Neo Daniel],
  [u202624323], [Torres Juárez, Alisee Muriel],
)
]

#metadata((src: "README.md", line: 40))
#align(center)[*Período 202620*]

#metadata((src: "README.md", line: 44))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 45))
#pagebreak()

#heading(level: 1)[Registro de Versiones del Informe] <sec:registro-de-versiones-del-informe>
#metadata((src: "README.md", line: 46, kind: "heading", level: 1))

#metadata((src: "README.md", line: 49))
El registro de versiones permite seguir las fechas, los responsables y las modificaciones realizadas durante la elaboración del informe, como se detalla en la #link("#tabla-1")[Tabla 1].

#metadata((src: "README.md", line: 53))
#strong[Tabla 1]

#metadata((src: "README.md", line: 55))
#emph[Historial de versiones del reporte]

#metadata((src: "README.md", line: 57, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Versión], [Fecha], [Autor], [Descripción de modificación]),
  tline,
  [1.0.0], [08-28-26], [Montoya Nina, Paula Fernanda], [Estructura base del informe: carátula, registro de versiones y formato del Student Outcome.],
  [1.1.0], [02-09-26], [Meza Solórzano, Didier Sebastian], [Cap. I — Startup Profile, Solution Profile y Segmentos objetivo; estructura de carpetas del informe.],
  [1.2.0], [13-09-26], [Aguilar Untiveros, Rodrigo Fabrizio], [Cap. II — Software Architecture (Context, Container y Deployment Diagrams, Context Mapping, Bounded Context Canvases, Domain Message Flows y Candidate Context Discovery).],
  [1.2.1], [16-09-26], [Meza Solórzano, Didier Sebastian], [Cap. II — Entrevistas y evidencias de los segmentos objetivo.],
  [1.2.2], [18-09-26], [Torres Juárez, Alisee Muriel], [Cap. II — Bounded Context Identity & Access Management (Domain, Interface, Application e Infrastructure).],
  [1.2.3], [18-09-26], [Ramos Mera, Neo Daniel], [Cap. II — Tactical-Level Domain-Driven Design.],
  [1.2.4], [18-09-26], [Montoya Nina, Paula Fernanda], [Cap. II — Tactical-Level DDD: diagramas de clases y de base de datos.],
  [2.3.0], [24-09-26], [Aguilar Untiveros, Rodrigo Fabrizio], [Cap. III — 3.1.1 Style Guidelines, 3.1.2 Information Architecture y 3.1.3 Landing Page UI Design.],
  [2.3.1], [06-10-26], [Meza Solórzano, Didier Sebastian], [Cap. III — 3.1.4.3 Mobile Applications Mock-ups.],
  [2.3.2], [07-10-26], [Torres Juárez, Alisee Muriel], [Cap. III — 3.1.4.4 User Flow Diagrams y 3.1.4.5 Prototyping.],
  [2.3.3], [07-10-26], [Montoya Nina, Paula Fernanda \/ Ramos Mera, Neo Daniel], [Cap. III — 3.1.4.1 Wireframes y 3.1.4.2 Wireflow Diagrams.],
  [2.4.0], [08-10-26], [Torres Juárez, Alisee Muriel], [Cap. IV — 4.1.1 Software Development Environment Configuration y 4.1.2 Source Code Management.],
  [2.4.1], [09-10-26], [Aguilar Untiveros, Rodrigo Fabrizio], [Cap. IV — 4.1.3 Source Code Style Guide y 4.1.4 Software Deployment Configuration.],
  [2.4.2], [09-10-26], [Montoya Nina, Paula Fernanda], [Cap. IV — 4.2.1.1 Sprint Planning 1 y 4.2.1.3 Sprint Backlog 1.],
  [2.4.3], [09-10-26], [Meza Solórzano, Didier Sebastian], [Cap. IV — 4.2.1.4 Development Evidence, 4.2.1.5 Testing Suite y 4.2.1.6 Execution Evidence.],
  [2.4.4], [10-10-26], [Ramos Mera, Neo Daniel], [Cap. IV — 4.2.1.7 Services Documentation, 4.2.1.8 Software Deployment Evidence y 4.2.1.9 Team Collaboration Insights.],
  [2.4.5], [10-10-26], [Montoya Nina, Paula Fernanda], [Cap. IV — 4.2.1.2 Aspect Leaders and Collaborators; Project Report Collaboration Insights (TB1) y correcciones de la entrega.],
  [2.4.6], [11-11-26], [Montoya Nina, Paula Fernanda], [Cap. IV — Sprint Planning 2 y Sprint Backlog 2; actualización del Product Backlog y diferenciación de TB1 y AV2 en Student Outcome.],
  tline,
)

#metadata((src: "README.md", line: 79))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 82))
#pagebreak()

#heading(level: 1)[Project Report Collaboration Insights] <sec:project-report-collaboration-insights>
#metadata((src: "README.md", line: 83, kind: "heading", level: 1))

#metadata((src: "README.md", line: 85))
En esta sección se presenta la evidencia de la colaboración del equipo #strong[RuwaLabs] en la elaboración del #strong[Project Report] de SaludYa. Para cada entrega se describe cómo se desarrollaron las actividades del informe y se incluyen capturas de los analíticos de colaboración y de commits registrados en GitHub. Esta evidencia se amplía en cada entrega y mantiene coherencia con el Registro de Versiones del Informe.

#metadata((src: "README.md", line: 87))
URL del Repositorio del Project Report: #link("https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report")[upc-pre-202620-1acc0238-4945-RuwaLabs-report]

#heading(level: 2)[Primera entrega (AV1)] <sec:primera-entrega-av1>
#metadata((src: "README.md", line: 89, kind: "heading", level: 2))

#metadata((src: "README.md", line: 91))
En la primera entrega, el equipo elaboró la estructura base del informe, la carátula, el registro de versiones y el formato del Student Outcome, así como los capítulos I y II (Presentación y Requirements Development and Software Solution Design). La redacción se distribuyó entre los cinco integrantes y se evidencia en el historial de colaboración y de commits del repositorio del informe, como se observa en la #link("#figura-1")[Figura 1], la #link("#figura-2")[Figura 2] y la #link("#figura-3")[Figura 3].

#metadata((src: "README.md", line: 95))
#strong[Figura 1]

#metadata((src: "README.md", line: 97))
#emph[Colaboración en GitHub: evidencia 1 (AV1)]

#metadata((src: "README.md", line: 99, kind: "figure", img: "assets/insight_av1_1.jpg"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_av1_1.jpg", alt: "Colaboración en GitHub: evidencia 1", width: 100%)]]

#metadata((src: "README.md", line: 103))
#emph[Nota. Captura del registro de colaboración del repositorio del informe en GitHub.]

#metadata((src: "README.md", line: 106))
#pagebreak()

#metadata((src: "README.md", line: 107))

#strong[Figura 2]

#metadata((src: "README.md", line: 110))
#emph[Colaboración en GitHub: evidencia 2 (AV1)]

#metadata((src: "README.md", line: 112, kind: "figure", img: "assets/insight_av1_2.jpg"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_av1_2.jpg", alt: "Colaboración en GitHub: evidencia 2", width: 100%)]]

#metadata((src: "README.md", line: 116))
#emph[Nota. Captura del registro de colaboración del repositorio del informe en GitHub.]

#metadata((src: "README.md", line: 120))
#strong[Figura 3]

#metadata((src: "README.md", line: 122))
#emph[Colaboración en GitHub: evidencia 3 (AV1)]

#metadata((src: "README.md", line: 124, kind: "figure", img: "assets/insight_av1_3.jpg"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_av1_3.jpg", alt: "Colaboración en GitHub: evidencia 3", width: 80%)]]

#metadata((src: "README.md", line: 128))
#emph[Nota. Captura del registro de colaboración del repositorio del informe en GitHub.]

#metadata((src: "README.md", line: 130))
La actividad del equipo en GitHub queda registrada en la organización #link("https://github.com/RuwaLabs")[RuwaLabs].

#heading(level: 2)[Segunda entrega (TB1)] <sec:segunda-entrega-tb1>
#metadata((src: "README.md", line: 132, kind: "heading", level: 2))

#metadata((src: "README.md", line: 134))
En la segunda entrega, el equipo actualizó el informe incorporando el #strong[Capítulo III: Solution UI\/UX Design] y el #strong[Capítulo IV: Product Implementation & Validation], junto con la documentación del #strong[Sprint 1] (Sprint Planning, Aspect Leaders and Collaborators, Sprint Backlog y las evidencias de desarrollo, pruebas, ejecución y documentación de servicios). Asimismo, se corrigieron y mejoraron artefactos presentados en la entrega anterior. La elaboración se distribuyó entre los cinco integrantes, como se evidencia en los analíticos del repositorio del informe, que registran la actividad del periodo #strong[Oct 3 – Oct 10, 2026] con #strong[11 pull requests] integrados y #strong[50 commits] en #raw("develop") realizados por 5 autores, como se observa en la #link("#figura-4")[Figura 4] y la #link("#figura-5")[Figura 5].

#metadata((src: "README.md", line: 138))
#strong[Figura 4]

#metadata((src: "README.md", line: 140))
#emph[Resumen de actividad del repositorio del informe (TB1)]

#metadata((src: "README.md", line: 142, kind: "figure", img: "assets/insight_tb1_overview.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_tb1_overview.png", alt: "Resumen de actividad del repositorio del informe de SaludYa", width: 100%)]]

#metadata((src: "README.md", line: 146))
#emph[Nota. Captura del panel Overview del repositorio del informe en GitHub (periodo del 3 al 10 de octubre de 2026).]

#metadata((src: "README.md", line: 149))
#pagebreak()

#metadata((src: "README.md", line: 152))
#strong[Figura 5]

#metadata((src: "README.md", line: 154))
#emph[Contribuciones por integrante (TB1)]

#metadata((src: "README.md", line: 156, kind: "figure", img: "assets/insight_tb1_contributors.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_tb1_contributors.png", alt: "Contribuciones por integrante del repositorio del informe de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 160))
#emph[Nota. Captura del panel Contributors del repositorio del informe en GitHub.]

#metadata((src: "README.md", line: 162))
#emph[Nota. Elaboración del equipo RuwaLabs a partir del panel Contributors del repositorio del informe en GitHub.]

#metadata((src: "README.md", line: 164))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 165))
#pagebreak()

#heading(level: 1)[Contenido] <sec:contenido>
#metadata((src: "README.md", line: 166, kind: "heading", level: 1))

#metadata((src: "README.md", line: 168))
- #link("#registro-de-versiones-del-informe")[Registro de Versiones del Informe]
- #link("#project-report-collaboration-insights")[Project Report Collaboration Insights]
- #link("#contenido")[Contenido]
- #link("#student-outcome")[Student Outcome]
- #link("#objetivos-smart")[Objetivos SMART]
- #link("#capítulo-i-presentación")[Capítulo I: Presentación]
  - #link("#11-startup-profile")[1.1. Startup Profile]
    - #link("#111-descripción-de-la-startup")[1.1.1. Descripción de la Startup]
    - #link("#112-perfiles-de-integrantes-del-equipo")[1.1.2. Perfiles de integrantes del equipo]
  - #link("#12-solution-profile")[1.2. Solution Profile]
    - #link("#121-antecedentes-y-problemática")[1.2.1. Antecedentes y problemática]
    - #link("#122-lean-ux-process")[1.2.2. Lean UX Process]
      - #link("#1221-lean-ux-problem-statements")[1.2.2.1. Lean UX Problem Statements]
      - #link("#1222-lean-ux-assumptions")[1.2.2.2. Lean UX Assumptions]
      - #link("#1223-lean-ux-hypothesis-statements")[1.2.2.3. Lean UX Hypothesis Statements]
      - #link("#1224-lean-ux-canvas")[1.2.2.4. Lean UX Canvas]
  - #link("#13-segmentos-objetivo")[1.3. Segmentos objetivo]
- #link("#capítulo-ii-requirements-development-and-software-solution-design")[Capítulo II: Requirements Development and Software Solution Design]
  - #link("#21-competidores")[2.1. Competidores]
    - #link("#211-análisis-competitivo")[2.1.1. Análisis competitivo]
    - #link("#212-estrategias-y-tácticas-frente-a-competidores")[2.1.2. Estrategias y tácticas frente a competidores]
  - #link("#22-entrevistas")[2.2. Entrevistas]
    - #link("#221-diseño-de-entrevistas")[2.2.1. Diseño de entrevistas]
    - #link("#222-registro-de-entrevistas")[2.2.2. Registro de entrevistas]
    - #link("#223-análisis-de-entrevistas")[2.2.3. Análisis de entrevistas]
  - #link("#23-needfinding")[2.3. Needfinding]
    - #link("#231-user-personas")[2.3.1. User Personas]
    - #link("#232-user-task-matrix")[2.3.2. User Task Matrix]
    - #link("#233-user-journey-mapping")[2.3.3. User Journey Mapping]
    - #link("#234-empathy-mapping")[2.3.4. Empathy Mapping]
    - #link("#235-big-picture-eventstorming")[2.3.5. Big Picture EventStorming]
    - #link("#236-ubiquitous-language")[2.3.6. Ubiquitous Language]
  - #link("#24-requirements-specification")[2.4. Requirements specification]
    - #link("#241-user-stories")[2.4.1. User Stories]
    - #link("#242-impact-mapping")[2.4.2. Impact Mapping]
    - #link("#243-product-backlog")[2.4.3. Product Backlog]
  - #link("#25-strategic-level-domain-driven-design")[2.5. Strategic-Level Domain-Driven Design]
    - #link("#251-eventstorming")[2.5.1. EventStorming]
      - #link("#2511-candidate-context-discovery")[2.5.1.1. Candidate Context Discovery]
      - #link("#2512-domain-message-flows-modeling")[2.5.1.2. Domain Message Flows Modeling]
      - #link("#2513-bounded-context-canvases")[2.5.1.3. Bounded Context Canvases]
    - #link("#252-context-mapping")[2.5.2. Context Mapping]
    - #link("#253-software-architecture")[2.5.3. Software Architecture]
      - #link("#2531-software-architecture-context-level-diagrams")[2.5.3.1. Software Architecture Context Level Diagrams]
      - #link("#2532-software-architecture-container-level-diagrams")[2.5.3.2. Software Architecture Container Level Diagrams]
      - #link("#2533-software-architecture-deployment-diagrams")[2.5.3.3. Software Architecture Deployment Diagrams]
  - #link("#26-tactical-level-domain-driven-design")[2.6. Tactical-Level Domain-Driven Design]
    - #link("#261-bounded-context-identity--access-management")[2.6.1. Bounded Context: Identity & Access Management]
      - #link("#2611-domain-layer")[2.6.1.1. Domain Layer]
      - #link("#2612-interface-layer")[2.6.1.2. Interface Layer]
      - #link("#2613-application-layer")[2.6.1.3. Application Layer]
      - #link("#2614-infrastructure-layer")[2.6.1.4. Infrastructure Layer]
      - #link("#2615-bounded-context-software-architecture-component-level-diagrams")[2.6.1.5. Bounded Context Software Architecture Component Level Diagrams]
      - #link("#2616-bounded-context-software-architecture-code-level-diagrams")[2.6.1.6. Bounded Context Software Architecture Code Level Diagrams]
        - #link("#26161-bounded-context-domain-layer-class-diagrams")[2.6.1.6.1. Bounded Context Domain Layer Class Diagrams]
        - #link("#26162-bounded-context-database-design-diagram")[2.6.1.6.2. Bounded Context Database Design Diagram]
    - #link("#262-bounded-context-appointments--booking")[2.6.2. Bounded Context: Appointments & Booking]
      - #link("#2621-domain-layer")[2.6.2.1. Domain Layer]
      - #link("#2622-interface-layer")[2.6.2.2. Interface Layer]
      - #link("#2623-application-layer")[2.6.2.3. Application Layer]
      - #link("#2624-infrastructure-layer")[2.6.2.4. Infrastructure Layer]
      - #link("#2625-bounded-context-software-architecture-component-level-diagrams")[2.6.2.5. Bounded Context Software Architecture Component Level Diagrams]
      - #link("#2626-bounded-context-software-architecture-code-level-diagrams")[2.6.2.6. Bounded Context Software Architecture Code Level Diagrams]
        - #link("#26261-bounded-context-domain-layer-class-diagrams")[2.6.2.6.1. Bounded Context Domain Layer Class Diagrams]
        - #link("#26262-bounded-context-database-design-diagram")[2.6.2.6.2. Bounded Context Database Design Diagram]
    - #link("#263-bounded-context-reassignment")[2.6.3. Bounded Context: Reassignment]
      - #link("#2631-domain-layer")[2.6.3.1. Domain Layer]
      - #link("#2632-interface-layer")[2.6.3.2. Interface Layer]
      - #link("#2633-application-layer")[2.6.3.3. Application Layer]
      - #link("#2634-infrastructure-layer")[2.6.3.4. Infrastructure Layer]
      - #link("#2635-bounded-context-software-architecture-component-level-diagrams")[2.6.3.5. Bounded Context Software Architecture Component Level Diagrams]
      - #link("#2636-bounded-context-software-architecture-code-level-diagrams")[2.6.3.6. Bounded Context Software Architecture Code Level Diagrams]
        - #link("#26361-bounded-context-domain-layer-class-diagrams")[2.6.3.6.1. Bounded Context Domain Layer Class Diagrams]
        - #link("#26362-bounded-context-database-design-diagram")[2.6.3.6.2. Bounded Context Database Design Diagram]
    - #link("#264-bounded-context-arrival--qr-check-in")[2.6.4. Bounded Context: Arrival & QR Check-in]
      - #link("#2641-domain-layer")[2.6.4.1. Domain Layer]
      - #link("#2642-interface-layer")[2.6.4.2. Interface Layer]
      - #link("#2643-application-layer")[2.6.4.3. Application Layer]
      - #link("#2644-infrastructure-layer")[2.6.4.4. Infrastructure Layer]
      - #link("#2645-bounded-context-software-architecture-component-level-diagrams")[2.6.4.5. Bounded Context Software Architecture Component Level Diagrams]
      - #link("#2646-bounded-context-software-architecture-code-level-diagrams")[2.6.4.6. Bounded Context Software Architecture Code Level Diagrams]
        - #link("#26461-bounded-context-domain-layer-class-diagrams")[2.6.4.6.1. Bounded Context Domain Layer Class Diagrams]
        - #link("#26462-bounded-context-database-design-diagram")[2.6.4.6.2. Bounded Context Database Design Diagram]
    - #link("#265-bounded-context-hospital-operations--configuration")[2.6.5. Bounded Context: Hospital Operations & Configuration]
      - #link("#2651-domain-layer")[2.6.5.1. Domain Layer]
      - #link("#2652-interface-layer")[2.6.5.2. Interface Layer]
      - #link("#2653-application-layer")[2.6.5.3. Application Layer]
      - #link("#2654-infrastructure-layer")[2.6.5.4. Infrastructure Layer]
      - #link("#2655-bounded-context-software-architecture-component-level-diagrams")[2.6.5.5. Bounded Context Software Architecture Component Level Diagrams]
      - #link("#2656-bounded-context-software-architecture-code-level-diagrams")[2.6.5.6. Bounded Context Software Architecture Code Level Diagrams]
        - #link("#26561-bounded-context-domain-layer-class-diagrams")[2.6.5.6.1. Bounded Context Domain Layer Class Diagrams]
        - #link("#26562-bounded-context-database-design-diagram")[2.6.5.6.2. Bounded Context Database Design Diagram]
- #link("#capítulo-iii-solution-uiux-design")[Capítulo III: Solution UI\/UX Design]
  - #link("#31-product-design")[3.1. Product design]
    - #link("#311-style-guidelines")[3.1.1. Style Guidelines]
      - #link("#3111-general-style-guidelines")[3.1.1.1. General Style Guidelines]
    - #link("#312-information-architecture")[3.1.2. Information Architecture]
      - #link("#3121-organization-systems")[3.1.2.1. Organization Systems]
      - #link("#3122-labelling-systems")[3.1.2.2. Labelling Systems]
      - #link("#3123-seo-tags-and-meta-tags")[3.1.2.3. SEO Tags and Meta Tags]
      - #link("#3124-searching-systems")[3.1.2.4. Searching Systems]
      - #link("#3125-navigation-systems")[3.1.2.5. Navigation Systems]
    - #link("#313-landing-page-ui-design")[3.1.3. Landing Page UI Design]
      - #link("#3131-landing-page-wireframe")[3.1.3.1. Landing Page Wireframe]
      - #link("#3132-landing-page-mock-up")[3.1.3.2. Landing Page Mock-up]
    - #link("#314-mobile-applications-uxui-design")[3.1.4. Mobile Applications UX\/UI Design]
      - #link("#3141-mobile-applications-wireframes")[3.1.4.1. Mobile Applications Wireframes]
      - #link("#3142-mobile-applications-wireflow-diagrams")[3.1.4.2. Mobile Applications Wireflow Diagrams]
      - #link("#3143-mobile-applications-mock-ups")[3.1.4.3. Mobile Applications Mock-ups]
      - #link("#3144-mobile-applications-user-flow-diagrams")[3.1.4.4. Mobile Applications User Flow Diagrams]
      - #link("#3145-mobile-applications-prototyping")[3.1.4.5. Mobile Applications Prototyping]
- #link("#capítulo-iv-product-implementation--validation")[Capítulo IV: Product Implementation & Validation]
  - #link("#4-product-implementation--validation")[4. Product Implementation & Validation]
  - #link("#41-software-configuration-management")[4.1. Software Configuration Management]
    - #link("#411-software-development-environment-configuration")[4.1.1. Software Development Environment Configuration]
    - #link("#412-source-code-management")[4.1.2. Source Code Management]
    - #link("#413-source-code-style-guide--conventions")[4.1.3. Source Code Style Guide & Conventions]
    - #link("#414-software-deployment-configuration")[4.1.4. Software Deployment Configuration]
  - #link("#42-landing-page--mobile-application-implementation")[4.2. Landing Page & Mobile Application Implementation]
    - #link("#421-sprint-1")[4.2.1. Sprint 1]
      - #link("#4211-sprint-planning-1")[4.2.1.1. Sprint Planning 1]
      - #link("#4212-aspect-leaders-and-collaborators")[4.2.1.2. Aspect Leaders and Collaborators]
      - #link("#4213-sprint-backlog-1")[4.2.1.3. Sprint Backlog 1]
      - #link("#4214-development-evidence-for-sprint-review")[4.2.1.4. Development Evidence for Sprint Review]
      - #link("#4215-testing-suite-evidence-for-sprint-review")[4.2.1.5. Testing Suite Evidence for Sprint Review]
      - #link("#4216-execution-evidence-for-sprint-review")[4.2.1.6. Execution Evidence for Sprint Review]
      - #link("#4217-services-documentation-evidence-for-sprint-review")[4.2.1.7. Services Documentation Evidence for Sprint Review]
      - #link("#4218-software-deployment-evidence-for-sprint-review")[4.2.1.8. Software Deployment Evidence for Sprint Review]
      - #link("#4219-team-collaboration-insights-during-sprint")[4.2.1.9. Team Collaboration Insights during Sprint]
    - #link("#422-sprint-2")[4.2.2. Sprint 2]
      - #link("#4221-sprint-planning-2")[4.2.2.1. Sprint Planning 2]
      - #link("#4222-aspect-leaders-and-collaborators")[4.2.2.2. Aspect Leaders and Collaborators]
      - #link("#4223-sprint-backlog-2")[4.2.2.3. Sprint Backlog 2]
      - #link("#4224-development-evidence-for-sprint-review")[4.2.2.4. Development Evidence for Sprint Review]
      - #link("#4225-testing-suite-evidence-for-sprint-review")[4.2.2.5. Testing Suite Evidence for Sprint Review]
      - #link("#4227-services-documentation-evidence-for-sprint-review")[4.2.2.7. Services Documentation Evidence for Sprint Review]
      - #link("#4228-software-deployment-evidence-for-sprint-review")[4.2.2.8. Software Deployment Evidence for Sprint Review]
  - #link("#43-validation-interviews")[4.3. Validation Interviews]
    - #link("#431-diseño-de-entrevistas")[4.3.1. Diseño de Entrevistas]
    - #link("#432-registro-de-entrevistas")[4.3.2. Registro de Entrevistas]
    - #link("#433-evaluaciones-según-heurísticas")[4.3.3. Evaluaciones según heurísticas]
- #link("#conclusiones")[Conclusiones]
- #link("#bibliografía")[Bibliografía]
- #link("#anexos")[Anexos]

#metadata((src: "README.md", line: 313))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 315))
#pagebreak()

#heading(level: 1)[Student Outcome] <sec:student-outcome>
#metadata((src: "README.md", line: 317, kind: "heading", level: 1))

#metadata((src: "README.md", line: 319))
El curso contribuye al cumplimiento del Student Outcome ABET:
#strong[ABET - EAC - Student Outcome 7]
#strong[Criterio:] #emph[La capacidad de adquirir y aplicar nuevos conocimientos según sea necesario, utilizando estrategias de aprendizaje apropiadas.]
En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 7, como se detalla en la #link("#tabla-3")[Tabla 3].

#metadata((src: "README.md", line: 327))
#strong[Tabla 3]

#metadata((src: "README.md", line: 329))
#emph[Acciones y conclusiones para el Student Outcome 7]

#metadata((src: "README.md", line: 331, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([#text(weight: "bold")[Criterio específico]], [#text(weight: "bold")[Acciones realizadas]], [#text(weight: "bold")[Conclusiones]]),
  tline,
  [#linebreak()         Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y en especial para su proyecto en soluciones de software. #linebreak()], [#linebreak()         *Aguilar Untiveros, Rodrigo Fabrizio* #linebreak()          #linebreak()           *AV1:* Apliqué nuevos conocimientos sobre EventStorming, Candidate Context Discovery, Domain Message Flows Modeling, Bounded Context Canvases, Context Mapping y el modelo C4 para documentar la arquitectura de SaludYa. Asimismo, incorporé los conceptos de las dos colas complementarias del dominio (Booking Order y Attendance Queue), refinando los bounded contexts existentes y actualizando los diagramas de EventStorming, Context Mapping y Container Level Diagram. #linebreak()           *TB1:* Apliqué buenas prácticas de diseño de interfaces y de documentación para elaborar las guías de estilo, la arquitectura de información y la propuesta visual del Landing Page, así como las convenciones de código y la configuración de despliegue de la solución. #linebreak()           *AV2:* Apliqué conocimientos de configuración operativa al organizar el desarrollo en Flutter de las pantallas de intervalos y reglas del establecimiento, junto con la documentación de la ejecución del Sprint 2. #linebreak()          #linebreak()        *Meza Solórzano, Didier Sebastian* #linebreak()  #linebreak()   *AV1:* Apliqué nuevos conocimientos sobre la técnica 5W2H, el diagrama de Ishikawa, la metodología Lean UX, el análisis competitivo y el diseño de entrevistas para desarrollar de principio a fin la problemática, la solución y la validación con usuarios de SaludYa. #linebreak()   *TB1:* Apliqué nuevos conocimientos de diseño de experiencia de usuario y de aseguramiento de calidad para elaborar los mock-ups y los user flows de las aplicaciones, y para documentar las evidencias de desarrollo, pruebas y ejecución del Sprint 1. #linebreak()   *AV2:* Apliqué conocimientos de visualización de información al organizar el módulo Inicio en Flutter: pacientes con reserva por bloque, citas canceladas, indicadores del día, demanda por especialidad y exportación de reportes, además del diseño de las evidencias de desarrollo y pruebas. #linebreak()  #linebreak()         *Montoya Nina, Paula Fernanda* #linebreak()          #linebreak()           *AV1:* Investigué y apliqué conceptos avanzados de arquitectura de software para documentar el diseño a nivel de código de los Bounded Contexts. Esto incluyó la definición técnica de controladores, servicios y repositorios, plasmando esta lógica de negocio en diagramas relacionales de base de datos y diagramas de clases precisos para el proyecto. #linebreak()           *TB1:* Apliqué conocimientos de diseño de wireframes y de gestión ágil de proyectos para elaborar los wireframes y wireflow diagrams de la aplicación, así como el Sprint Planning y el Sprint Backlog del primer sprint. #linebreak()           *AV2:* Apliqué la planificación ágil al definir el objetivo y descomponer las 24 historias del Sprint 2; organicé el desarrollo del calendario operativo en Flutter, con selección de especialidad, consulta de bloques y edición de horarios. Actualicé las secciones de colaboración del informe y Student Outcome. #linebreak()           #linebreak()         *Ramos Mera, Neo Daniel* #linebreak()          #linebreak()           *AV1:* Apliqué nuevos conocimientos sobre el modelado táctico de Domain-Driven Design (DDD), estructurando correctamente las capas de Dominio, Aplicación, Interfaz e Infraestructura. Asimismo, aprendí y utilicé estándares de modelado C4 y UML para elaborar los diagramas de componentes, clases y base de datos de los Bounded Contexts asignados. #linebreak()  #linebreak()           *TB1:* Apliqué conocimientos de diseño de wireframes y de documentación de servicios para elaborar los wireframes y wireflow diagrams, y para evidenciar la documentación de los servicios web, el despliegue y la colaboración del equipo durante el Sprint 1. #linebreak()           *AV2:* Apliqué conocimientos de autenticación e integración móvil al organizar el acceso del Super Admin y del personal de admisión, así como la unión de los módulos administrativos y la documentación de servicios y despliegue del Sprint 2. #linebreak()          #linebreak()         *Torres Juárez, Alisee Muriel* #linebreak()          #linebreak()           *AV1:* Apliqué nuevos conocimientos sobre EventStorming, diagramas de usuario y la redacción de User Stories para desarrollar de principio a fin la problemática, la solución y la validación de SaludYa  #linebreak()           *TB1:* Apliqué conocimientos de prototipado, de entornos de desarrollo y de control de versiones para elaborar los mock-ups, los user flows, el prototipo de la aplicación y las secciones de entorno de desarrollo y gestión del código. #linebreak()           *AV2:* Apliqué conocimientos de interacción con la cámara y gestión de estados para organizar el registro de llegada por QR o código, la cola y la atención presencial, junto con la matriz de líderes y colaboradores y el análisis de colaboración del Sprint 2. #linebreak()          #linebreak()], [#linebreak()         *AV1:* #linebreak()  #linebreak()         Como equipo, actualizamos de forma práctica nuestros conocimientos en el análisis y modelado de software, integrando metodologías como Lean UX, EventStorming y Domain-Driven Design (DDD). Esto nos permitió diseñar una arquitectura sólida, documentada con diagramas tácticos, estratégicos y de bases de datos, alineando la solución tecnológica a las necesidades reales del sector salud. #linebreak()         *TB1:* #linebreak()  #linebreak()         Como equipo, aplicamos nuevos conocimientos de diseño UX\/UI, documentación de servicios, configuración de software y análisis de nuestra colaboración en GitHub para construir los capítulos III y IV del informe y evidenciar el Sprint 1, demostrando que la actualización de conceptos nos permitió entregar artefactos de mayor calidad. #linebreak()         *AV2:* #linebreak()  #linebreak()         Como equipo, aplicamos conocimientos de desarrollo móvil con Flutter\/Dart y gestión ágil para distribuir las 24 historias y 84 puntos del Sprint 2 entre acceso, calendario, atención presencial, configuración e indicadores, con una visión compartida de la experiencia administrativa de SaludYa. #linebreak()],
  [#linebreak()         Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software. #linebreak()], [#linebreak()         *Aguilar Untiveros, Rodrigo Fabrizio* #linebreak()          #linebreak()           *AV1:* Reconocí la necesidad de investigar de forma autónoma técnicas de modelado estratégico y táctico que no había aplicado antes, como EventStorming y Domain-Driven Design, para sustentar con criterios arquitectónicos sólidos el diseño de SaludYa. La correcta delimitación de los bounded contexts y la identificación de las dos colas del dominio me exigieron un análisis profundo para alinear el lenguaje ubicuo con la arquitectura del sistema. #linebreak()           *TB1:* Reconocí la importancia de investigar sobre diseño inclusivo, accesibilidad y arquitectura de la información para sustentar la propuesta visual del producto, así como de conocer las prácticas de despliegue y publicación de la solución. #linebreak()           *AV2:* Reconocí que la implementación de reglas operativas requiere estudiar cómo representar parámetros y validaciones de manera comprensible para el Super Admin. La ejecución de estos flujos en Flutter me permitió relacionar el aprendizaje autónomo con las necesidades reales de configuración del establecimiento. #linebreak()          #linebreak()         *Meza Solórzano, Didier Sebastian* #linebreak()  #linebreak()   *AV1:* Reconocí la necesidad de seguir aprendiendo de forma autónoma metodologías que no había aplicado antes, como Lean UX y el diseño de entrevistas cualitativas, para poder sustentar con información real el desarrollo de SaludYa. #linebreak()   *TB1:* Reconocí la necesidad de aprender sobre patrones de diseño de interfaces y de pruebas de software para sustentar los mock-ups y las evidencias de testing del sprint con criterios de calidad. #linebreak()   *AV2:* Reconocí la necesidad de aprender a presentar indicadores y demanda por especialidad con claridad, además de verificar los filtros y formatos de los reportes operativos. El trabajo en Inicio y las pruebas del Sprint 2 reforzaron la importancia de contrastar las interfaces con sus historias de usuario. #linebreak()  #linebreak()         *Montoya Nina, Paula Fernanda* #linebreak()          #linebreak()           *AV1:* Comprendí que diseñar soluciones de software requiere una constante actualización en metodologías como DDD. Buscar y estudiar información sobre patrones de integración y persistencia por mi cuenta me permitió resolver problemas técnicos complejos al definir las capas de infraestructura y dominio de SaludYa. #linebreak()  #linebreak()           *TB1:* Reconocí el valor de la planificación y priorización ágil para organizar el trabajo del equipo y de representar los flujos de usuario para sustentar el diseño del producto. #linebreak()           *AV2:* Reconocí la necesidad de profundizar en la navegación entre especialidad, fecha y profesional, así como en las reglas de edición de bloques horarios. Al planificar y trabajar el calendario operativo del Sprint 2, relacioné el aprendizaje de Flutter con el flujo cotidiano del personal de admisión. #linebreak()          #linebreak()         *Ramos Mera, Neo Daniel* #linebreak()          #linebreak()           *AV1:* Reconocí la importancia de investigar de manera autónoma sobre arquitectura hexagonal y patrones de diseño. Entendí que este aprendizaje continuo es indispensable para definir correctamente entidades, agregados y repositorios, garantizando que el diseño del software sea escalable y mantenible en el entorno profesional. #linebreak()           *TB1:* Reconocí la importancia de aprender sobre documentación de API y de analizar la colaboración del equipo en GitHub para evidenciar el avance del sprint. #linebreak()           *AV2:* Reconocí que integrar los módulos administrativos exige profundizar en el control de acceso por rol y en la compatibilidad entre las pantallas Flutter y los servicios. La documentación de servicios y despliegue me permitió consolidar una estrategia de aprendizaje basada en la integración de funcionalidades. #linebreak()          #linebreak()         *Torres Juárez, Alisee Muriel* #linebreak()          #linebreak()           *AV1:* Reconocí la importancia de poner en práctica herramientas y metodologías que no había aplicado antes —como el EventStorming, los diagramas de usuario y la estructuración de User Stories para sustentar y modelar con precisión el desarrollo de SaludYa. La correcta definición de las User Stories técnicas, me exigió un análisis mucho más profundo para alinear los eventos del sistema con la arquitectura tecnológica #linebreak()           *TB1:* Reconocí la importancia de documentar el entorno de desarrollo y aplicar buenas prácticas de control de versiones, así como del prototipado para validar la experiencia antes del desarrollo. #linebreak()           *AV2:* Reconocí la necesidad de aprender sobre lectura de QR, registro manual y transiciones de estado de la cola para cubrir situaciones reales de atención. Este estudio guio mi trabajo en los flujos de llegada, llamado, atención y ausencia del Sprint 2. #linebreak()          #linebreak()], [#linebreak()         *AV1:* #linebreak()  El equipo reconoció que el aprendizaje autónomo es un pilar fundamental en el desarrollo del proyecto. La exigencia de investigar y dominar nuevas herramientas tecnológicas, técnicas de entrevistas y patrones arquitectónicos nos demostró que la actualización constante es la única vía para proponer soluciones de software de calidad. #linebreak()         *TB1:* #linebreak()  #linebreak()         El equipo reconoció que el aprendizaje permanente también se reflejó en esta entrega, al investigar de forma autónoma sobre diseño de interfaces, documentación de API, entornos de despliegue y análisis de colaboración, competencias necesarias para documentar y sustentar el trabajo del sprint. #linebreak()         *AV2:* #linebreak()  #linebreak()         El equipo reconoció que el desarrollo del módulo administrativo requiere aprender continuamente sobre Flutter\/Dart, integración de servicios, estados de la atención y pruebas. La distribución de responsabilidades del Sprint 2 permitió aplicar estos conocimientos a los flujos del establecimiento y fortalecer las competencias de desarrollo móvil colaborativo. #linebreak()],
)

#metadata((src: "README.md", line: 434))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 437))
#pagebreak()

#heading(level: 1)[Objetivos SMART] <sec:objetivos-smart>
#metadata((src: "README.md", line: 439, kind: "heading", level: 1))

#metadata((src: "README.md", line: 441))
En esta sección, cada integrante del equipo formula un plan de desarrollo profesional posterior a su graduación, compuesto por al menos dos objetivos #strong[SMART]. Cada objetivo es #strong[específico] (s), #strong[medible] (m), #strong[alcanzable] (a), #strong[relevante] (r) y cuenta con un #strong[plazo] definido (t), con el fin de evidenciar de manera clara y cuantificable cómo cada miembro planea mantener un crecimiento profesional continuo.

#heading(level: 2)[Objetivos SMART – Aguilar Untiveros, Rodrigo Fabrizio] <sec:objetivos-smart-aguilar-untiveros-rodrigo-fabrizio>
#metadata((src: "README.md", line: 443, kind: "heading", level: 2))

#metadata((src: "README.md", line: 445))
#strong[Plan de desarrollo profesional:] Consolidar su perfil como desarrollador de aplicaciones móviles e insertarse en el mercado laboral tecnológico, fortaleciendo sus competencias mediante certificaciones y experiencia práctica, como se detalla en la #link("#tabla-4")[Tabla 4].

#metadata((src: "README.md", line: 450))
#strong[Tabla 4]

#metadata((src: "README.md", line: 452))
#emph[Objetivos SMART – Aguilar Untiveros, Rodrigo Fabrizio]

#metadata((src: "README.md", line: 456, kind: "table"))
#table(
  columns: (5%, 74%, 21%),
  align: (center, left, left),
  table.header(table.cell(align: center)[N.º], [Objetivo SMART], [Plazo]),
  tline,
  table.cell(align: center)[1], [Obtener la certificación #emph[Google Associate Android Developer] para especializarme en el desarrollo de aplicaciones móviles nativas, completando un plan de estudio de 8 horas semanales y aprobando el examen oficial con una puntuación superior a 80\/100.], [Diciembre 2027],
  table.cell(align: center)[2], [Incorporarme como desarrollador móvil en una empresa de tecnología peruana, postulando a un mínimo de 10 ofertas por mes y participando en al menos 3 procesos de selección por trimestre hasta concretar mi primera contratación.], [12 meses tras la graduación],
  tline,
)

#metadata((src: "README.md", line: 462))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 2)[Objetivos SMART – Meza Solórzano, Didier Sebastian] <sec:objetivos-smart-meza-solorzano-didier-sebastian>
#metadata((src: "README.md", line: 465, kind: "heading", level: 2))

#metadata((src: "README.md", line: 467))
#strong[Plan de desarrollo profesional:] Especializarse en el desarrollo multiplataforma y complementar su formación con estudios de posgrado orientados al desarrollo de software móvil, como se detalla en la #link("#tabla-5")[Tabla 5].

#metadata((src: "README.md", line: 472))
#strong[Tabla 5]

#metadata((src: "README.md", line: 474))
#emph[Objetivos SMART – Meza Solórzano, Didier Sebastian]

#metadata((src: "README.md", line: 478, kind: "table"))
#table(
  columns: (5%, 74%, 21%),
  align: (center, left, left),
  table.header(table.cell(align: center)[N.º], [Objetivo SMART], [Plazo]),
  tline,
  table.cell(align: center)[1], [Obtener la certificación oficial de #emph[Flutter Developer] para dominar el desarrollo multiplataforma, desarrollando al menos 3 proyectos publicados en GitHub y aprobando la evaluación con un puntaje mínimo de 75\/100.], [Diciembre 2027],
  table.cell(align: center)[2], [Iniciar un posgrado o especialización en desarrollo de software móvil, aprobando los primeros 4 ciclos con un promedio ponderado no menor a 16\/20 y manteniendo una dedicación de 10 horas semanales de estudio.], [2028],
  tline,
)

#metadata((src: "README.md", line: 484))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 486))
#pagebreak()

#heading(level: 2)[Objetivos SMART – Montoya Nina, Paula Fernanda] <sec:objetivos-smart-montoya-nina-paula-fernanda>
#metadata((src: "README.md", line: 487, kind: "heading", level: 2))

#metadata((src: "README.md", line: 489))
#strong[Plan de desarrollo profesional:] Profundizar en la ingeniería y gestión de datos y en la arquitectura de software, combinando certificaciones técnicas con una maestría orientada a la especialización, como se detalla en la #link("#tabla-6")[Tabla 6].

#metadata((src: "README.md", line: 494))
#strong[Tabla 6]

#metadata((src: "README.md", line: 496))
#emph[Objetivos SMART – Montoya Nina, Paula Fernanda]

#metadata((src: "README.md", line: 498, kind: "table"))
#table(
  columns: 3,
  align: (center, left, left),
  table.header(table.cell(align: center)[N.º], [Objetivo SMART], [Plazo]),
  tline,
  table.cell(align: center)[1], [Obtener la certificación #emph[Google Cloud Professional Data Engineer] para especializarme en la gestión de datos, mediante un plan de estudio de 6 horas semanales y la aprobación del examen oficial con un puntaje mínimo de 70\/100.], [Diciembre 2027],
  table.cell(align: center)[2], [Iniciar una maestría en Arquitectura de Software, culminando los dos primeros semestres con un promedio no menor a 16\/20 y publicando un proyecto de arquitectura de datos al finalizar cada semestre.], [2027],
  tline,
)

#metadata((src: "README.md", line: 504))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 2)[Objetivos SMART – Ramos Mera, Neo Daniel] <sec:objetivos-smart-ramos-mera-neo-daniel>
#metadata((src: "README.md", line: 507, kind: "heading", level: 2))

#metadata((src: "README.md", line: 509))
#strong[Plan de desarrollo profesional:] Consolidar su perfil en redes y desarrollo backend, integrando certificaciones técnicas con experiencia laboral especializada, como se detalla en la #link("#tabla-7")[Tabla 7].

#metadata((src: "README.md", line: 514))
#strong[Tabla 7]

#metadata((src: "README.md", line: 516))
#emph[Objetivos SMART – Ramos Mera, Neo Daniel]

#metadata((src: "README.md", line: 518, kind: "table"))
#table(
  columns: 3,
  align: (center, left, left),
  table.header(table.cell(align: center)[N.º], [Objetivo SMART], [Plazo]),
  tline,
  table.cell(align: center)[1], [Obtener la certificación #emph[Cisco Certified Network Associate (CCNA)] para fortalecer mis competencias en redes, completando 120 horas de laboratorio y aprobando el examen oficial 200-301 en el primer intento.], [Junio 2027],
  table.cell(align: center)[2], [Desempeñarme como desarrollador backend en una empresa tecnológica, consolidando al menos una certificación cloud (AWS o Azure) y participando en un mínimo de 8 procesos de selección anuales.], [18 meses tras la graduación],
  tline,
)

#metadata((src: "README.md", line: 524))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 525))
#pagebreak()

#heading(level: 2)[Objetivos SMART – Torres Juárez, Alisee Muriel] <sec:objetivos-smart-torres-juarez-alisee-muriel>
#metadata((src: "README.md", line: 528, kind: "heading", level: 2))

#metadata((src: "README.md", line: 530))
#strong[Plan de desarrollo profesional:] Orientar su crecimiento hacia la gestión de proyectos tecnológicos, complementando su perfil técnico con certificaciones y estudios de especialización, como se detalla en la #link("#tabla-8")[Tabla 8].

#metadata((src: "README.md", line: 535))
#strong[Tabla 8]

#metadata((src: "README.md", line: 537))
#emph[Objetivos SMART – Torres Juárez, Alisee Muriel]

#metadata((src: "README.md", line: 539, kind: "table"))
#table(
  columns: 3,
  align: (center, left, left),
  table.header(table.cell(align: center)[N.º], [Objetivo SMART], [Plazo]),
  tline,
  table.cell(align: center)[1], [Obtener la certificación #emph[Professional Scrum Master I (PSM I)] para fortalecer mis competencias en gestión de proyectos, aprobando el examen oficial con una puntuación mínima de 85% y gestionando al menos un proyecto académico bajo el marco Scrum.], [Diciembre 2026],
  table.cell(align: center)[2], [Ingresar a un programa de especialización en gestión de proyectos tecnológicos, aprobando los dos primeros ciclos con un promedio no menor a 16\/20 y liderando al menos un proyecto real durante el programa.], [2027],
  tline,
)

#metadata((src: "README.md", line: 545))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 548))
#pagebreak()

#heading(level: 1)[Capítulo 1: Presentación] <sec:capitulo-1-presentacion>
#metadata((src: "README.md", line: 550, kind: "heading", level: 1))

#heading(level: 2)[1.1. Startup Profile] <sec:1-1-startup-profile>
#metadata((src: "README.md", line: 552, kind: "heading", level: 2))

#metadata((src: "README.md", line: 554))
En esta sección, se presenta una descripción general de RuwaLabs, startup orientada al desarrollo de soluciones digitales que buscan atender problemáticas reales mediante el uso de la tecnología, considerando las necesidades de los usuarios y las características del contexto en el que se desenvuelven.

#heading(level: 3)[1.1.1. Descripción de la Startup] <sec:1-1-1-descripcion-de-la-startup>
#metadata((src: "README.md", line: 556, kind: "heading", level: 3))

#metadata((src: "README.md", line: 558))
En el contexto actual, donde el acceso oportuno a los servicios de salud representa un desafío para diversos sectores de la población, especialmente en establecimientos públicos de salud con una alta demanda de pacientes, RuwaLabs propone desarrollar soluciones tecnológicas orientadas a mejorar la experiencia de atención y optimizar los procesos relacionados con la gestión de citas médicas.

#metadata((src: "README.md", line: 560))
RuwaLabs es una startup comprometida con el desarrollo de soluciones digitales innovadoras, enfocadas en facilitar el acceso a servicios y mejorar procesos mediante el uso de tecnologías móviles. Como parte de esta iniciativa, se desarrolla #strong[SaludYa], una solución compuesta por aplicaciones móviles dirigidas tanto a pacientes como al personal asistencial y administrativo de establecimientos públicos de salud.

#metadata((src: "README.md", line: 562))
SaludYa busca reducir las dificultades asociadas a la gestión tradicional de citas médicas, como las largas colas presenciales, la alta demanda de cupos y la falta de información sobre la disponibilidad de atención. Para ello, la solución contempla funcionalidades como la reserva digital de citas, lista de espera dinámica, recordatorios de atención, gestión de citas de familiares y check-in mediante código QR.

#metadata((src: "README.md", line: 564))
Asimismo, SaludYa busca facilitar la gestión interna de los establecimientos de salud mediante herramientas que permitan al personal administrar citas y pacientes, visualizar el estado de la atención y mejorar el aprovechamiento de los cupos disponibles, como se detalla en la #link("#tabla-9")[Tabla 9].

#metadata((src: "README.md", line: 569))
#strong[Tabla 9]

#metadata((src: "README.md", line: 571))
#emph[Misión, visión y valores de RuwaLabs]

#metadata((src: "README.md", line: 573, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([#text(weight: "bold")[Misión]], [#text(weight: "bold")[Visión]], [#text(weight: "bold")[Valores]]),
  tline,
  [Desarrollar soluciones tecnológicas accesibles e innovadoras que permitan mejorar la experiencia de los usuarios y optimizar procesos relacionados con servicios de atención, utilizando la tecnología como herramienta para resolver necesidades reales.], [Ser una startup reconocida por desarrollar soluciones digitales innovadoras que contribuyan a mejorar el acceso a servicios esenciales y la eficiencia de los procesos mediante el uso de tecnologías móviles.], [Innovación, accesibilidad, compromiso, responsabilidad y orientación al usuario.],
)

#metadata((src: "README.md", line: 586))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 589))
#pagebreak()

#heading(level: 3)[1.1.2. Perfiles de los integrantes del equipo] <sec:1-1-2-perfiles-de-los-integrantes-del-equipo>
#metadata((src: "README.md", line: 590, kind: "heading", level: 3))

#metadata((src: "README.md", line: 592))
En esta sección, se presentan los perfiles de los integrantes del equipo, incluyendo sus habilidades y conocimientos técnicos relevantes para el desarrollo de #strong[SaludYa], como se detalla en la #link("#tabla-10")[Tabla 10].

#metadata((src: "README.md", line: 597))
#strong[Tabla 10]

#metadata((src: "README.md", line: 599))
#emph[Perfiles de los integrantes del equipo]

#metadata((src: "README.md", line: 601, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([#text(weight: "bold")[Foto]], [#text(weight: "bold")[Integrante]], [#text(weight: "bold")[Código]], [#text(weight: "bold")[Carrera]], [#text(weight: "bold")[Habilidades y conocimientos técnicos]]),
  tline,
  [#box(width: 100%)[#fit-image("/chapter-01/assets/foto_rodrigo.jpg", alt: "Foto de Rodrigo", width: 100%, fit: "contain")]], [Aguilar Untiveros, Rodrigo Fabrizio], [u202318309], [Ingeniería de Software], [Soy estudiante de Ingeniería de Software interesado en el desarrollo de aplicaciones móviles y en la construcción de soluciones tecnológicas que resuelvan necesidades reales de las personas. Me considero una persona responsable, organizada y con facilidad para trabajar en equipo, además de comprometida con la mejora continua y la aplicación de buenas prácticas de desarrollo. Durante el proyecto busco fortalecer mis conocimientos técnicos y aportar en la implementación de una solución funcional y de calidad.],
  [#box(width: 100%)[#fit-image("/chapter-01/assets/foto_didier.jpg", alt: "Foto de Didier", width: 100%, fit: "contain")]], [Meza Solórzano, Didier Sebastian], [u202319950], [Ingeniería de Software], [Soy estudiante de Ingeniería de Software interesado en el desarrollo de aplicaciones móviles y en soluciones tecnológicas orientadas a resolver problemas reales. Me considero una persona responsable, comprometida y con disposición para trabajar en equipo. Asimismo, busco aplicar buenas prácticas de desarrollo y mejorar continuamente mis conocimientos técnicos durante el desarrollo de proyectos.],
  [#box(width: 100%)[#fit-image("/chapter-01/assets/foto_paula.jpg", alt: "Foto de Paula", width: 100%, fit: "contain")]], [Montoya Nina, Paula Fernanda], [u20241d934], [Ingeniería de Software], [Soy estudiante de Ingeniería de Software, interesada en la gestión de datos y en la arquitectura de Software. Tengo un enfoque de trabajo que prioriza la planificación y el orden estructural antes de iniciar cualquier implementación técnica. Mis fortalezas son la organización de flujos de trabajo eficiente y, además, puedo desempeñar múltiples roles dentro de un proyecto, ya sea en frontend o backend, aunque prefiero dedicarme a la gestión de datos. Mi propósito es profundizar mis conocimientos en la arquitectura de Software, además de mejorar mi capacidad de colaboración en equipo para contribuir activamente en la creación de soluciones tecnológicas.],
  [#box(width: 100%)[#fit-image("/chapter-01/assets/foto_neo.jpeg", alt: "Foto de Neo", width: 100%, fit: "contain")]], [Ramos Mera, Neo Daniel], [u20241e418], [Ingeniería de Software], [Soy estudiante de Ingeniería de Software, interesado en la red y el backend. Me considero una persona responsable, atenta y también bastante cooperativa, ya que la comunicación y el trabajo en equipo son fundamentales para alcanzar el éxito en cualquier proyecto. Mi meta es especializarme en un campo en el que pueda trabajar con estos puntos, por lo que aspiro a participar en proyectos desafiantes que reten mis habilidades y conocimientos.],
  [#box(width: 100%)[#fit-image("/chapter-01/assets/foto_alisee.jpg", alt: "Foto de Alisee", width: 100%, fit: "contain")]], [Torres Juárez, Alisee Muriel], [U202624323], [Ingeniería de Software], [Soy estudiante de Ingeniería de Software interesada en la creación de soluciones tecnológicas que simplifiquen y agilicen procesos. Destaco por mi resiliencia, perseverancia y alta capacidad de adaptabilidad ante nuevos desafíos.],
)

#metadata((src: "README.md", line: 645))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 648))
#pagebreak()

#heading(level: 2)[1.2. Solution Profile] <sec:1-2-solution-profile>
#metadata((src: "README.md", line: 650, kind: "heading", level: 2))

#metadata((src: "README.md", line: 652))
En esta sección se describe el perfil de la solución propuesta por RuwaLabs, incluyendo los antecedentes y la problemática que aborda. Asimismo, se utiliza la técnica de las #strong[5W's y 2H's] para comprender mejor el contexto, las necesidades de los usuarios y las condiciones en las que se presenta el problema.

#metadata((src: "README.md", line: 654))
La aplicación lleva por nombre #strong["SaludYa"]. El propósito de la aplicación se centra en la gestión eficiente de citas médicas en establecimientos públicos de salud, permitiendo a los pacientes acceder de forma oportuna a la reserva, seguimiento y #emph[check-in] de sus atenciones. Al mismo tiempo, brinda al personal asistencial y administrativo herramientas para gestionar citas, pacientes y el flujo de atención.

#metadata((src: "README.md", line: 656))
Finalmente, #strong["SaludYa"] busca convertirse en una herramienta clave para conectar la gestión del paciente con la operación del establecimiento de salud, ayudando a reducir las colas presenciales, aprovechar mejor los cupos disponibles y facilitar el seguimiento de la atención. Además, permitirá contar con información oportuna y mejorar la experiencia general de acceso a los servicios de salud, como se observa en la #link("#figura-6")[Figura 6].

#metadata((src: "README.md", line: 661))
#strong[Figura 6]

#metadata((src: "README.md", line: 663))
#emph[Identidad visual de SaludYa]

#metadata((src: "README.md", line: 665, kind: "figure", img: "https://i.imgur.com/7aTgCkT.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-80fc80f1cd7c8b9c.jpeg", alt: "Identidad visual de SaludYa", width: 375pt)]]]

#metadata((src: "README.md", line: 673))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 3)[1.2.1. Antecedentes y problemática] <sec:1-2-1-antecedentes-y-problematica>
#metadata((src: "README.md", line: 676, kind: "heading", level: 3))

#metadata((src: "README.md", line: 678))
En esta sección se presentan los antecedentes y la problemática que la solución propuesta busca abordar. Para ello, se utiliza la técnica de las #strong[5W's y 2H's] para realizar un análisis detallado del problema y el #strong[diagrama de Ishikawa] para identificar sus principales causas raíz.

#heading(level: 4)[Antecedentes] <sec:antecedentes>
#metadata((src: "README.md", line: 680, kind: "heading", level: 4))

#metadata((src: "README.md", line: 682))
En los establecimientos públicos de salud existe una alta demanda de atención médica, lo que puede generar dificultades para acceder oportunamente a una cita. Los pacientes pueden encontrarse con procesos presenciales, disponibilidad limitada de cupos, tiempos de espera elevados y poca información sobre las citas disponibles. Estas dificultades pueden afectar especialmente a las personas que deben trasladarse desde zonas urbanas periféricas hacia establecimientos públicos de salud.

#metadata((src: "README.md", line: 684))
Actualmente, el acceso a una cita médica en establecimientos del #strong[Ministerio de Salud (MINSA)] puede realizarse mediante diferentes canales, como la atención presencial, vía telefónica y determinados servicios digitales. La existencia de estos canales representa un avance en la digitalización del proceso; sin embargo, todavía existen oportunidades para integrar la gestión de citas, la disponibilidad de cupos, las cancelaciones, las listas de espera y el seguimiento de la atención en una experiencia única para el paciente y el personal del establecimiento.

#metadata((src: "README.md", line: 686))
El MINSA ha implementado iniciativas orientadas a reducir los tiempos de espera y facilitar la gestión de citas. Por ejemplo, en 2017 se implementó el sistema #strong["Web Colas"] en el Hospital de Emergencias Villa El Salvador, permitiendo consultar información relacionada con los tiempos de atención y la cantidad de pacientes en espera (MINSA, 2017). Esta iniciativa evidencia la necesidad de utilizar herramientas digitales para mejorar la organización de la atención y disminuir las dificultades asociadas a las colas presenciales.

#metadata((src: "README.md", line: 688))
Asimismo, en 2023 el MINSA informó sobre diferentes acciones destinadas a reducir los tiempos de espera en establecimientos de salud de Lima Metropolitana, entre ellas sistemas de gestión de citas, listas de espera y atención mediante plataformas web (MINSA, 2023).

#metadata((src: "README.md", line: 690))
En 2024, el MINSA también informó sobre el fortalecimiento del sistema de #strong["Citas en Línea"], mediante el cual se generaron citas digitales en establecimientos de primer nivel de atención (MINSA, 2024). Este tipo de iniciativas demuestra que existe una tendencia hacia la digitalización del acceso a los servicios de salud.

#metadata((src: "README.md", line: 692))
Por otro lado, durante el primer semestre de 2025, el Hospital San Juan de Lurigancho registró más de #strong[93 000 pacientes] que accedieron a sus citas mediante canales telefónicos (MINSA, 2025), evidenciando la demanda por mecanismos alternativos que faciliten el acceso a la atención médica.

#metadata((src: "README.md", line: 694))
A nivel internacional, la #strong[Organización Mundial de la Salud (OMS)] reconoce el potencial de la salud digital para fortalecer los sistemas sanitarios, mejorar su eficiencia y contribuir a un acceso más equitativo a servicios de salud de calidad.

#metadata((src: "README.md", line: 696))
Frente a esta problemática, surge #strong["SaludYa"], una solución tecnológica compuesta por dos aplicaciones móviles: una orientada a pacientes y otra dirigida al personal asistencial y administrativo. La solución está diseñada para reducir las colas presenciales, aprovechar mejor los cupos disponibles y facilitar el seguimiento de la atención en establecimientos públicos de salud.

#heading(level: 4)[Técnica de las 5W's y 2H's] <sec:tecnica-de-las-5w-s-y-2h-s>
#metadata((src: "README.md", line: 698, kind: "heading", level: 4))

#heading(level: 5)[What?] <sec:what>
#metadata((src: "README.md", line: 700, kind: "heading", level: 5))

#metadata((src: "README.md", line: 702))
#strong[¿Cuál es el problema?]

#metadata((src: "README.md", line: 704))
Existe dificultad para acceder de manera oportuna y eficiente a citas médicas en establecimientos públicos de salud debido a la disponibilidad limitada de cupos, los procesos presenciales y la falta de información actualizada sobre las citas disponibles.

#metadata((src: "README.md", line: 706))
#strong[¿Cuál es la relación con la persona en cuestión?]

#metadata((src: "README.md", line: 708))
Los pacientes, especialmente aquellos que residen en zonas urbanas periféricas, enfrentan directamente esta situación al buscar una atención oportuna. Por otro lado, el personal asistencial y administrativo es responsable de gestionar las citas y el flujo de atención del establecimiento.

#heading(level: 5)[When?] <sec:when>
#metadata((src: "README.md", line: 710, kind: "heading", level: 5))

#metadata((src: "README.md", line: 712))
#strong[¿Cuándo sucede el problema?]

#metadata((src: "README.md", line: 714))
La problemática se presenta principalmente durante la búsqueda y programación de una cita, especialmente en periodos de alta demanda o cuando existe una cantidad limitada de cupos. También puede presentarse el día de la atención debido a la congestión y los tiempos de espera.

#metadata((src: "README.md", line: 716))
#strong[¿Cuándo utiliza el cliente el producto?]

#metadata((src: "README.md", line: 718))
Los usuarios utilizan #strong[SaludYa] como parte de su proceso habitual de búsqueda de disponibilidad, reserva de citas, seguimiento de su atención y #emph[check-in] al llegar al establecimiento de salud.

#heading(level: 5)[Where?] <sec:where>
#metadata((src: "README.md", line: 720, kind: "heading", level: 5))

#metadata((src: "README.md", line: 722))
#strong[¿Dónde está el cliente cuando usa el producto?]

#metadata((src: "README.md", line: 724))
Los pacientes pueden acceder a la aplicación desde sus hogares, centros de trabajo o estudio, e incluso durante su desplazamiento hacia el establecimiento de salud. Por su parte, el personal asistencial y administrativo utiliza la solución dentro de los establecimientos públicos de salud.

#metadata((src: "README.md", line: 726))
#strong[¿A dónde se dirige?]

#metadata((src: "README.md", line: 728))
La problemática afecta principalmente a pacientes que utilizan establecimientos públicos de salud, en especial a quienes residen en zonas urbanas periféricas y buscan un acceso más oportuno a la atención médica.

#metadata((src: "README.md", line: 730))
#strong[¿Dónde surge el problema?]

#metadata((src: "README.md", line: 732))
El problema surge en establecimientos públicos de salud que aún dependen parcialmente de procesos presenciales o telefónicos, especialmente en las áreas relacionadas con admisión, gestión de citas y atención de pacientes.

#heading(level: 5)[Who?] <sec:who>
#metadata((src: "README.md", line: 734, kind: "heading", level: 5))

#metadata((src: "README.md", line: 736))
#strong[¿Quiénes están involucrados?]

#metadata((src: "README.md", line: 738))
Los principales involucrados son:

#metadata((src: "README.md", line: 740))
- Los pacientes que utilizan los establecimientos públicos de salud.
- Los pacientes que residen en zonas urbanas periféricas.
- El personal administrativo encargado de gestionar las citas.
- El personal asistencial encargado de atender a los pacientes.
- Los establecimientos públicos de salud que administran los procesos de atención.

#heading(level: 5)[Why?] <sec:why>
#metadata((src: "README.md", line: 746, kind: "heading", level: 5))

#metadata((src: "README.md", line: 748))
#strong[¿Cuál es la causa del problema?]

#metadata((src: "README.md", line: 750))
Las principales causas están relacionadas con:

#metadata((src: "README.md", line: 752))
- La alta demanda de atención médica.
- La disponibilidad limitada de cupos.
- La dependencia de procesos presenciales o telefónicos.
- La falta de información en tiempo real sobre la disponibilidad de citas.
- La gestión limitada de cancelaciones y reprogramaciones.
- La ausencia de una gestión eficiente de listas de espera.
- La existencia de procesos administrativos fragmentados.

#heading(level: 5)[How?] <sec:how>
#metadata((src: "README.md", line: 760, kind: "heading", level: 5))

#metadata((src: "README.md", line: 762))
#strong[¿En qué condiciones los clientes usan nuestros productos?]

#metadata((src: "README.md", line: 764))
Los pacientes suelen consultar diferentes canales para encontrar una cita disponible, trasladarse al establecimiento de salud o comunicarse telefónicamente. Estas acciones se realizan muchas veces en contextos de alta demanda, tiempos de espera elevados e información limitada sobre la disponibilidad de citas.

#metadata((src: "README.md", line: 766))
#strong[¿Cómo prefieren los clientes acceder a nuestro producto?]

#metadata((src: "README.md", line: 768))
Los usuarios prefieren una aplicación móvil intuitiva que les permita consultar la disponibilidad de citas, reservar una atención, recibir recordatorios y realizar el seguimiento de su atención sin necesidad de trasladarse previamente al establecimiento o realizar llamadas telefónicas.

#metadata((src: "README.md", line: 769))
#pagebreak()

#metadata((src: "README.md", line: 772))
#strong[¿Qué llevó al cliente a llegar a esta situación?]

#metadata((src: "README.md", line: 774))
La dependencia de procesos presenciales y telefónicos, la falta de información en tiempo real sobre la disponibilidad de citas y la ausencia de una gestión integrada de cupos, cancelaciones y listas de espera han llevado a los pacientes y al personal de salud a requerir soluciones digitales que permitan optimizar el acceso y la gestión de la atención.

#heading(level: 5)[How much?] <sec:how-much>
#metadata((src: "README.md", line: 776, kind: "heading", level: 5))

#metadata((src: "README.md", line: 778))
#strong[¿Cuánto impacto genera este problema en los establecimientos de salud?]

#metadata((src: "README.md", line: 780))
El impacto de esta problemática es significativo, ya que genera costos de tiempo y desplazamiento para los pacientes y una mayor carga operativa para el personal de los establecimientos de salud.

#metadata((src: "README.md", line: 782))
Además, las iniciativas implementadas por el MINSA para digitalizar las citas y reducir los tiempos de espera evidencian la importancia de optimizar estos procesos mediante herramientas tecnológicas.

#heading(level: 3)[Diagrama de Ishikawa - Análisis de Causas] <sec:diagrama-de-ishikawa-analisis-de-causas>
#metadata((src: "README.md", line: 784, kind: "heading", level: 3))

#metadata((src: "README.md", line: 786))
El #strong[diagrama de Ishikawa], también conocido como diagrama de espina de pescado o diagrama de causa-efecto, permite identificar y visualizar de manera sistemática las múltiples causas que contribuyen al problema central:

#metadata((src: "README.md", line: 788))
#quote(block: true)[
  #metadata((src: "README.md", line: 788))
  #strong["Dificultad en el acceso oportuno y eficiente a citas médicas en establecimientos públicos de salud".]
]

#metadata((src: "README.md", line: 790))
Este análisis estructurado facilita la comprensión integral del problema y orienta el desarrollo de soluciones específicas para cada categoría de causas identificadas.

#metadata((src: "README.md", line: 795))
#strong[Figura 7]

#metadata((src: "README.md", line: 797))
#emph[Diagrama de Ishikawa: causas de las dificultades para acceder a citas médicas]

#metadata((src: "README.md", line: 799, kind: "figure", img: "https://i.imgur.com/V84h3fK.jpeg"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-82265f5616de3ad0.jpeg", alt: "Diagrama de Ishikawa: causas de las dificultades para acceder a citas médicas", width: 75%)]]

#metadata((src: "README.md", line: 807))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 810))
El diagrama identifica #strong[seis categorías principales de causas] que contribuyen al problema, como se observa en la #link("#figura-7")[Figura 7]:

#metadata((src: "README.md", line: 812))
- #strong[Tecnología:] Sistemas de citas obsoletos o inexistentes, plataformas que pueden presentar dificultades ante una alta demanda, falta de integración entre módulos y problemas de conectividad en determinados establecimientos.
- #strong[Procesos:] Asignación manual de citas, falta de estandarización en la gestión de turnos, procesos burocráticos que pueden generar colas presenciales y dificultades para gestionar cancelaciones o reprogramaciones.
- #strong[Personas:] Falta de capacitación del personal administrativo, resistencia al cambio hacia herramientas digitales, diferentes niveles de conocimiento digital de los usuarios y disponibilidad limitada de personal frente a una alta demanda.
- #strong[Métodos:] Utilización de registros manuales, ausencia de mecanismos de priorización, falta de seguimiento de pacientes en listas de espera y posibles duplicidades o inconsistencias en los registros.
- #strong[Entorno:] Infraestructura limitada, alta demanda de pacientes, condiciones socioeconómicas que pueden dificultar el acceso y distancia entre el domicilio del paciente y el establecimiento de salud.
- #strong[Medición:] Falta de indicadores relacionados con el ausentismo, tiempos de espera y satisfacción de los pacientes, así como disponibilidad limitada de reportes para apoyar la mejora continua.

#heading(level: 3)[1.2.2. Lean UX Process] <sec:1-2-2-lean-ux-process>
#metadata((src: "README.md", line: 824, kind: "heading", level: 3))

#heading(level: 4)[1.2.2.1. Lean UX Problem Statement] <sec:1-2-2-1-lean-ux-problem-statement>
#metadata((src: "README.md", line: 826, kind: "heading", level: 4))

#metadata((src: "README.md", line: 828))
Actualmente, tanto los pacientes como el personal asistencial y administrativo de los establecimientos públicos de salud enfrentan dificultades por la dependencia de procesos presenciales y telefónicos que no permiten conocer en tiempo real la disponibilidad de citas, gestionar cancelaciones o listas de espera, ni dar seguimiento eficiente a la atención. Esto genera problemas como colas prolongadas, cupos desaprovechados, desinformación sobre la disponibilidad de citas y una carga operativa elevada para el personal. Además, muchos pacientes no cuentan con mecanismos accesibles que les permitan orientar el tipo de atención que podrían requerir antes de acudir al establecimiento.

#metadata((src: "README.md", line: 830))
¿Cómo podríamos diseñar una solución digital integral que permita a los pacientes reservar y gestionar sus citas médicas en tiempo real, acceder a listas de espera dinámicas y recibir orientación inicial sobre sus síntomas, mientras se brinda al personal asistencial y administrativo herramientas para gestionar el flujo de atención y aprovechar mejor los cupos disponibles?

#heading(level: 4)[1.2.2.2. Lean UX Assumptions] <sec:1-2-2-2-lean-ux-assumptions>
#metadata((src: "README.md", line: 832, kind: "heading", level: 4))

#heading(level: 5)[1.2.2.2.1 Business Assumptions] <sec:1-2-2-2-1-business-assumptions>
#metadata((src: "README.md", line: 833, kind: "heading", level: 5))

#metadata((src: "README.md", line: 835))
- Existe una demanda no atendida de pacientes en establecimientos públicos de salud que requieren mecanismos digitales para acceder a citas médicas de forma oportuna.
- Las dificultades de acceso a citas están vinculadas a la dependencia de procesos presenciales y telefónicos, generando una necesidad urgente de digitalización.
- El personal asistencial y administrativo de los establecimientos está interesado en herramientas que faciliten la gestión de citas y el flujo de pacientes.
- Los establecimientos públicos de salud buscan reducir tiempos de espera y mejorar el aprovechamiento de sus cupos disponibles.
- Existen iniciativas del MINSA orientadas a la digitalización de citas, lo que evidencia una tendencia favorable para la adopción de SaludYa.

#metadata((src: "README.md", line: 841))
#pagebreak()

#heading(level: 5)[1.2.2.2.2 Business Outcomes] <sec:1-2-2-2-2-business-outcomes>
#metadata((src: "README.md", line: 842, kind: "heading", level: 5))

#metadata((src: "README.md", line: 844))
- Queremos que los establecimientos de salud reduzcan en un 30% las colas presenciales durante los primeros 6 meses de implementación.
- Buscamos aumentar en un 25% el aprovechamiento de los cupos disponibles mediante la gestión de listas de espera y cancelaciones.
- Queremos reducir en un 35% el tiempo promedio que el personal dedica a la gestión manual de citas, en un plazo de 3 meses.
- Esperamos que el 50% de los establecimientos piloto recomienden la herramienta a otras sedes dentro de los primeros 3 meses de uso.

#heading(level: 5)[1.2.2.2.3 User Assumptions] <sec:1-2-2-2-3-user-assumptions>
#metadata((src: "README.md", line: 849, kind: "heading", level: 5))

#metadata((src: "README.md", line: 851))
- Los pacientes no cuentan actualmente con mecanismos digitales integrados, sino con canales presenciales o telefónicos fragmentados.
- Tienen interés en acceder a información oportuna sobre la disponibilidad de citas, pero no siempre cuentan con los medios para hacerlo.
- Necesitan una solución simple, rápida y accesible desde su dispositivo móvil que no requiera desplazamientos innecesarios.
- Les preocupa perder su turno o no ser informados sobre cambios en su cita.
- Valoran contar con recordatorios y una orientación inicial sobre el tipo de atención que podrían requerir.

#heading(level: 5)[1.2.2.2.4 User Outcomes] <sec:1-2-2-2-4-user-outcomes>
#metadata((src: "README.md", line: 857, kind: "heading", level: 5))

#metadata((src: "README.md", line: 859))
- El 80% de los pacientes reportan una reducción en el tiempo dedicado a gestionar sus citas después de 3 meses de uso.
- El 70% de los pacientes disminuyen sus desplazamientos innecesarios al establecimiento gracias a la reserva y el seguimiento digital.
- Reducir en un 30% el tiempo de espera percibido por los pacientes en el establecimiento gracias al check-in mediante código QR.
- El 65% del personal administrativo reporta una mejora en el control del flujo de pacientes y el aprovechamiento de cupos.
- El 70% de los usuarios completan el proceso de reserva de una cita sin asistencia técnica en menos de 5 minutos.

#heading(level: 5)[1.2.2.2.5 Features] <sec:1-2-2-2-5-features>
#metadata((src: "README.md", line: 865, kind: "heading", level: 5))

#metadata((src: "README.md", line: 867))
- Si implementamos una funcionalidad que permita a los pacientes consultar disponibilidad y reservar citas médicas en tiempo real, entonces se reducirán los desplazamientos innecesarios y las colas presenciales.
- Si los pacientes cuentan con una lista de espera dinámica y reciben notificaciones ante cupos liberados por cancelaciones, entonces se aprovechará mejor la disponibilidad existente y se reducirán los tiempos de espera.
- Si el personal asistencial y administrativo dispone de una aplicación que les permita visualizar el flujo de pacientes y gestionar cambios o cancelaciones, entonces podrán optimizar la atención y reducir la carga operativa asociada a la gestión manual de citas.

#heading(level: 4)[1.2.2.3. Lean UX Hypothesis Statements] <sec:1-2-2-3-lean-ux-hypothesis-statements>
#metadata((src: "README.md", line: 871, kind: "heading", level: 4))

#metadata((src: "README.md", line: 873))
#pagebreak()

#metadata((src: "README.md", line: 876))
- #strong[Hypothesis Statement 1]
#strong[Creemos que] lograremos una reducción en las colas presenciales y un mejor aprovechamiento de los cupos disponibles.
#strong[Sabremos que] si los pacientes
#strong[Obtienen] visibilidad en tiempo real sobre la disponibilidad de citas y la posibilidad de unirse a una lista de espera dinámica
#strong[Cuando veamos] una solución digital que permita reservar, gestionar y recibir notificaciones sobre sus citas médicas.
- #strong[Hypothesis Statement 2]
#strong[Creemos que] lograremos un aumento en la satisfacción de los pacientes y una reducción en los tiempos de espera percibidos.
#strong[Sabremos que] los pacientes
#strong[Cuando veamos] mejor acceso a recordatorios, orientación inicial sobre síntomas y check-in mediante código QR
#strong[Con] una funcionalidad que agilice su llegada y atención en el establecimiento.
- #strong[Hypothesis Statement 3]
#strong[Creemos que] lograremos una mejora en el control del flujo de atención y una reducción en la carga operativa del personal.
#strong[Sabremos que] si el personal asistencial y administrativo
#strong[Obtiene] la capacidad de gestionar cambios, cancelaciones y el estado de las atenciones en tiempo real
#strong[Cuando veamos] con una aplicación que centralice la información de pacientes y citas programadas.

#heading(level: 4)[1.2.2.4. Lean UX Canvas] <sec:1-2-2-4-lean-ux-canvas>
#metadata((src: "README.md", line: 894, kind: "heading", level: 4))

#metadata((src: "README.md", line: 896))
El Lean UX Canvas es una herramienta metodológica que permite sintetizar y visualizar de manera estructurada los elementos clave del proyecto SaludYa. Este canvas facilita la comprensión integral del problema de negocio, las soluciones propuestas, los usuarios objetivo y los resultados esperados, proporcionando una base sólida para el desarrollo ágil del producto.

#metadata((src: "README.md", line: 903))
#strong[Figura 8]

#metadata((src: "README.md", line: 905))
#emph[Lean UX Canvas de SaludYa]

#metadata((src: "README.md", line: 907, kind: "figure", img: "https://i.imgur.com/ESmSAsu.jpeg"))
#align(left)[#block(breakable: false)[#fit-image("/build/remote/remote-54a19f3fbe9933e6.jpeg", alt: "Lean UX Canvas de SaludYa", width: 100%)]]

#metadata((src: "README.md", line: 911))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 914))
#align(center)[Lean Ux Canvas]

#metadata((src: "README.md", line: 917))
La imagen presenta una matriz dividida en ocho secciones que abordan desde la identificación del problema de acceso a citas médicas hasta los beneficios específicos para pacientes y personal de salud. Aquí se define el problema de negocio relacionado con la dificultad de acceso oportuno a citas médicas en establecimientos públicos de salud, seguido de las ideas de solución que incluyen la reserva digital de citas, la lista de espera dinámica y el check-in mediante código QR. Los resultados empresariales se enfocan en mejorar la percepción de RuwaLabs y ayudar a los establecimientos públicos de salud a reducir colas y optimizar el aprovechamiento de sus cupos disponibles, como se observa en la #link("#figura-8")[Figura 8].

#heading(level: 2)[1.3. Segmentos objetivos] <sec:1-3-segmentos-objetivos>
#metadata((src: "README.md", line: 919, kind: "heading", level: 2))

#metadata((src: "README.md", line: 921))
A continuación, se determinan los segmentos objetivos a los que va dirigida la propuesta de solución #strong[SaludYa] para la gestión de citas médicas en establecimientos públicos de salud.

#metadata((src: "README.md", line: 923))
#strong[Segmento objetivo 1: Pacientes de zonas urbanas periféricas que acuden a establecimientos públicos de salud]

#metadata((src: "README.md", line: 925))
- #strong[Datos demográficos:]
  - Edad: Entre 18 y 65 años, incluyendo adultos que gestionan sus propias citas y las de familiares o dependientes (hijos, adultos mayores).
  - Ocupación: Diversa, incluyendo personas que trabajan, estudian o se dedican a labores del hogar.
  - Lugar de residencia: Zonas urbanas periféricas de Lima Metropolitana, Perú.
- #strong[Perfil:] Pacientes que acuden con cierta frecuencia a postas, centros de salud o establecimientos materno-infantiles públicos, y que muchas veces también gestionan la atención médica de familiares o personas a su cargo.
- #strong[Problema:] La dependencia de procesos presenciales o telefónicos para conseguir una cita genera tiempos de espera elevados, cupos limitados, desinformación sobre la disponibilidad y el riesgo de perder citas ya conseguidas por falta de recordatorios.
- #strong[Necesidad:] Una solución digital accesible desde el celular que permita reservar citas médicas, conocer la disponibilidad en tiempo real, recibir notificaciones cuando se libere un cupo y gestionar tanto sus propias citas como las de sus familiares o dependientes.

#metadata((src: "README.md", line: 933))
#strong[Segmento objetivo 2: Personal asistencial y administrativo de establecimientos públicos de salud]

#metadata((src: "README.md", line: 935))
- #strong[Datos demográficos:]
  - Edad: Mayores de 18 años.
  - Ocupación: Personal administrativo, de admisión, enfermeros y técnicos de establecimientos públicos de salud.
  - Lugar de residencia: Lima Metropolitana, Perú.
- #strong[Perfil:] Personal responsable de la gestión de citas, la atención de pacientes y el control del flujo de atención dentro de los establecimientos públicos de salud.
- #strong[Problema:] La asignación manual de cupos, la gestión de cancelaciones, el control de pacientes que no se presentan y el seguimiento de la sala de espera generan una carga operativa elevada y dificultan la visualización del estado de la atención en tiempo real.
- #strong[Necesidad:] Una herramienta digital que centralice la gestión de citas y pacientes, permita visualizar en tiempo real el estado de la atención y la demanda, y facilite el control de cancelaciones, inasistencias y listas de espera.

#metadata((src: "README.md", line: 943))
#pagebreak()

#heading(level: 1)[Capítulo II: Requirements Development and Software Solution Design] <sec:capitulo-ii-requirements-development-and-software-solution-design>
#metadata((src: "README.md", line: 945, kind: "heading", level: 1))

#heading(level: 2)[2.1. Competidores] <sec:2-1-competidores>
#metadata((src: "README.md", line: 947, kind: "heading", level: 2))

#heading(level: 3)[2.1.1. Análisis competitivo] <sec:2-1-1-analisis-competitivo>
#metadata((src: "README.md", line: 949, kind: "heading", level: 3))

#metadata((src: "README.md", line: 951))
#quote(block: true)[
  #metadata((src: "README.md", line: 951))
  #strong[¿Por qué llevar a cabo este análisis?] #linebreak() Mediante este análisis competitivo buscamos identificar las principales características, fortalezas, debilidades y propuestas de valor de las soluciones existentes en el mercado. Esto nos permitirá reconocer oportunidades de diferenciación y definir cómo #strong[SaludYa] puede ofrecer un mayor valor a los pacientes y al personal de los establecimientos públicos de salud, como se detalla en la #link("#tabla-11")[Tabla 11] y la #link("#figura-9")[Figura 9], la #link("#figura-10")[Figura 10], la #link("#figura-11")[Figura 11] y la #link("#figura-12")[Figura 12].
]

#metadata((src: "README.md", line: 957))
#strong[Tabla 11]

#metadata((src: "README.md", line: 959))
#emph[Análisis competitivo de SaludYa, Doctoralia, Cita Médica y MINSA]

#metadata((src: "README.md", line: 961, kind: "table"))
#table(
  columns: 5,
  align: (left, center, center, center, center),
  table.header([#strong[Competitive Analysis Landscape]], table.cell(align: center)[#strong[SaludYa]], table.cell(align: center)[#strong[Doctoralia]], table.cell(align: center)[#strong[Cita Médica]], table.cell(align: center)[#strong[Citas en Línea (MINSA)]]),
  tline,
  [#strong[Logo]], table.cell(align: center)[*Figura 9* #linebreak() _Logotipo de SaludYa_ #linebreak() #box(width: 100%)[#fit-image("/assets/Icon_SaludYa.png", alt: "Logotipo de SaludYa", width: 100%, fit: "contain")]], table.cell(align: center)[*Figura 10* #linebreak() _Logotipo de Doctoralia_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-33faabdf5a0aeaa1.png", alt: "Logotipo de Doctoralia", width: 100%, fit: "contain")]], table.cell(align: center)[*Figura 11* #linebreak() _Logotipo de Cita Médica_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-d69f72158bb99a36.png", alt: "Logotipo de Cita Médica", width: 100%, fit: "contain")]], table.cell(align: center)[*Figura 12* #linebreak() _Logotipo del MINSA_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-78be5ddc4bd6301f.jpeg", alt: "Logotipo del MINSA", width: 100%, fit: "contain")]],
  [#strong[Perfil \/ Overview]], table.cell(align: center)[Es una solución compuesta por dos aplicaciones móviles que conectan a pacientes y personal de establecimientos públicos de salud, permitiendo la reserva de citas, la gestión de listas de espera y el seguimiento del flujo de atención en tiempo real.], table.cell(align: center)[Doctoralia es una plataforma internacional líder en reserva de citas médicas, que conecta a pacientes con más de 29 000 especialistas y clínicas privadas registrados, permitiendo agendar consultas presenciales o por videollamada.], table.cell(align: center)[Cita Médica es una aplicación peruana que permite reservar citas médicas en consultorios y clínicas privadas, de forma presencial o por videoconsulta.], table.cell(align: center)[Es una iniciativa del Ministerio de Salud (MINSA) que permite generar citas digitales en establecimientos de primer nivel de atención y hospitales seleccionados, como parte de la digitalización del Seguro Integral de Salud (SIS).],
  [#strong[Ventaja competitiva] #linebreak() #emph[¿Qué valor ofrece a los clientes?]], table.cell(align: center)[Enfoque específico en establecimientos públicos de salud, conectando la gestión del paciente con la operación interna del establecimiento mediante lista de espera dinámica, check-in por QR y pre-filtro de síntomas.], table.cell(align: center)[Amplia red de especialistas verificados, videoconsultas, recordatorios automáticos y chat directo con el médico.], table.cell(align: center)[Consulta de precios de medicamentos y recetas en farmacias cercanas, además de recordatorios y chat privado con el médico.], table.cell(align: center)[Acceso gratuito y dirigido específicamente a la población que se atiende en establecimientos públicos de salud, con respaldo institucional del Estado.],
  [#strong[Perfil de Marketing] #linebreak() #emph[Mercado objetivo]], table.cell(align: center)[Pacientes de zonas urbanas periféricas y personal asistencial y administrativo de establecimientos públicos de salud.], table.cell(align: center)[Pacientes que buscan atención médica privada, así como especialistas y clínicas privadas.], table.cell(align: center)[Pacientes que buscan atención médica privada en consultorios y clínicas de Perú.], table.cell(align: center)[Pacientes asegurados al SIS y usuarios de establecimientos públicos de salud en Lima y otras regiones.],
  [#strong[Estrategias de marketing]], table.cell(align: center)[Alianzas con establecimientos públicos de salud y difusión mediante campañas informativas y redes sociales.], table.cell(align: center)[Posicionamiento en redes sociales, SEO y alianzas con seguros médicos privados.], table.cell(align: center)[Posicionamiento en tiendas de aplicaciones (App Store, Google Play) y redes sociales.], table.cell(align: center)[Difusión institucional a través de comunicados del MINSA y de cada establecimiento de salud.],
  [#strong[Productos & Servicios]], table.cell(align: center)[App para pacientes (reserva de citas, recordatorios, lista de espera dinámica, pre-filtro de síntomas, gestión de familiares y check-in por QR) y app para personal (gestión de citas, visualización del flujo de atención y control de cancelaciones e inasistencias).], table.cell(align: center)[Búsqueda de especialistas por ciudad o seguro médico, reserva de citas presenciales o virtuales, recordatorios, videoconsultas y mensajería con el especialista.], table.cell(align: center)[Búsqueda de médicos y consultorios cercanos, reserva de citas presenciales o por videoconsulta, recordatorios y consulta de precios de medicamentos.], table.cell(align: center)[Registro y reserva de citas médicas de forma virtual en hospitales y centros de salud seleccionados.],
  [#strong[Perfil de Producto] #linebreak() #emph[Precios & Costos]], table.cell(align: center)[Al estar dirigida a establecimientos públicos de salud, se plantea como un servicio sin costo directo para el paciente, con un modelo de implementación institucional.], table.cell(align: center)[Gratuito para pacientes; planes de suscripción mensual para profesionales y clínicas (Plus, VIP, entre otros).], table.cell(align: center)[Aplicación gratuita para el paciente.], table.cell(align: center)[Gratuito, al ser un servicio público.],
  [#strong[Canales de distribución] #linebreak() #emph[Web y\/o Móvil]], table.cell(align: center)[Web y Móvil], table.cell(align: center)[Web y Móvil], table.cell(align: center)[Móvil (iOS y Android)], table.cell(align: center)[Móvil (aplicaciones por hospital) y, en algunos casos, Web],
  [#strong[Fortalezas]], table.cell(align: center)[Conecta la experiencia del paciente con la operación interna del establecimiento, reduciendo colas y mejorando el aprovechamiento de los cupos disponibles.], table.cell(align: center)[Amplia base de especialistas y funcionalidades avanzadas como videoconsultas y lista de espera inteligente.], table.cell(align: center)[Integración de información sobre precios de medicamentos y recetas, además de comunicación directa con el médico.], table.cell(align: center)[Cobertura directa dentro del sistema público de salud y respaldo institucional del MINSA.],
  [#strong[Análisis SWOT — Debilidades]], table.cell(align: center)[Requiere una conexión estable a internet y la adopción digital del personal administrativo del establecimiento.], table.cell(align: center)[Enfocado en el sector privado, sin cobertura de establecimientos públicos de salud.], table.cell(align: center)[Enfocado únicamente en consultorios y clínicas privadas.], table.cell(align: center)[Cobertura limitada a determinados hospitales, sin funcionalidades como lista de espera dinámica, check-in por QR o gestión interna del flujo de atención.],
  [#strong[Análisis SWOT — Oportunidades]], table.cell(align: center)[Alineación con las iniciativas de digitalización del MINSA y expansión a más establecimientos públicos de salud.], table.cell(align: center)[Expansión hacia convenios con aseguradoras y nuevas especialidades.], table.cell(align: center)[Expansión hacia convenios con establecimientos públicos de salud.], table.cell(align: center)[Expansión a más establecimientos de salud a nivel nacional e integración de nuevas funcionalidades.],
  [#strong[Análisis SWOT — Amenazas]], table.cell(align: center)[Competencia de plataformas privadas ya consolidadas y resistencia al cambio en instituciones públicas.], table.cell(align: center)[Aparición de nuevas plataformas especializadas por sector, como establecimientos públicos.], table.cell(align: center)[Competencia de plataformas más consolidadas como Doctoralia.], table.cell(align: center)[Falta de mantenimiento o actualización tecnológica constante al depender de presupuesto público.],
  tline,
)

#metadata((src: "README.md", line: 977))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 979))
#pagebreak()

#heading(level: 3)[2.1.2. Estrategias y tácticas frente a competidores] <sec:2-1-2-estrategias-y-tacticas-frente-a-competidores>
#metadata((src: "README.md", line: 980, kind: "heading", level: 3))

#metadata((src: "README.md", line: 982))
Una vez realizado la identificación de fortalezas, oportunidades, debilidades y amenazas con el análisis FODA de nuestros competidores en el sector del mercado, pasaremos a plantear las estrategias y tácticas para hacerle frente a estos mismos.

#metadata((src: "README.md", line: 984))
- Expansión de integraciones: Integrar SaludYa con los sistemas de información del MINSA y del Seguro Integral de Salud (SIS), así como con los sistemas hospitalarios (HIS) de los establecimientos, facilitando la interoperabilidad y el registro unificado de citas.
- Soporte Postventa: Brindar soporte técnico y asesoría continua al personal asistencial y administrativo, garantizando el máximo aprovechamiento de las funcionalidades y una adopción institucional sostenida en el tiempo.
- Visibilidad y seguimiento en tiempo real: Incorporar capacidades de seguimiento del flujo de pacientes, cupos y listas de espera mediante herramientas accesibles y de fácil comprensión tanto para el paciente como para el personal.
- Diferenciación por soporte y capacitación: Ofrecer capacitación digital al personal asistencial y administrativo de los establecimientos públicos de salud, muchos de los cuales presentan resistencia o poca familiaridad con herramientas tecnológicas.
- Alianzas estratégicas con el sector público: Establecer alianzas con el MINSA, redes de salud y DIRIS para promover una adopción institucional temprana y respaldada oficialmente.
- MVP enfocado en lo esencial: Iniciar con un MVP centrado en las funcionalidades esenciales —reserva de citas, lista de espera dinámica y notificaciones— para minimizar riesgos y validar la solución antes de escalar nuevas funciones.

#heading(level: 2)[2.2. Entrevistas] <sec:2-2-entrevistas>
#metadata((src: "README.md", line: 996, kind: "heading", level: 2))

#heading(level: 3)[2.2.1. Diseño de entrevistas] <sec:2-2-1-diseno-de-entrevistas>
#metadata((src: "README.md", line: 998, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1000))
Las entrevistas fueron diseñadas como guías semiestructuradas, considerando tres entrevistas por cada segmento objetivo: pacientes de zonas urbanas periféricas y personal asistencial y administrativo de establecimientos públicos de salud.

#heading(level: 3)[2.2.2. Registro de entrevistas] <sec:2-2-2-registro-de-entrevistas>
#metadata((src: "README.md", line: 1002, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1004))
En esta sección, se registra cada entrevista realizada. En total, se realizaron tres entrevistas por cada segmento objetivo. Se detalla el nombre del miembro entrevistador y el del entrevistado. Además, se redacta un resumen general del contenido de la entrevista realizada.

#metadata((src: "README.md", line: 1006))
#pagebreak()

#metadata((src: "README.md", line: 1007))
#strong[Segmento Objetivo 1: Pacientes de zonas urbanas periféricas que acuden a establecimientos públicos de salud]

#metadata((src: "README.md", line: 1009))
Entrevista 1

#metadata((src: "README.md", line: 1011))
La entrevista a Braulio Núñez recoge su experiencia con la gestión de citas médicas y las necesidades identificadas para SaludYa, como se detalla en la #link("#tabla-12")[Tabla 12] y la #link("#figura-13")[Figura 13].

#metadata((src: "README.md", line: 1015))
#strong[Tabla 12]

#metadata((src: "README.md", line: 1017))
#emph[Ficha de entrevista — Registro de la entrevista a Braulio Núñez]

#metadata((src: "README.md", line: 1021, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 13* #linebreak() _Registro de la entrevista a Braulio Núñez_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-5ec6c639c6ace0b8.jpeg", alt: "Registro de la entrevista a Braulio Núñez", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] Comas #linebreak() #strong[Entrevistado:] Braulio Núñez],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQA1UOjt3ewoT49AZwwO8GtcASfbhFc_OfiWOZ0V9ZzQUvU?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=VApkCW")[Link]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [Timing: Minuto 00:00-04:22], [#strong[Resumen:] Braulio Núñez, de 24 años, es técnico de mantenimiento y acude con frecuencia al Centro de Salud Comas para llevar a su sobrino a sus controles y vacunas. Relata que, para conseguir una cita, suele madrugar desde las cuatro y media de la mañana, ya que si llega más tarde ya no encuentra cupos disponibles en pediatría, y en alguna ocasión tuvo que regresar al día siguiente por no lograr atención. Menciona que casi nunca puede resolver esto por teléfono, pues las líneas del establecimiento no responden, por lo que siempre debe acudir de forma presencial. También comenta que una vez perdió una cita ya conseguida porque no contaba con ningún recordatorio. En cuanto a tecnología, utiliza un celular Android en el que emplea con frecuencia WhatsApp, Facebook y aplicaciones de delivery, y se muestra cómodo realizando trámites desde el celular. Considera que una aplicación que le muestre la disponibilidad de citas en tiempo real, le envíe notificaciones cuando se libere un cupo y respete el horario reservado, le ahorraría mucho tiempo y evitaría que tenga que madrugar sin certeza de conseguir atención.],
  tline,
)

#metadata((src: "README.md", line: 1028))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1030))
#pagebreak()

#metadata((src: "README.md", line: 1032))
#strong[Entrevista 2]

#metadata((src: "README.md", line: 1035))
La entrevista a Yordi Salazar recoge su experiencia con la gestión de citas médicas y las necesidades identificadas para SaludYa, como se detalla en la #link("#tabla-13")[Tabla 13] y la #link("#figura-14")[Figura 14].

#metadata((src: "README.md", line: 1039))
#strong[Tabla 13]

#metadata((src: "README.md", line: 1041))
#emph[Ficha de entrevista — Registro de la entrevista a Yordi Salazar]

#metadata((src: "README.md", line: 1045, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 14* #linebreak() _Registro de la entrevista a Yordi Salazar_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-773154938e33057a.jpeg", alt: "Registro de la entrevista a Yordi Salazar", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] Villa María del Triunfo #linebreak() #strong[Entrevistado:] Yordi Salazar],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQCq6uLH5lxNSpoxEAN9q1qfAVF0qgEoHWEvug_aNrID100?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=sXQwSj")[Link]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [Timing: Minuto 00:00-04:06], [#strong[Resumen:] Yordi Salazar, de 27 años, es dueño de una tienda de abarrotes y acude junto con su madre a la posta de salud de su zona de forma mensual. Cuenta que en su última experiencia tuvo que ir hasta tres veces distintas antes de conseguir cupo, ya que las dos primeras veces ya no había disponibilidad al momento de llegar. Señala que la parte más complicada es no saber cuánta gente hay antes en la fila, y que en una ocasión perdió una cita porque solo le avisaron la fecha de forma verbal, sin ningún respaldo escrito. Cuando no logra conseguir cupo, opta por acudir a una clínica particular, aunque esto le representa un gasto adicional. En cuanto a tecnología, utiliza un celular sencillo y no se siente del todo cómodo con trámites digitales, por lo que suele apoyarse en su hijo para este tipo de gestiones. Considera que una aplicación sencilla, con letras grandes y pocos pasos, que le permita conocer la disponibilidad de citas y avisarle mediante llamada o mensaje de texto cuando se libere un cupo, sería de gran ayuda para evitar las largas colas que actualmente enfrenta.],
  tline,
)

#metadata((src: "README.md", line: 1052))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1054))
#pagebreak()

#metadata((src: "README.md", line: 1056))
Entrevista 3:

#metadata((src: "README.md", line: 1059))
La entrevista a Kevin Huamán recoge su experiencia con la gestión de citas médicas y las necesidades identificadas para SaludYa, como se detalla en la #link("#tabla-14")[Tabla 14] y la #link("#figura-15")[Figura 15].

#metadata((src: "README.md", line: 1063))
#strong[Tabla 14]

#metadata((src: "README.md", line: 1065))
#emph[Ficha de entrevista — Registro de la entrevista a Kevin Huamán]

#metadata((src: "README.md", line: 1069, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 15* #linebreak() _Registro de la entrevista a Kevin Huamán_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-d1ece5330c1dbbea.jpeg", alt: "", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] San Juan de Lurigancho #linebreak() #strong[Entrevistado:] Kevin Huamán],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQAAwi-Crd0UR6aM_vPtIyU8AY5rcOh7FEgLdmqvsNkC1bU?e=JGBM7r&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D")[Link]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [Timing: Minuto 00:00-05:35], [#strong[Resumen:] Kevin Huamán, de 22 años, se dedica al reparto mediante aplicaciones de delivery y acude ocasionalmente al centro materno infantil de su zona. Relata que la última vez que necesitó una cita tuvo que pedir el día libre en su trabajo, ya que ni siquiera sabía que existía otra forma de agendar una atención que no fuera de manera presencial. Señala que en una oportunidad llegó al establecimiento y ya no había citas disponibles para medicina general, lo que le hizo perder tiempo de trabajo sin obtener ningún resultado. A diferencia de otros pacientes, se siente muy cómodo utilizando aplicaciones móviles, pues las emplea constantemente para su trabajo de reparto, mapas y redes sociales. Considera que una aplicación confiable, que no se cuelgue y tenga buenas reseñas, que le permita reservar su cita al toque y recibir notificaciones push cuando se libere un cupo, le permitiría organizar mejor su tiempo de trabajo y evitar viajes innecesarios solo para consultar disponibilidad.],
  tline,
)

#metadata((src: "README.md", line: 1076))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1078))
#pagebreak()

#metadata((src: "README.md", line: 1079))
#strong[Segmento Objetivo 2: Personal asistencial y administrativo de establecimientos públicos de salud]

#metadata((src: "README.md", line: 1081))
Entrevista 4:

#metadata((src: "README.md", line: 1084))
La entrevista a Franco Alanoca recoge su experiencia con la gestión de citas médicas y las necesidades identificadas para SaludYa, como se detalla en la #link("#tabla-15")[Tabla 15] y la #link("#figura-16")[Figura 16].

#metadata((src: "README.md", line: 1088))
#strong[Tabla 15]

#metadata((src: "README.md", line: 1090))
#emph[Ficha de entrevista — Registro de la entrevista a Franco Alanoca]

#metadata((src: "README.md", line: 1094, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 16* #linebreak() _Registro de la entrevista a Franco Alanoca_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-9292bdafa083b2ba.jpeg", alt: "", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] San Juan de Lurigancho #linebreak() #strong[Entrevistado:] Franco Alanoca],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQDwPo3p7nHzTo_3Q8Hdq5zRASpKzhsImRgOPsWf4awAsOU?e=pY3MtU&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D")[Link]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [Timing: Minuto 00:00-06:00], [#strong[Resumen:] Franco Alanoca, de 26 años, es técnico de admisión en un centro de salud de San Juan de Lurigancho, cargo que desempeña desde hace dos años. Su labor consiste en registrar a los pacientes conforme llegan y asignar los cupos del día según el orden de llegada, sin que exista un sistema de reserva previa. Explica que cuando los cupos se agotan simplemente se informa a los pacientes que regresen al día siguiente, y que no cuentan con un mecanismo formal para gestionar cancelaciones o inasistencias, por lo que esos cupos terminan perdiéndose. Señala que el principal problema es la desorganización que se genera cuando hay mucha demanda, especialmente en las mañanas, lo que ocasiona reclamos y un ambiente tenso. Actualmente, la gestión se apoya en cuadernos físicos y hojas de Excel, lo que en ocasiones provoca pérdida de información. Considera que contar con un sistema que muestre en tiempo real la disponibilidad de cupos y el estado de cada paciente eliminaría gran parte del registro manual repetitivo y ayudaría a evitar confusiones en la atención diaria.],
  tline,
)

#metadata((src: "README.md", line: 1101))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1103))
#pagebreak()

#metadata((src: "README.md", line: 1105))
#strong[Entrevista 5]

#metadata((src: "README.md", line: 1108))
La entrevista a Wilmer Contreras recoge su experiencia con la gestión de citas médicas y las necesidades identificadas para SaludYa, como se detalla en la #link("#tabla-16")[Tabla 16] y la #link("#figura-17")[Figura 17].

#metadata((src: "README.md", line: 1112))
#strong[Tabla 16]

#metadata((src: "README.md", line: 1114))
#emph[Ficha de entrevista — Registro de la entrevista a Wilmer Contreras]

#metadata((src: "README.md", line: 1118, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 17* #linebreak() _Registro de la entrevista a Wilmer Contreras_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-21ff0a52e6400471.jpeg", alt: "Registro de la entrevista a Wilmer Contreras", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] Comas #linebreak() #strong[Entrevistado:] Wilmer Contreras],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQBrqsrdMO0-QLVyjU8m37RyAcAk6_JKY5ZmpVbMa0_eAk8?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=Rr8mOi")[Link]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [Timing: Minuto 0:00-04:25], [#strong[Resumen:] Wilmer Contreras, de 29 años, se desempeña como jefe de admisión en una posta de salud de Comas desde hace cinco años. Entre sus funciones se encuentra supervisar al personal de admisión, coordinar la distribución de cupos entre especialidades y atender los reclamos de los pacientes. Explica que el proceso actual depende de un cuaderno físico donde se revisa la disponibilidad y se asignan horarios aproximados que no siempre se cumplen, y que cuando los cupos se agotan se deriva a los pacientes a otros establecimientos o se les pide regresar otro día. Menciona que no existe un registro formal de cancelaciones ni de inasistencias, lo que dificulta reasignar los cupos liberados de manera oportuna. Identifica como principal problema la falta de un sistema centralizado que muestre la disponibilidad real de citas, lo que genera colas largas y personal saturado, especialmente los lunes y a inicios de mes. Considera que automatizar la asignación de cupos y las notificaciones a los pacientes sería clave para mejorar la atención y reducir la carga operativa del personal.],
  tline,
)

#metadata((src: "README.md", line: 1125))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1127))
#pagebreak()

#metadata((src: "README.md", line: 1129))
#strong[Entrevista 6]

#metadata((src: "README.md", line: 1134))
#strong[Tabla 17]

#metadata((src: "README.md", line: 1136))
#emph[Ficha de entrevista — Registro de la entrevista a Deyvis Ochante]

#metadata((src: "README.md", line: 1140, kind: "table"))
#table(
  columns: (25%, 75%),
  align: (left, left),
  table.header([Entrevista], [Registro]),
  tline,
  [*Figura 18* #linebreak() _Registro de la entrevista a Deyvis Ochante_ #linebreak() #box(width: 100%)[#fit-image("/build/remote/remote-fee0e59d4ea4e8b1.jpeg", alt: "Registro de la entrevista a Deyvis Ochante", width: 100%, fit: "contain")] #linebreak() Nota. Evidencia de las entrevistas realizadas por el equipo RuwaLabs; vídeos en el Anexo A.], [#strong[Distrito:] Villa María del Triunfo #linebreak() #strong[Entrevistado:] Deyvis Ochante #linebreak() #strong[Edad:] 25 años],
  [#link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQAxoPDUIPTuQou-upR_hnBwARbOntKKq5_cv4dAcDxMApU?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6IldlYiJ9fQ%3D%3D&e=JfXt3p")[Ver entrevista]], [#strong[Entrevistador:] Didier Sebastián Meza Solórzano],
  [#strong[Timing:] 00:00-04:10], [#strong[Resumen:] Deyvis Ochante, de 25 años, es técnico de enfermería encargado de la sala de espera en un centro materno infantil de Villa María del Triunfo, donde labora desde hace tres años. Su función principal es organizar el orden de atención de los pacientes y apoyar en el registro cuando es necesario. Relata que actualmente no existe un horario exacto asignado para cada paciente, y que el control de la sala de espera se realiza mediante una lista escrita a mano. Señala que el principal problema es no poder anticipar cuántos pacientes llegarán realmente cada día, lo que se agrava en las mañanas y durante campañas de vacunación. Además, indica que buscar las historias clínicas físicas de cada paciente le toma bastante tiempo, ya que en ocasiones se encuentran mal archivadas. Considera que contar con la información del paciente de forma digital, visible para todo el personal, ayudaría a reducir la dependencia del papel y a mejorar el seguimiento de la atención en los días de mayor demanda.],
  tline,
)

#metadata((src: "README.md", line: 1147))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1150))
Los vídeos que respaldan las entrevistas se reúnen en el #link("#anexo-a-vídeos-de-entrevistas-realizadas")[Anexo A], como se detalla en la #link("#tabla-17")[Tabla 17] y la #link("#figura-18")[Figura 18].

#metadata((src: "README.md", line: 1152))
#pagebreak()

#heading(level: 3)[2.2.3. Análisis de entrevistas] <sec:2-2-3-analisis-de-entrevistas>
#metadata((src: "README.md", line: 1155, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1157))
En primer lugar, con base en las tres entrevistas realizadas al primer segmento objetivo, conformado por los pacientes de zonas urbanas periféricas, se puede concluir lo siguiente:

#metadata((src: "README.md", line: 1159))
- Los usuarios perciben que el proceso actual para conseguir una cita médica presencial no satisface sus necesidades, ya que depende de madrugar y hacer largas colas sin certeza de conseguir cupo, lo cual afecta su tiempo laboral y personal.
- Aunque algunos usuarios no han utilizado antes una aplicación para reservar citas médicas, sí manifiestan interés en contar con una herramienta digital que les permita conocer la disponibilidad en tiempo real. Consideran que esto les brindaría mayor seguridad, ahorro de tiempo y una mejor planificación de sus actividades diarias.
- Los usuarios requieren una aplicación que les permita conocer la disponibilidad de citas, recibir notificaciones ante cupos liberados y gestionar sus citas sin necesidad de acudir físicamente al establecimiento. Esta solución debe estar orientada a reducir la incertidumbre del proceso actual y facilitar el acceso oportuno a la atención médica.

#metadata((src: "README.md", line: 1165))
A continuación, se presentan los porcentajes destacados en las respuestas de los entrevistados a las preguntas planteadas:

#metadata((src: "README.md", line: 1167))
- Uso previo de aplicaciones para reservar citas o turnos:

#metadata((src: "README.md", line: 1172))
#strong[Figura 19]

#metadata((src: "README.md", line: 1174))
#emph[Uso de aplicaciones móviles para reservar citas entre los pacientes entrevistados]

#metadata((src: "README.md", line: 1176, kind: "figure", img: "https://i.imgur.com/jQEpbDj.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-0d9b1bece4f878fb.png", alt: "Uso de aplicaciones móviles para reservar citas entre los pacientes entrevistados", width: 50%)]]

#metadata((src: "README.md", line: 1180))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1183))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que la mayoría de los entrevistados nunca ha utilizado una aplicación para reservar una cita médica, aunque sí han usado aplicaciones similares para otros rubros como restaurantes o bancos, como se observa en la #link("#figura-19")[Figura 19].

#metadata((src: "README.md", line: 1185))
- Comodidad realizando trámites desde el celular:

#metadata((src: "README.md", line: 1190))
#pagebreak()

#metadata((src: "README.md", line: 1193))
#strong[Figura 20]

#metadata((src: "README.md", line: 1195))
#emph[Comodidad de los pacientes entrevistados al utilizar el celular]

#metadata((src: "README.md", line: 1197, kind: "figure", img: "https://i.imgur.com/nSAfgXx.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-8888ab8169d6de43.png", alt: "Comodidad de los pacientes entrevistados al utilizar el celular", width: 50%)]]

#metadata((src: "README.md", line: 1201))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1204))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que la mayoría de los entrevistados se siente cómodo realizando trámites desde su celular. Sin embargo, hay una pequeña parte que aún depende de un familiar para este tipo de gestiones, como se observa en la #link("#figura-20")[Figura 20].

#metadata((src: "README.md", line: 1206))
- Utilidad de ver la disponibilidad de citas en tiempo real:

#metadata((src: "README.md", line: 1211))
#strong[Figura 21]

#metadata((src: "README.md", line: 1213))
#emph[Utilidad percibida de consultar la disponibilidad de citas]

#metadata((src: "README.md", line: 1215, kind: "figure", img: "https://i.imgur.com/KN9jH35.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-322a2f59e5fb403c.png", alt: "Utilidad percibida de consultar la disponibilidad de citas", width: 50%)]]

#metadata((src: "README.md", line: 1219))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1222))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que todos los entrevistados consideran muy útil poder conocer la disponibilidad de citas desde su celular antes de acudir al establecimiento, como se observa en la #link("#figura-21")[Figura 21].

#metadata((src: "README.md", line: 1224))
Segundo, con base en las tres entrevistas realizadas al segundo segmento objetivo, conformado por el personal asistencial y administrativo, se puede concluir lo siguiente:

#metadata((src: "README.md", line: 1226))
- El personal reconoce que el proceso actual de gestión de citas depende en gran medida de registros manuales, lo cual puede generar errores, pérdida de información y una atención desorganizada cuando hay mucha demanda.
- El personal enfrenta dificultades para controlar en tiempo real la disponibilidad de cupos, las cancelaciones y el flujo de pacientes en espera, lo que puede generar malentendidos, reclamos y sobrecarga operativa.
- El personal considera que contar con un sistema digital que centralice la información de los pacientes y muestre el estado de la atención en tiempo real facilitaría considerablemente su trabajo diario, permitiendo una mejor organización y un servicio más eficiente.

#metadata((src: "README.md", line: 1232))
A continuación, se presentan los porcentajes destacados en las respuestas de los entrevistados a las preguntas planteadas:

#metadata((src: "README.md", line: 1234))
- Sistema de gestión utilizado actualmente:

#metadata((src: "README.md", line: 1239))
#strong[Figura 22]

#metadata((src: "README.md", line: 1241))
#emph[Sistema actual de gestión de citas del personal entrevistado]

#metadata((src: "README.md", line: 1243, kind: "figure", img: "https://i.imgur.com/2xmnVjy.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-303bc867b8d27d8a.png", alt: "Sistema actual de gestión de citas del personal entrevistado", width: 50%)]]

#metadata((src: "README.md", line: 1247))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1250))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que la mayoría del personal entrevistado gestiona las citas únicamente con registros en papel, mientras que una parte más pequeña combina el papel con hojas de Excel, como se observa en la #link("#figura-22")[Figura 22].

#metadata((src: "README.md", line: 1252))
- Necesidad de un sistema con información en tiempo real:

#metadata((src: "README.md", line: 1256))
#pagebreak()

#metadata((src: "README.md", line: 1259))
#strong[Figura 23]

#metadata((src: "README.md", line: 1261))
#emph[Necesidad de un sistema digital según el personal entrevistado]

#metadata((src: "README.md", line: 1263, kind: "figure", img: "https://i.imgur.com/2I5aa41.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-f1f7726f5e9a2b37.png", alt: "Necesidad de un sistema digital según el personal entrevistado", width: 50%)]]

#metadata((src: "README.md", line: 1267))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1270))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que todos los entrevistados consideran necesario contar con un sistema que les muestre información en tiempo real sobre los cupos y el estado de los pacientes, como se observa en la #link("#figura-23")[Figura 23].

#metadata((src: "README.md", line: 1272))
- Momento del día con mayor cantidad de pacientes:

#metadata((src: "README.md", line: 1277))
#strong[Figura 24]

#metadata((src: "README.md", line: 1279))
#emph[Especialidades de mayor demanda según las entrevistas al personal]

#metadata((src: "README.md", line: 1281, kind: "figure", img: "https://i.imgur.com/sEnlY8C.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-866e3d4583cbd289.png", alt: "Especialidades de mayor demanda según las entrevistas al personal", width: 50%)]]

#metadata((src: "README.md", line: 1285))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de las entrevistas documentadas en el Anexo A.]

#metadata((src: "README.md", line: 1288))
En esta imagen, se visualiza una relación de respuestas sobre el tema planteado. Luego del análisis a este gráfico, se concluye que todos los entrevistados coinciden en que las mañanas son el momento de mayor afluencia de pacientes, como se observa en la #link("#figura-24")[Figura 24].

#metadata((src: "README.md", line: 1290))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 2)[2.3. Needfinding] <sec:2-3-needfinding>
#metadata((src: "README.md", line: 1292, kind: "heading", level: 2))

#metadata((src: "README.md", line: 1294))
Con el análisis de datos completado, pasamos a la fase de Needfinding (Búsqueda de Necesidades). El objetivo es empatizar con los usuarios para diseñar una solución técnica y humana que elimine fricciones administrativas y brinde tranquilidad a las familias. Mediante herramientas como User Personas, User Task Matrix, User Journey Mapping y Empathy Mapping, definiremos quiénes son nuestros usuarios, sus acciones, emociones y necesidades reales.

#metadata((src: "README.md", line: 1296))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.3.1. User Personas] <sec:2-3-1-user-personas>
#metadata((src: "README.md", line: 1298, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1300))
A partir de la investigación realizada con personas de zonas periféricas y del entorno de la salud pública, se definieron dos perfiles clave de usuario. Estos representan los segmentos principales que interactúan directa e indirectamente con la plataforma: los #strong[pacientes de zonas urbanas periféricas] que buscan un acceso ágil y oportuno a sus citas médicas, y el #strong[personal asistencial y administrativo], encargado de la gestión operativa diaria.

#metadata((src: "README.md", line: 1302))
Comprender sus dinámicas cotidianas, barreras y prioridades permite diseñar una experiencia accesible, eficiente y adaptada a la realidad de la atención pública.

#metadata((src: "README.md", line: 1305))
#pagebreak()

#heading(level: 4)[Segmento Objetivo 1: Pacientes de zonas urbanas periféricas que acuden a establecimientos públicos de salud] <sec:segmento-objetivo-1-pacientes-de-zonas-urbanas-perifericas-que-acuden-a-establecimientos-publicos-de-salud>
#metadata((src: "README.md", line: 1306, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1311))
#strong[Figura 25]

#metadata((src: "README.md", line: 1313))
#emph[User persona del paciente]

#metadata((src: "README.md", line: 1315, kind: "figure", img: "https://i.imgur.com/HjApNAa.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-060c71093f7f33d9.png", alt: "User persona del paciente", width: 50%)]]

#metadata((src: "README.md", line: 1319))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1322))
Kevin Huamán, de 22 años, es repartidor en San Juan de Lurigancho y domina bien la tecnología para su trabajo, pero acude poco al centro materno infantil de su zona por depender de procesos presenciales. Busca poder consultar disponibilidad y reservar citas desde su celular, y recibir notificaciones cuando se libere un cupo, evitando perder tiempo y días de trabajo yendo sin certeza de conseguir atención, como se observa en la #link("#figura-25")[Figura 25].

#metadata((src: "README.md", line: 1324))
#pagebreak()

#heading(level: 4)[Segmento Objetivo 2: Personal asistencial y administrativo de establecimientos públicos de salud] <sec:segmento-objetivo-2-personal-asistencial-y-administrativo-de-establecimientos-publicos-de-salud>
#metadata((src: "README.md", line: 1325, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1330))
#strong[Figura 26]

#metadata((src: "README.md", line: 1332))
#emph[User persona del personal asistencial y administrativo]

#metadata((src: "README.md", line: 1334, kind: "figure", img: "https://i.imgur.com/tYgAA19.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-61e69f5b29b3086a.png", alt: "User persona del personal asistencial y administrativo", width: 50%)]]

#metadata((src: "README.md", line: 1338))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1341))
Franco Alanoca, de 26 años, es técnico de admisión en un centro de salud de San Juan de Lurigancho, donde registra pacientes y asigna cupos de forma manual con cuadernos y Excel. Busca un sistema que centralice el registro y la disponibilidad de citas en tiempo real, reduzca la carga manual y permita reasignar automáticamente los cupos cancelados, como se observa en la #link("#figura-26")[Figura 26].

#heading(level: 3)[2.3.2. User Task Matrix] <sec:2-3-2-user-task-matrix>
#metadata((src: "README.md", line: 1343, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1345))
Para el siguiente análisis pensamos en dos segmentos principales los cuales podrán utilizar el software #strong[SaludYa]: el #strong[Paciente de zonas urbanas periféricas], que requiere un acceso ágil para agendar citas propias o de sus dependientes, y el #strong[Personal asistencial y administrativo], encargado de operar la admisión, el flujo de atención y el control de cupos dentro de los establecimientos públicos de salud. Ambos interactúan con el dominio del problema desde perspectivas distintas pero complementarias, y las tareas identificadas son realizadas por cada segmento con independencia de la existencia de cualquier solución tecnológica, como se detalla en la #link("#tabla-18")[Tabla 18].

#metadata((src: "README.md", line: 1350))
#strong[Tabla 18]

#metadata((src: "README.md", line: 1352))
#emph[User Task Matrix]

#metadata((src: "README.md", line: 1354, kind: "table"))
#table(
  columns: 7,
  align: (left, center, center, center, center, center, center),
  table.header([Tarea], table.cell(align: center)[Paciente (Zonas Periféricas)], table.cell(align: center)[Personal Asistencial \/ Administrativo], table.cell(align: center)[Frecuencia (Paciente)], table.cell(align: center)[Importancia (Paciente)], table.cell(align: center)[Frecuencia (Personal)], table.cell(align: center)[Importancia (Personal)]),
  tline,
  [Consultar disponibilidad de cupos y horarios], table.cell(align: center)[X], table.cell(align: center)[X], table.cell(align: center)[High], table.cell(align: center)[High], table.cell(align: center)[High], table.cell(align: center)[High],
  [Solicitar o asignar un cupo \/ cita médica], table.cell(align: center)[X], table.cell(align: center)[X], table.cell(align: center)[Medium], table.cell(align: center)[High], table.cell(align: center)[High], table.cell(align: center)[High],
  [Registrar o gestionar citas de familiares y dependientes], table.cell(align: center)[X], table.cell(align: center)[], table.cell(align: center)[Medium], table.cell(align: center)[High], table.cell(align: center)[Low], table.cell(align: center)[Medium],
  [Confirmar la asistencia o recibir recordatorios de cita], table.cell(align: center)[X], table.cell(align: center)[], table.cell(align: center)[Medium], table.cell(align: center)[High], table.cell(align: center)[Low], table.cell(align: center)[Medium],
  [Realizar el check-in \/ registro de llegada al establecimiento], table.cell(align: center)[X], table.cell(align: center)[X], table.cell(align: center)[Medium], table.cell(align: center)[High], table.cell(align: center)[High], table.cell(align: center)[High],
  [Gestionar la lista de espera y reasignación de cupos liberados], table.cell(align: center)[X], table.cell(align: center)[X], table.cell(align: center)[Low], table.cell(align: center)[High], table.cell(align: center)[High], table.cell(align: center)[High],
  [Controlar el flujo y estado de la atención en sala de espera], table.cell(align: center)[], table.cell(align: center)[X], table.cell(align: center)[Low], table.cell(align: center)[Low], table.cell(align: center)[High], table.cell(align: center)[High],
  [Registrar admisión y actualizar datos en registros\/sistemas], table.cell(align: center)[], table.cell(align: center)[X], table.cell(align: center)[Low], table.cell(align: center)[Low], table.cell(align: center)[High], table.cell(align: center)[High],
  tline,
)

#metadata((src: "README.md", line: 1366))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[Análisis del Task Matrix] <sec:analisis-del-task-matrix>
#metadata((src: "README.md", line: 1369, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1371))
A partir del User Task Matrix elaborado, se identifican los siguientes hallazgos:

#metadata((src: "README.md", line: 1373))
- #strong[Tareas con mayor frecuencia e importancia para ambos segmentos:] Consultar la disponibilidad de cupos, solicitar\/asignar citas y realizar el registro de llegada (check-in) representan el núcleo del proceso de atención. Ambos segmentos les asignan importancia #strong[High], reflejando que la desinformación en tiempo real y las largas colas presenciales son los cuellos de botella principales que SaludYa busca resolver tanto para el usuario como para el personal.
- #strong[Principales diferencias entre segmentos:] El personal asistencial y administrativo concentra sus actividades en tareas de gestión operativa interna de frecuencia #strong[High], como controlar el flujo de la sala de espera y registrar admisiones para evitar la pérdida de información en cuadernos o archivos físicos. En cambio, el paciente enfoca su interacción en tareas puntuales de alta importancia (#strong[High]), como la gestión de citas para familiares dependientes y el seguimiento de recordatorios para evitar la pérdida de turnos previamente conseguidos.
- #strong[Coincidencias relevantes:] La gestión de la lista de espera ante cancelaciones e inasistencias es percibida con importancia #strong[High] por ambas partes. Para el personal, representa una oportunidad crítica para reducir la sobrecarga operativa y optimizar el aprovechamiento de los cupos disponibles; para el paciente, constituye el mecanismo clave para acceder a un cupo liberado de forma oportuna sin necesidad de madrugar o realizar viajes innecesarios.

#metadata((src: "README.md", line: 1377))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.3.3. User Journey Mapping] <sec:2-3-3-user-journey-mapping>
#metadata((src: "README.md", line: 1378, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1380))
A partir de los hallazgos obtenidos en las entrevistas con pacientes y personal de salud, se elaboraron los User Journey Maps utilizando la herramienta UXPressia. Estos esquemas analizan la experiencia de cada segmento a lo largo del proceso de atención, contrastando las fricciones de la gestión presencial\/manual actual contra las oportunidades de optimización que introduce la plataforma #strong[SaludYa].

#heading(level: 4)[Segmento 1: Pacientes de zonas urbanas periféricas] <sec:segmento-1-pacientes-de-zonas-urbanas-perifericas>
#metadata((src: "README.md", line: 1382, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1387))
#strong[Figura 27]

#metadata((src: "README.md", line: 1389))
#emph[User journey del paciente]

#metadata((src: "README.md", line: 1391, kind: "figure", img: "https://i.imgur.com/e3SXLtm.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-6f922e066c68254d.png", alt: "User journey del paciente", width: 100%)]]

#metadata((src: "README.md", line: 1395))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1398))
El recorrido de Kevin abarca cinco etapas: sintomatología, intento de reserva, espera y confirmación, check-in y atención médica. Su experiencia inicia con frustración al no obtener respuesta telefónica de la posta, mejora al reservar digitalmente desde SaludYa y recibir confirmación con QR, y culmina en alegría al evitar la cola presencial y conocer su posición real en la sala de espera, como se observa en la #link("#figura-27")[Figura 27].

#metadata((src: "README.md", line: 1400))
#pagebreak()

#heading(level: 4)[Segmento 2: Personal asistencial y administrativo] <sec:segmento-2-personal-asistencial-y-administrativo>
#metadata((src: "README.md", line: 1401, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1406))
#strong[Figura 28]

#metadata((src: "README.md", line: 1408))
#emph[User journey del personal asistencial y administrativo]

#metadata((src: "README.md", line: 1410, kind: "figure", img: "https://i.imgur.com/V0f8Chz.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-c6d81f2fdc2920c4.png", alt: "User journey del personal asistencial y administrativo", width: 100%)]]

#metadata((src: "README.md", line: 1414))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1417))
El recorrido de Franco cubre cinco etapas: apertura de agenda, admisión de pacientes, liberaciones, verificación y cierre con reporte. Su experiencia pasa de la serenidad al organizar los cupos del día, a la satisfacción de una ventanilla descongestionada, hasta la total conformidad al cerrar el turno sin sobrecarga administrativa gracias a la digitalización del registro, como se observa en la #link("#figura-28")[Figura 28].

#metadata((src: "README.md", line: 1419))
#pagebreak()

#heading(level: 3)[2.3.4. Empathy Mapping] <sec:2-3-4-empathy-mapping>
#metadata((src: "README.md", line: 1421, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1423))
El diseño de una solución de software orientada a la salud pública requiere comprender no solo las acciones operativas de los usuarios, sino también sus vivencias emocionales y percepciones del servicio. En este sentido, el Empathy Mapping nos permite trascender el perfil demográfico tradicional para examinar las dinámicas internas de nuestros segmentos objetivo. Al sistematizar lo que el paciente y el personal de salud oyen, ven, dicen, piensan y hacen, se identifican las barreras críticas y las expectativas del dominio. Este análisis asegura que SaludYa no solo sea una plataforma funcionalmente robusta, sino también una herramienta que genere confianza, previsibilidad y bienestar en la atención diaria.

#heading(level: 4)[Segmento 1: Pacientes de zonas urbanas periféricas] <sec:segmento-1-pacientes-de-zonas-urbanas-perifericas-2>
#metadata((src: "README.md", line: 1426, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1431))
#strong[Figura 29]

#metadata((src: "README.md", line: 1433))
#emph[Empathy Map - Paciente de Zonas Periféricas]

#metadata((src: "README.md", line: 1435, kind: "figure", img: "https://i.imgur.com/dH7lB2i.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-577b790f0fa098dc.png", alt: "Empathy Map - Paciente de Zonas Periféricas", width: 60%)]]

#metadata((src: "README.md", line: 1439))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1442))
Este mapa de empatía refleja la perspectiva de Kevin como paciente: escucha constantemente que "ya no hay citas para hoy" y comentarios de otros pacientes sobre lo difícil que es conseguir cupo, observa colas largas desde temprano y líneas telefónicas que nunca contestan, y piensa que debería existir una forma de saber la disponibilidad sin tener que ir físicamente y perder un día de trabajo. Su necesidad principal es reservar su cita desde el celular y recibir la confirmación sin depender de procesos presenciales, como se observa en la #link("#figura-29")[Figura 29].

#metadata((src: "README.md", line: 1444))
#pagebreak()

#heading(level: 4)[Segmento 2: Personal asistencial y administrativo de establecimientos públicos de salud] <sec:segmento-2-personal-asistencial-y-administrativo-de-establecimientos-publicos-de-salud>
#metadata((src: "README.md", line: 1445, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1450))
#strong[Figura 30]

#metadata((src: "README.md", line: 1452))
#emph[Empathy Map - Personal Asistencial y Administrativo]

#metadata((src: "README.md", line: 1454, kind: "figure", img: "https://i.imgur.com/5z2pe4Y.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-f4e454bfa2ae0e82.png", alt: "Empathy Map - Personal Asistencial y Administrativo", width: 80%)]]]

#metadata((src: "README.md", line: 1456))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1459))
Este mapa de empatía muestra que el personal escucha reclamos por cupos agotados y presiona por acelerar la digitalización, mientras observa ventanillas saturadas y consultorios desaprovechados por inasistencias. Su dolor principal es la desorganización por el uso exclusivo de papel y Excel, y su motivación es centralizar la información en una herramienta digital que automatice la asignación de turnos, como se observa en la #link("#figura-30")[Figura 30].

#metadata((src: "README.md", line: 1461))
#pagebreak()

#metadata((src: "README.md", line: 1464))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.3.5. Big Picture EventStorming] <sec:2-3-5-big-picture-eventstorming>
#metadata((src: "README.md", line: 1466, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1468))
Para armar un sistema que funcione bien, primero hay que entender cómo trabaja el centro de salud en el día a día. El #strong[Big Picture EventStorming] es una dinámica en equipo que nos sirve para ver todos los hechos importantes que pasan en la posta médica. Al organizar estos sucesos paso a paso, podemos descubrir en qué momentos el proceso se vuelve lento, dónde se pierden los datos o dónde se forman las largas filas de pacientes.

#heading(level: 4)[Step 1 – Free Exploration] <sec:step-1-free-exploration>
#metadata((src: "README.md", line: 1471, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1473))
En este primer paso, nos juntamos a hacer una lluvia de ideas para anotar absolutamente todo lo que sucede en el proceso de atención, sin importar el orden todavía. La idea fue soltar todos los eventos reales del negocio en tiempo pasado (por ejemplo: #emph[Cita reservada] o #emph[Check-in realizado]), sin preocuparnos por la parte técnica ni por el diseño del software, como se observa en la #link("#figura-31")[Figura 31].

#metadata((src: "README.md", line: 1478))
#strong[Figura 31]

#metadata((src: "README.md", line: 1480))
#emph[Big Picture EventStorming - Step 1 Free Exploration]

#metadata((src: "README.md", line: 1482, kind: "figure", img: "https://i.imgur.com/JwMsEx4.png"))
#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-451c3473e3c8989b.png", alt: "Big Picture EventStorming - Step 1 Free Exploration", width: 75%)]]

#metadata((src: "README.md", line: 1486))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1489))
#pagebreak()

#heading(level: 4)[Step 2 – Enforcing Timelines] <sec:step-2-enforcing-timelines>
#metadata((src: "README.md", line: 1490, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1492))
En el segundo paso, organizamos todas las tarjetas naranjas de izquierda a derecha siguiendo la línea de tiempo real. Esto nos permitió establecer la secuencia cronológica del servicio, desde que el paciente detecta un síntoma en casa hasta que concluye la consulta y se cierra la jornada en el establecimiento de salud, como se observa en la #link("#figura-32")[Figura 32].

#metadata((src: "README.md", line: 1497))
#strong[Figura 32]

#metadata((src: "README.md", line: 1499))
#emph[Big Picture EventStorming: organización de la línea temporal]

#metadata((src: "README.md", line: 1501, kind: "figure", img: "https://i.imgur.com/rkI5utV.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-b29dfc73617faf9e.png", alt: "Big Picture EventStorming: organización de la línea temporal", width: 85%)]]]

#metadata((src: "README.md", line: 1503))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[Step 3 – People and Systems (Actors & Read Models)] <sec:step-3-people-and-systems-actors-read-models>
#metadata((src: "README.md", line: 1506, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1508))
En este tercer paso, agrupamos el proceso por flujos de trabajo (#emph[Workflows]) e identificamos a los #strong[Actores] (tarjetas amarillas) que desencadenan cada acción (#emph[Patient] y #emph[Admission Staff]). También mapeamos la información visible o #strong[Read Models] (tarjetas verdes) que necesitan consultar en pantalla para tomar decisiones, como la disponibilidad de cupos y el estado de la lista de espera, como se observa en la #link("#figura-33")[Figura 33].

#metadata((src: "README.md", line: 1513))
#strong[Figura 33]

#metadata((src: "README.md", line: 1515))
#emph[Step 3 - People and Systems]

#metadata((src: "README.md", line: 1517, kind: "figure", img: "https://i.imgur.com/qX7SP87.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-ef035045efe82475.png", alt: "Step 3 - People and Systems", width: 85%)]]]

#metadata((src: "README.md", line: 1519))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[Step 4 – Explicit Hotspots & Exceptions] <sec:step-4-explicit-hotspots-exceptions>
#metadata((src: "README.md", line: 1522, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1524))
En el paso final, identificamos los #strong[Hotspots] (puntos críticos o dudas del negocio representados con tarjetas\/rombos morados #raw("????")). Esto nos ayudó a anticipar problemas y reglas no definidas, tales como el tiempo límite de tolerancia para el check-in QR, la gestión de pacientes sin teléfono inteligente o la confirmación de cupos liberados en la lista de espera dinámica, como se observa en la #link("#figura-34")[Figura 34].

#metadata((src: "README.md", line: 1528))
#pagebreak()

#metadata((src: "README.md", line: 1530))
#strong[Figura 34]

#metadata((src: "README.md", line: 1532))
#emph[Step 4 - Hotspots and Exceptions]

#metadata((src: "README.md", line: 1534, kind: "figure", img: "https://i.imgur.com/QDRTLVm.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-ef522f523ee3b054.png", alt: "Step 4 - Hotspots and Exceptions", width: 85%)]]]

#metadata((src: "README.md", line: 1536))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1539))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.3.6. Ubiquitous Language] <sec:2-3-6-ubiquitous-language>
#metadata((src: "README.md", line: 1541, kind: "heading", level: 3))

#metadata((src: "README.md", line: 1543))
Para garantizar una comunicación fluida y sin ambigüedades entre el equipo de desarrollo, los diseñadores de UX y los actores del dominio (pacientes y personal de salud), se formalizó el #strong[Lenguaje Ubicuo]. Este glosario unifica los términos clave del negocio que se reflejan tanto en las interfaces de usuario como en los modelos de código del sistema, como se detalla en la #link("#tabla-19")[Tabla 19].

#metadata((src: "README.md", line: 1548))
#strong[Tabla 19]

#metadata((src: "README.md", line: 1550))
#emph[Ubiquitous Language]

#metadata((src: "README.md", line: 1552, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Ubiquitous Language (Inglés \/ Código)], [Definición en el Dominio de SaludYa]),
  tline,
  [#raw("Patient")], [Usuario final que solicita, reserva o gestiona atenciones médicas para sí mismo o para sus familiares dependientes en un centro de salud público.],
  [#raw("Admission Staff")], [Usuario operativo encargado de aperturar agendas, gestionar la atención en ventanilla y monitorear el flujo de la sala de espera.],
  [#raw("Time Slot")], [Intervalo de tiempo asignado a una especialidad médica para la atención de un único paciente en una fecha y horario determinado.],
  [#raw("Booking") \/ #raw("Appointment")], [Proceso mediante el cual un paciente asegura un cupo médico a través de la aplicación móvil antes de acudir presencialmente.],
  [#raw("Check-in")], [Validación de asistencia presencial realizada por el paciente mediante el escaneo de un código QR al llegar al centro de salud.],
  [#raw("Reassignment")], [Mecanismo automatizado que reasigna los cupos liberados por inasistencias a los pacientes de la cola de reserva, en orden de #raw("bookingOrder"), formando una cadena de reasignación.],
  [#raw("Virtual Waiting Room") \/ #raw("Queue Display")], [Vista en tiempo real dentro de la app que informa al paciente su posición exacta en la cola y el tiempo aproximado para su llamado.],
  [#raw("Specialty Catalog") \/ #raw("Quota Available")], [Catálogo estructurado de servicios médicos y horarios configurados y publicados por el centro público de salud.],
  tline,
)

#metadata((src: "README.md", line: 1564))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1567))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 2)[2.4. Requirements specification] <sec:2-4-requirements-specification>
#metadata((src: "README.md", line: 1569, kind: "heading", level: 2))

#metadata((src: "README.md", line: 1571))
En esta sección definimos la especificación formal de requisitos para la plataforma #strong[SaludYa], tomando como base los hallazgos del #emph[Needfinding] y los flujos identificados en el #emph[EventStorming]. A través de mapeos de escenarios futuros, Historias de Usuario (#emph[User Stories]), #emph[Impact Mapping] y un #emph[Product Backlog] priorizado, transformamos las necesidades del dominio público de salud en entregables técnicos y funcionales ejecutables.

#metadata((src: "README.md", line: 1573))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[To-Be Scenario Mapping] <sec:to-be-scenario-mapping>
#metadata((src: "README.md", line: 1575, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1578))
El escenario propuesto relaciona las acciones del paciente con sus pensamientos y emociones durante el registro, la reserva, la reasignación y la atención médica, como se detalla en la #link("#tabla-20")[Tabla 20].

#metadata((src: "README.md", line: 1582))
#strong[Tabla 20]

#metadata((src: "README.md", line: 1584))
#emph[To-Be Scenario Mapping]

#metadata((src: "README.md", line: 1586, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Fase], [Haciendo (Acción)], [Pensando (Pensamiento)], [Sintiendo (Emoción)]),
  tline,
  [#strong[1. Registro y Autenticación]], [Inicia sesión o se registra ingresando su DNI para validación automática de identidad y vincula a los menores a su cargo.], ["Qué rápido es validar mi identidad con el DNI sin hacer trámites presenciales ni llenar formularios largos."], [Tranquilidad y confianza],
  [#strong[2. Búsqueda y Reserva de Citas]], [Selecciona la especialidad médica, explora el calendario de disponibilidad por bloques e ingresa la reserva propia o de su menor.], ["Puedo ver todos los turnos disponibles en tiempo real y elegir la franja horaria que mejor me convenga."], [Comodidad y control],
  [#strong[3. Reasignación de Citas]], [Recibe una notificación de propuesta para adelantar su cita por un cupo liberado; acepta o rechaza la reasignación en su teléfono.], ["Excelente que el sistema me avise para atenderme más temprano si alguien canceló su turno."], [Sorpresa y satisfacción],
  [#strong[4. Check-in Presencial por QR]], [Llega al hospital dentro del margen de tolerancia, escanea el código QR y obtiene su ticket digital con el consultorio asignado.], ["Evité la cola de admisión; solo escaneo el QR, confirmo mi presencia y voy directo a la sala."], [Agilidad y alivio],
  [#strong[5. Atención y Control Operativo]], [Espera el llamado al consultorio según su ticket digital mientras el sistema audita tiempos de tolerancia y confirma la atención.], ["El proceso es transparente, sé exactamente a dónde ir y se respetan los horarios de atención."], [Seguridad y complacencia],
  tline,
)

#metadata((src: "README.md", line: 1595))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1597))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.4.1. User Stories] <sec:2-4-1-user-stories>
#metadata((src: "README.md", line: 1599, kind: "heading", level: 3))

#heading(level: 4)[Epics] <sec:epics>
#metadata((src: "README.md", line: 1601, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1604))
Las épicas agrupan las historias de usuario según las capacidades de SaludYa y permiten delimitar los objetivos de cada área funcional, como se detalla en la #link("#tabla-21")[Tabla 21].

#metadata((src: "README.md", line: 1608))
#strong[Tabla 21]

#metadata((src: "README.md", line: 1610))
#emph[Epics]

#metadata((src: "README.md", line: 1612, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([ID], [Título de la Épica], [Descripción Breve]),
  tline,
  [#strong[EP0]], [Plataforma de Presentación y Captación], [Sitio web estático (Landing Page) orientado a la captación de pacientes potenciales, la explicación de la propuesta de valor y la redirección de descarga de las aplicaciones móviles.],
  [#strong[EP1]], [Authentication & Identity Management], [Registro y autenticación de usuarios con verificación oficial por DNI, vinculación de menores de edad y recuperación de contraseñas.],
  [#strong[EP2]], [Appointments & Booking Engine], [Consulta de disponibilidad en calendario, reserva de citas médicas para titulares o menores, y gestión de cancelaciones.],
  [#strong[EP3]], [Reassignment Protocol], [Gestión automatizada de la reasignación de cupos liberados por ausencias, ofreciendo propuestas de adelanto a los pacientes de la cola de reserva en orden de #raw("bookingOrder").],
  [#strong[EP4]], [Arrival & QR Check-in System], [Confirmación presencial de llegada mediante escaneo de código QR, gestión de la cola de asistencia y emisión del ticket digital de atención.],
  [#strong[EP5]], [Hospital Operations & System Configuration], [Control operativo de ausencias por vencimiento de tiempo, parametrización de reglas globales e intervalos del hospital, y visualización del dashboard operativo.],
  tline,
)

#metadata((src: "README.md", line: 1622))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[User stories] <sec:user-stories>
#metadata((src: "README.md", line: 1625, kind: "heading", level: 4))

#metadata((src: "README.md", line: 1628))
#pagebreak()

#metadata((src: "README.md", line: 1630))
#strong[US-00: Visualización de Propuesta de Valor en Landing Page]

#metadata((src: "README.md", line: 1632, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-00], [Paciente potencial], [High], [EP0: Plataforma de Presentación y Captación],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Visualización de Propuesta de Valor en Landing Page],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente potencial, #linebreak()  *Quiero* visualizar la propuesta de valor y los beneficios de SaludYa en el sitio web público, #linebreak()  *Para* comprender cómo la plataforma optimiza la gestión de mis citas médicas y decidir descargar la aplicación móvil.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Visualización de la propuesta de valor y enlaces de descarga* #linebreak()  • *Given* que un paciente potencial accede a la dirección web pública de la plataforma, #linebreak()     *When* navega por la página principal, #linebreak()     *Then* el sistema presenta de forma estructurada los beneficios de SaludYa y habilita los enlaces de descarga hacia las tiendas de aplicaciones móviles. #linebreak()  #linebreak()  *Scenario 2: Reproducción de material audiovisual institucional* #linebreak()  • *Given* que el paciente potencial explora la página principal, #linebreak()     *When* accede a las secciones de presentación audiovisual, #linebreak()     *Then* el sistema reproduce los videos explicativos del producto (About-the-Product) y del equipo creador (About-the-Team). #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1636))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1640))
#pagebreak()

#metadata((src: "README.md", line: 1642))
#strong[US-01: Verificación de Identidad por DNI]

#metadata((src: "README.md", line: 1644, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-01], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Verificación de Identidad por DNI],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* verificar mi identidad ingresando mi DNI, nombres, apellidos y fecha de nacimiento, #linebreak()  *Para* que el sistema confirme que mis datos coinciden con mi identidad oficial antes de crear mi cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Validación exitosa de identidad* #linebreak()  • *Given* que el paciente aún sin cuenta ingresa un DNI de 8 dígitos y nombres, apellidos y fecha de nacimiento, #linebreak()     *When* el sistema consulta el registro oficial y los datos coinciden, #linebreak()     *Then* el sistema marca la identidad como verificada y habilita la continuación del registro. #linebreak()  #linebreak()  *Scenario 2: Incoincidencia de datos de identidad* #linebreak()  • *Given* que el paciente ingresa un DNI inexistente o datos que no coinciden con el registro oficial, #linebreak()     *When* el sistema consulta el registro oficial, #linebreak()     *Then* el sistema rechaza la verificación, indica que los datos no coinciden con el titular del DNI y permite corregirlos. #linebreak()  #linebreak()  *Scenario 3: Formato de DNI inválido* #linebreak()  • *Given* que el paciente ingresa un número de documento que no tiene 8 dígitos numéricos, #linebreak()     *When* solicita la verificación, #linebreak()     *Then* el sistema la rechaza sin consultar el registro oficial e indica el formato esperado. #linebreak()  #linebreak()  *Scenario 4: Servicio de validación de identidad no disponible* #linebreak()  • *Given* que el servicio externo de validación de identidad no responde, #linebreak()     *When* el paciente solicita la verificación, #linebreak()     *Then* el sistema informa que no pudo verificar la identidad, no habilita la continuación y permite reintentar más tarde. #linebreak()  #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1649))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1653))
#pagebreak()

#metadata((src: "README.md", line: 1655))
#strong[US-02: Registro de Credenciales de Acceso]

#metadata((src: "README.md", line: 1657, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-02], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Registro de Credenciales de Acceso],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* registrar mi correo, contraseña y número de celular una vez verificada mi identidad, #linebreak()  *Para* contar con las credenciales con las que accederé a mi cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Credenciales válidas* #linebreak()  • *Given* que el paciente con identidad verificada ingresa un correo disponible, una contraseña con su confirmación idéntica y un celular de 9 dígitos, #linebreak()     *When* solicita continuar con el registro, #linebreak()     *Then* el sistema envía un código de verificación de 6 dígitos por SMS al celular indicado. #linebreak()  #linebreak()  *Scenario 2: Correo ya registrado* #linebreak()  • *Given* que el correo ingresado pertenece a otra cuenta, #linebreak()     *When* el paciente solicita continuar, #linebreak()     *Then* el sistema rechaza el registro e indica que el correo ya está en uso. #linebreak()  #linebreak()  *Scenario 3: Contraseñas que no coinciden* #linebreak()  • *Given* que la contraseña y su confirmación son diferentes, #linebreak()     *When* el paciente solicita continuar, #linebreak()     *Then* el sistema rechaza el registro e indica que las contraseñas no coinciden. #linebreak()  #linebreak()  *Scenario 4: Formato de correo o celular inválido* #linebreak()  • *Given* que el correo o el celular tiene un formato inválido, #linebreak()     *When* el paciente solicita continuar, #linebreak()     *Then* el sistema rechaza el registro e identifica el dato inválido. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1661))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1665))
#pagebreak()

#metadata((src: "README.md", line: 1667))
#strong[US-03: Verificación de Celular y Creación de Cuenta]

#metadata((src: "README.md", line: 1669, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-03], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Verificación de Celular y Creación de Cuenta],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* ingresar el código de 6 dígitos enviado a mi celular, #linebreak()  *Para* confirmar mi número y obtener mi cuenta de paciente verificada.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Código válido* #linebreak()  • *Given* que el paciente recibió un código de verificación vigente, #linebreak()     *When* ingresa el código correcto, #linebreak()     *Then* el sistema confirma el celular, crea la cuenta de paciente verificada y envía un correo de bienvenida. #linebreak()  #linebreak()  *Scenario 2: Código incorrecto* #linebreak()  • *Given* que el paciente ingresa un código distinto al enviado, #linebreak()     *When* solicita completar el registro, #linebreak()     *Then* el sistema no crea la cuenta, indica que el código es incorrecto y permite reintentar. #linebreak()  #linebreak()  *Scenario 3: Reenvío de código* #linebreak()  • *Given* que el paciente no recibió el código, #linebreak()     *When* solicita un nuevo código, #linebreak()     *Then* el sistema envía un código nuevo al mismo celular e invalida el anterior. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1673))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1677))
#pagebreak()

#metadata((src: "README.md", line: 1679))
#strong[US-04: Inicio de Sesión del Paciente]

#metadata((src: "README.md", line: 1681, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-04], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Inicio de Sesión del Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* iniciar sesión con mi correo y contraseña, #linebreak()  *Para* acceder a mi cuenta de paciente.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Inicio de sesión exitoso* #linebreak()  • *Given* que el paciente ingresa credenciales válidas de una cuenta activa, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema otorga el acceso y abre su sesión. #linebreak()  #linebreak()  *Scenario 2: Credenciales inválidas* #linebreak()  • *Given* que el paciente ingresa un correo no registrado o una contraseña incorrecta, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e informa credenciales inválidas sin precisar cuál dato falló. #linebreak()  #linebreak()  *Scenario 3: Cuenta inactiva* #linebreak()  • *Given* que el paciente ingresa credenciales válidas de una cuenta inactiva, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e indica consultar con el personal de admisión. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1685))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1689))
#pagebreak()

#metadata((src: "README.md", line: 1691))
#strong[US-05: Selección de Especialidad Médica]

#metadata((src: "README.md", line: 1693, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-05], [Paciente], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Selección de Especialidad Médica],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* buscar y seleccionar una especialidad médica, #linebreak()  *Para* consultar su disponibilidad de atención.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Selección de especialidad* #linebreak()  • *Given* que el catálogo contiene especialidades publicadas, #linebreak()     *When* el paciente selecciona una especialidad, #linebreak()     *Then* el sistema habilita la consulta de disponibilidad de esa especialidad. #linebreak()  #linebreak()  *Scenario 2: Búsqueda sin coincidencias* #linebreak()  • *Given* que el término buscado no coincide con ninguna especialidad publicada, #linebreak()     *When* el paciente realiza la búsqueda, #linebreak()     *Then* el sistema indica que no encontró la especialidad y permite volver al catálogo completo. #linebreak()  #linebreak()  *Scenario 3: Consulta sin especialidad seleccionada* #linebreak()  • *Given* que el paciente no ha seleccionado una especialidad, #linebreak()     *When* intenta consultar fechas, #linebreak()     *Then* el sistema impide la consulta e indica que debe seleccionar una especialidad. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1697))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1701))
#pagebreak()

#metadata((src: "README.md", line: 1703))
#strong[US-06: Consulta de Horarios Disponibles]

#metadata((src: "README.md", line: 1705, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-06], [Paciente], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Horarios Disponibles],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar los horarios libres de una fecha para la especialidad elegida, #linebreak()  *Para* elegir el turno que mejor se ajuste a mi tiempo.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Horarios libres de la fecha* #linebreak()  • *Given* que el paciente seleccionó una especialidad con agenda activa, #linebreak()     *When* consulta una fecha, #linebreak()     *Then* el sistema presenta los bloques horarios con cupos libres de esa fecha. #linebreak()  #linebreak()  *Scenario 2: Fecha sin turnos o con cupos agotados* #linebreak()  • *Given* que la fecha no tiene bloques programados o sus cupos están agotados, #linebreak()     *When* el paciente la consulta, #linebreak()     *Then* el sistema indica que no hay turnos y resalta las fechas más próximas con horarios libres. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1709))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1713))
#pagebreak()

#metadata((src: "README.md", line: 1715))
#strong[US-07: Reserva de Cita para el Paciente]

#metadata((src: "README.md", line: 1717, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-07], [Paciente], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Reserva de Cita para el Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* reservar un turno disponible para mí, #linebreak()  *Para* asegurar mi atención médica en la fecha y hora elegidas.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Reserva exitosa* #linebreak()  • *Given* que el paciente autenticado selecciona un horario con cupo libre, #linebreak()     *When* confirma la reserva, #linebreak()     *Then* el sistema registra la cita en estado reservado, descuenta el cupo y asigna un código de reserva único. #linebreak()  #linebreak()  *Scenario 2: Horario ocupado por otro paciente* #linebreak()  • *Given* que el cupo seleccionado fue ocupado por otro paciente antes de confirmar, #linebreak()     *When* el paciente confirma la reserva, #linebreak()     *Then* el sistema rechaza la reserva, informa que el horario ya no está disponible y permite elegir otro. #linebreak()  #linebreak()  *Scenario 3: Solapamiento de horario* #linebreak()  • *Given* que el paciente ya tiene una cita activa en el mismo bloque horario, #linebreak()     *When* intenta confirmar una nueva reserva, #linebreak()     *Then* el sistema rechaza la reserva e informa el cruce de horarios. #linebreak()  #linebreak()  *Scenario 4: Reserva fuera de la hora límite* #linebreak()  • *Given* que se superó la hora límite para reservar configurada por el establecimiento, #linebreak()     *When* el paciente intenta confirmar la reserva, #linebreak()     *Then* el sistema rechaza la reserva e informa la hora límite vigente. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1721))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1725))
#pagebreak()

#metadata((src: "README.md", line: 1727))
#strong[US-08: Recepción de Confirmación de Cita por Correo]

#metadata((src: "README.md", line: 1729, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-08], [Paciente], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Recepción de Confirmación de Cita por Correo],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* recibir por correo la confirmación de mi cita, #linebreak()  *Para* contar con el comprobante y los detalles de mi atención.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Envío de confirmación* #linebreak()  • *Given* que una cita fue reservada exitosamente, #linebreak()     *When* concluye el proceso de reserva, #linebreak()     *Then* el sistema envía al correo del paciente el código de reserva, el paciente beneficiario, la especialidad, el médico, la fecha y la hora. #linebreak()  #linebreak()  *Scenario 2: Servicio de correo no disponible* #linebreak()  • *Given* que el servicio externo de correo no responde, #linebreak()     *When* concluye el proceso de reserva, #linebreak()     *Then* el sistema conserva la cita confirmada y reintenta el envío automáticamente. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1733))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1737))
#pagebreak()

#metadata((src: "README.md", line: 1739))
#strong[US-09: Consulta de Citas Agendadas]

#metadata((src: "README.md", line: 1741, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-09], [Paciente], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Citas Agendadas],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar mis citas programadas, finalizadas y canceladas, #linebreak()  *Para* conocer el estado y el detalle de mi atención.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Listado de citas* #linebreak()  • *Given* que el paciente autenticado tiene citas registradas, #linebreak()     *When* consulta sus citas, #linebreak()     *Then* el sistema retorna las citas programadas, finalizadas y canceladas con su estado. #linebreak()  #linebreak()  *Scenario 2: Sin citas registradas* #linebreak()  • *Given* que el paciente no tiene citas registradas, #linebreak()     *When* consulta sus citas, #linebreak()     *Then* el sistema indica que no hay citas registradas. #linebreak()  #linebreak()  *Scenario 3: Error en la consulta* #linebreak()  • *Given* que la información no puede cargarse por una falla del servicio, #linebreak()     *When* el paciente consulta sus citas, #linebreak()     *Then* el sistema informa el error y permite reintentar la consulta. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1745))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1749))
#pagebreak()

#metadata((src: "README.md", line: 1751))
#strong[US-10: Cancelación de Cita]

#metadata((src: "README.md", line: 1753, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-10], [Paciente], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Cancelación de Cita],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* cancelar una cita agendada, #linebreak()  *Para* liberar el cupo cuando no pueda asistir.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Cancelación dentro del plazo* #linebreak()  • *Given* que la cita está activa y cumple la anticipación mínima de cancelación configurada, #linebreak()     *When* el paciente confirma la cancelación, #linebreak()     *Then* el sistema cambia el estado de la cita a cancelada por el paciente, libera el cupo y envía el comprobante de cancelación al correo registrado. #linebreak()  #linebreak()  *Scenario 2: Cancelación fuera del plazo* #linebreak()  • *Given* que la anticipación mínima de cancelación ya venció, #linebreak()     *When* el paciente intenta cancelar, #linebreak()     *Then* el sistema rechaza la cancelación e indica gestionarla de forma presencial con el personal de admisión. #linebreak()  #linebreak()  *Scenario 3: Cita no activa* #linebreak()  • *Given* que la cita ya fue cancelada, atendida o declarada ausente, #linebreak()     *When* el paciente intenta cancelarla, #linebreak()     *Then* el sistema rechaza la solicitud e informa el estado actual de la cita. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1757))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1761))
#pagebreak()

#metadata((src: "README.md", line: 1763))
#strong[US-11: Consulta del Código QR de la Reserva]

#metadata((src: "README.md", line: 1765, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-11], [Paciente], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Código QR de la Reserva],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar el código QR de mi reserva, #linebreak()  *Para* presentarlo al personal de admisión al llegar al establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Código QR disponible* #linebreak()  • *Given* que el paciente tiene una cita activa, #linebreak()     *When* consulta su reserva, #linebreak()     *Then* el sistema proporciona el código QR asociado a la reserva y su código de reserva. #linebreak()  #linebreak()  *Scenario 2: Cita no activa* #linebreak()  • *Given* que la cita fue cancelada o ya finalizó, #linebreak()     *When* el paciente consulta su reserva, #linebreak()     *Then* el sistema no proporciona el código QR e informa el estado de la cita. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1769))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1773))
#pagebreak()

#metadata((src: "README.md", line: 1775))
#strong[US-12: Consulta del Ticket Digital de Atención]

#metadata((src: "README.md", line: 1777, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-12], [Paciente], [Medium], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Ticket Digital de Atención],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar mi ticket digital de atención, #linebreak()  *Para* conocer mi código de turno y el consultorio donde seré atendido.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Ticket disponible* #linebreak()  • *Given* que la llegada del paciente fue registrada, #linebreak()     *When* consulta su ticket, #linebreak()     *Then* el sistema muestra el código de turno, la especialidad, el profesional, la sala y el consultorio. #linebreak()  #linebreak()  *Scenario 2: Llegada no registrada* #linebreak()  • *Given* que el paciente no tiene llegada registrada, #linebreak()     *When* consulta su ticket, #linebreak()     *Then* el sistema indica que se requiere registrar la llegada presencial. #linebreak()  #linebreak()  *Scenario 3: Turno finalizado* #linebreak()  • *Given* que el turno ya fue atendido o declarado ausente, #linebreak()     *When* el paciente consulta su ticket, #linebreak()     *Then* el sistema muestra el estado final del turno. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1781))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1785))
#pagebreak()

#metadata((src: "README.md", line: 1787))
#strong[US-13: Consulta de Posición en la Cola de Atención]

#metadata((src: "README.md", line: 1789, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-13], [Paciente], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Posición en la Cola de Atención],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar mi posición en la cola de atención, #linebreak()  *Para* estimar el momento en que seré llamado.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Posición en la cola* #linebreak()  • *Given* que el paciente tiene un turno activo en la cola y la posición de cola es visible según la regla del establecimiento, #linebreak()     *When* consulta su posición, #linebreak()     *Then* el sistema muestra su posición y el total de pacientes, ordenados por hora de llegada. #linebreak()  #linebreak()  *Scenario 2: Posición de cola no visible* #linebreak()  • *Given* que el establecimiento configuró la posición de cola como no visible, #linebreak()     *When* el paciente consulta su posición, #linebreak()     *Then* el sistema no revela la posición e informa únicamente el estado del turno. #linebreak()  #linebreak()  *Scenario 3: Sin llegada registrada* #linebreak()  • *Given* que el paciente no tiene llegada registrada, #linebreak()     *When* consulta su posición, #linebreak()     *Then* el sistema indica que no registra presencia en la cola. #linebreak()  #linebreak()  *Scenario 4: Turno finalizado* #linebreak()  • *Given* que el turno ya fue atendido o declarado ausente, #linebreak()     *When* el paciente consulta su posición, #linebreak()     *Then* el sistema indica que ya no se encuentra en la cola. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1793))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1797))
#pagebreak()

#metadata((src: "README.md", line: 1799))
#strong[US-14: Recepción de Notificación de Llamado a Consultorio]

#metadata((src: "README.md", line: 1801, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-14], [Paciente], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Recepción de Notificación de Llamado a Consultorio],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* recibir una notificación cuando me llamen a consultorio, #linebreak()  *Para* dirigirme a atención sin depender de un aviso manual.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Notificación de llamado* #linebreak()  • *Given* que el personal de admisión registra el llamado del paciente, #linebreak()     *When* se registra el llamado, #linebreak()     *Then* el sistema envía al paciente una notificación con el consultorio asignado y el plazo para acudir. #linebreak()  #linebreak()  *Scenario 2: Canal de notificación no disponible* #linebreak()  • *Given* que el canal de notificación no responde, #linebreak()     *When* se registra el llamado, #linebreak()     *Then* el sistema registra el intento y reintenta el envío sin detener la cola. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1805))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1809))
#pagebreak()

#metadata((src: "README.md", line: 1811))
#strong[US-15: Vinculación de un Menor de Edad]

#metadata((src: "README.md", line: 1813, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-15], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Vinculación de un Menor de Edad],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* vincular a un menor a mi cuenta ingresando su DNI, nombres, apellidos y fecha de nacimiento, #linebreak()  *Para* gestionar sus citas médicas desde mi propia cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Vinculación exitosa* #linebreak()  • *Given* que el paciente titular autenticado ingresa datos de un menor de 18 años que coinciden con el registro oficial, #linebreak()     *When* confirma ser su adulto responsable, #linebreak()     *Then* el sistema asocia al menor con la cuenta del titular. #linebreak()  #linebreak()  *Scenario 2: Menor ya vinculado a otra cuenta* #linebreak()  • *Given* que el DNI del menor ya está asociado a otra cuenta, #linebreak()     *When* el titular intenta vincularlo, #linebreak()     *Then* el sistema rechaza la vinculación e indica validar la tutela legal con el personal de admisión. #linebreak()  #linebreak()  *Scenario 3: Edad no válida* #linebreak()  • *Given* que el DNI corresponde a una persona de 18 años o más, #linebreak()     *When* el titular intenta vincularla, #linebreak()     *Then* el sistema rechaza la vinculación e indica que la edad no es válida. #linebreak()  #linebreak()  *Scenario 4: Incoincidencia de datos del menor* #linebreak()  • *Given* que los datos ingresados no coinciden con el registro oficial, #linebreak()     *When* el titular intenta vincular al menor, #linebreak()     *Then* el sistema rechaza la vinculación e indica que la identidad no coincide. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1817))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1821))
#pagebreak()

#metadata((src: "README.md", line: 1823))
#strong[US-16: Reserva de Cita para un Menor Vinculado]

#metadata((src: "README.md", line: 1825, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-16], [Paciente], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Reserva de Cita para un Menor Vinculado],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* reservar un turno disponible para un menor vinculado a mi cuenta, #linebreak()  *Para* asegurar la atención médica del menor.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Reserva exitosa para el menor* #linebreak()  • *Given* que el paciente titular selecciona un horario con cupo libre y un menor vinculado, #linebreak()     *When* confirma la reserva, #linebreak()     *Then* el sistema asigna la cita al menor, registra al titular como adulto responsable y asigna un código de reserva único. #linebreak()  #linebreak()  *Scenario 2: Solapamiento de horario del menor* #linebreak()  • *Given* que el menor ya tiene una cita activa en el mismo bloque horario, #linebreak()     *When* el titular intenta confirmar la reserva, #linebreak()     *Then* el sistema rechaza la reserva e informa el cruce de horarios. #linebreak()  #linebreak()  *Scenario 3: Menor no vinculado* #linebreak()  • *Given* que el menor seleccionado no está vinculado a la cuenta del titular, #linebreak()     *When* el titular intenta reservar, #linebreak()     *Then* el sistema rechaza la reserva e indica que el menor no está vinculado. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1829))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1833))
#pagebreak()

#metadata((src: "README.md", line: 1835))
#strong[US-17: Consulta de Menores Vinculados]

#metadata((src: "README.md", line: 1837, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-17], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Menores Vinculados],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar la lista de menores vinculados a mi cuenta, #linebreak()  *Para* identificar a quiénes puedo gestionar citas.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Lista de menores* #linebreak()  • *Given* que el paciente titular tiene menores vinculados, #linebreak()     *When* consulta sus menores vinculados, #linebreak()     *Then* el sistema retorna el nombre, la edad y el DNI enmascarado de cada menor. #linebreak()  #linebreak()  *Scenario 2: Sin menores vinculados* #linebreak()  • *Given* que el paciente titular no tiene menores vinculados, #linebreak()     *When* consulta sus menores vinculados, #linebreak()     *Then* el sistema indica que no hay menores vinculados. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1841))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1845))
#pagebreak()

#metadata((src: "README.md", line: 1847))
#strong[US-18: Consulta del Perfil de un Menor]

#metadata((src: "README.md", line: 1849, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-18], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Perfil de un Menor],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar el perfil de un menor vinculado, #linebreak()  *Para* revisar sus datos y mi condición de adulto responsable.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Perfil del menor* #linebreak()  • *Given* que el menor está vinculado a la cuenta del titular, #linebreak()     *When* el titular consulta su perfil, #linebreak()     *Then* el sistema muestra el nombre, el DNI enmascarado, la fecha de nacimiento y el adulto responsable. #linebreak()  #linebreak()  *Scenario 2: Menor no vinculado a la cuenta* #linebreak()  • *Given* que el menor no está vinculado a la cuenta del paciente, #linebreak()     *When* el paciente intenta consultar su perfil, #linebreak()     *Then* el sistema deniega el acceso a los datos del menor. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1853))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1857))
#pagebreak()

#metadata((src: "README.md", line: 1859))
#strong[US-19: Desvinculación de un Menor de Edad]

#metadata((src: "README.md", line: 1861, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-19], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Desvinculación de un Menor de Edad],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* desvincular a un menor de mi cuenta, #linebreak()  *Para* que deje de estar disponible para agendar citas desde mi cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Desvinculación confirmada* #linebreak()  • *Given* que el paciente titular tiene un menor vinculado y confirma la desvinculación, #linebreak()     *When* el sistema procesa la solicitud, #linebreak()     *Then* el sistema elimina el vínculo y el menor deja de estar disponible para agendar citas. #linebreak()  #linebreak()  *Scenario 2: Desvinculación no confirmada* #linebreak()  • *Given* que el titular solicitó la desvinculación y esta requiere confirmación, #linebreak()     *When* el titular no confirma, #linebreak()     *Then* el sistema conserva el vínculo sin realizar cambios. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1865))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1869))
#pagebreak()

#metadata((src: "README.md", line: 1871))
#strong[US-20: Aceptación de Adelanto de Cita]

#metadata((src: "README.md", line: 1873, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-20], [Paciente], [High], [EP3: Reassignment Protocol],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Aceptación de Adelanto de Cita],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* aceptar la propuesta de adelantar mi cita a un intervalo liberado, #linebreak()  *Para* ser atendido más temprano.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Adelanto aceptado* #linebreak()  • *Given* que el paciente recibió una propuesta de adelanto vigente, #linebreak()     *When* acepta el cambio, #linebreak()     *Then* el sistema le asigna el intervalo anterior, libera su horario original y confirma la reasignación. #linebreak()  #linebreak()  *Scenario 2: Intervalo ya asignado a otro paciente* #linebreak()  • *Given* que otro paciente aceptó antes la misma propuesta, #linebreak()     *When* el paciente intenta aceptar, #linebreak()     *Then* el sistema informa que el horario ya no está disponible y mantiene su cita sin cambios. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1877))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1881))
#pagebreak()

#metadata((src: "README.md", line: 1883))
#strong[US-21: Rechazo de Adelanto de Cita]

#metadata((src: "README.md", line: 1885, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-21], [Paciente], [Medium], [EP3: Reassignment Protocol],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Rechazo de Adelanto de Cita],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* rechazar la propuesta de adelantar mi cita, #linebreak()  *Para* mantener mi turno programado originalmente.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Adelanto rechazado* #linebreak()  • *Given* que el paciente recibió una propuesta de adelanto vigente, #linebreak()     *When* rechaza el cambio, #linebreak()     *Then* el sistema mantiene su cita en el intervalo original y ofrece el cupo al siguiente paciente según el orden de reserva. #linebreak()  #linebreak()  *Scenario 2: Propuesta sin respuesta* #linebreak()  • *Given* que venció el plazo de respuesta a la reasignación configurado, #linebreak()     *When* el paciente no responde, #linebreak()     *Then* el sistema asume el rechazo, conserva su cita y ofrece el cupo al siguiente paciente según el orden de reserva. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1889))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1893))
#pagebreak()

#metadata((src: "README.md", line: 1895))
#strong[US-22: Salida Voluntaria de la Cola de Atención]

#metadata((src: "README.md", line: 1897, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-22], [Paciente], [Medium], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Salida Voluntaria de la Cola de Atención],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* dejar la cola de atención confirmando mi decisión, #linebreak()  *Para* no ocupar un lugar cuando ya no puedo esperar.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Salida confirmada* #linebreak()  • *Given* que el paciente tiene un turno activo en la cola y confirma su salida, #linebreak()     *When* el sistema procesa la solicitud, #linebreak()     *Then* el sistema lo retira de la cola, recalcula la posición de los demás pacientes y conserva la reserva sin cancelarla. #linebreak()  #linebreak()  *Scenario 2: Salida no confirmada* #linebreak()  • *Given* que el paciente solicitó salir y esto requiere confirmación, #linebreak()     *When* no confirma, #linebreak()     *Then* el sistema lo mantiene en la cola con su posición actual. #linebreak()  #linebreak()  *Scenario 3: Sin turno activo en la cola* #linebreak()  • *Given* que el paciente no tiene un turno activo en la cola, #linebreak()     *When* intenta salir de la cola, #linebreak()     *Then* el sistema indica que no registra un turno activo. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1901))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1905))
#pagebreak()

#metadata((src: "README.md", line: 1907))
#strong[US-23: Solicitud de Enlace de Recuperación de Contraseña]

#metadata((src: "README.md", line: 1909, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-23], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Solicitud de Enlace de Recuperación de Contraseña],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* solicitar un enlace de recuperación a mi correo registrado, #linebreak()  *Para* poder definir una nueva contraseña de forma segura.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Envío del enlace* #linebreak()  • *Given* que el correo ingresado pertenece a una cuenta registrada, #linebreak()     *When* el paciente solicita la recuperación, #linebreak()     *Then* el sistema envía un enlace temporal con vigencia de 15 minutos. #linebreak()  #linebreak()  *Scenario 2: Correo no registrado* #linebreak()  • *Given* que el correo ingresado no pertenece a ninguna cuenta, #linebreak()     *When* el paciente solicita la recuperación, #linebreak()     *Then* el sistema no genera enlace y responde con un mensaje genérico sin revelar la existencia de la cuenta. #linebreak()  #linebreak()  *Scenario 3: Solicitud de nuevo enlace* #linebreak()  • *Given* que el paciente ya solicitó un enlace previamente, #linebreak()     *When* solicita uno nuevo, #linebreak()     *Then* el sistema genera un enlace nuevo e invalida el anterior. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1913))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1917))
#pagebreak()

#metadata((src: "README.md", line: 1919))
#strong[US-24: Restablecimiento de Contraseña]

#metadata((src: "README.md", line: 1921, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-24], [Paciente], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Restablecimiento de Contraseña],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* definir una nueva contraseña mediante el enlace recibido, #linebreak()  *Para* recuperar el acceso a mi cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Contraseña actualizada* #linebreak()  • *Given* que el enlace de recuperación está vigente y el paciente ingresa una contraseña con su confirmación idéntica, #linebreak()     *When* solicita guardar la contraseña, #linebreak()     *Then* el sistema actualiza la contraseña e indica que ya puede iniciar sesión. #linebreak()  #linebreak()  *Scenario 2: Contraseñas que no coinciden* #linebreak()  • *Given* que la contraseña y su confirmación son diferentes, #linebreak()     *When* el paciente solicita guardar, #linebreak()     *Then* el sistema rechaza el cambio e indica que las contraseñas no coinciden. #linebreak()  #linebreak()  *Scenario 3: Enlace expirado* #linebreak()  • *Given* que transcurrieron más de 15 minutos desde la emisión del enlace, #linebreak()     *When* el paciente intenta definir la contraseña, #linebreak()     *Then* el sistema rechaza la operación, indica que el enlace expiró y requiere una nueva solicitud. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1925))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1929))
#pagebreak()

#metadata((src: "README.md", line: 1931))
#strong[US-25: Solicitud de Ayuda por Pérdida de Acceso a la Cuenta]

#metadata((src: "README.md", line: 1933, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-25], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Solicitud de Ayuda por Pérdida de Acceso a la Cuenta],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* solicitar ayuda indicando mi DNI y un correo de contacto alternativo, #linebreak()  *Para* recuperar mi cuenta cuando no tengo acceso a mi correo ni a mi celular.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Solicitud registrada* #linebreak()  • *Given* que el paciente ingresa su DNI y un correo de contacto válido, #linebreak()     *When* envía la solicitud, #linebreak()     *Then* el sistema registra la solicitud para que un agente restablezca las credenciales previa verificación de identidad. #linebreak()  #linebreak()  *Scenario 2: Datos incompletos o inválidos* #linebreak()  • *Given* que el DNI o el correo de contacto falta o tiene formato inválido, #linebreak()     *When* el paciente envía la solicitud, #linebreak()     *Then* el sistema rechaza la solicitud e identifica el dato a corregir. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1937))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1941))
#pagebreak()

#metadata((src: "README.md", line: 1943))
#strong[US-26: Consulta del Perfil del Paciente]

#metadata((src: "README.md", line: 1945, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-26], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Perfil del Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* consultar mis datos de identidad y de contacto, #linebreak()  *Para* verificar la información registrada en mi cuenta.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Datos del perfil* #linebreak()  • *Given* que el paciente tiene sesión iniciada, #linebreak()     *When* consulta su perfil, #linebreak()     *Then* el sistema muestra su nombre, el DNI con solo los últimos 4 dígitos visibles, el estado de identidad verificada, su correo y su celular. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1949))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1953))
#pagebreak()

#metadata((src: "README.md", line: 1955))
#strong[US-27: Edición de Datos de Contacto]

#metadata((src: "README.md", line: 1957, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-27], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Edición de Datos de Contacto],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* actualizar mi correo y mi número de celular, #linebreak()  *Para* mantener mis datos de contacto al día.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Actualización exitosa* #linebreak()  • *Given* que el paciente ingresa un correo disponible y un celular válido, #linebreak()     *When* guarda los cambios, #linebreak()     *Then* el sistema actualiza sus datos de contacto y envía una notificación de seguridad. #linebreak()  #linebreak()  *Scenario 2: Correo ya registrado* #linebreak()  • *Given* que el correo ingresado pertenece a otra cuenta, #linebreak()     *When* el paciente guarda los cambios, #linebreak()     *Then* el sistema rechaza la actualización e indica que el correo ya está en uso. #linebreak()  #linebreak()  *Scenario 3: Formato de contacto inválido* #linebreak()  • *Given* que el correo o el celular tiene un formato inválido, #linebreak()     *When* el paciente guarda los cambios, #linebreak()     *Then* el sistema rechaza la actualización e identifica el dato inválido. #linebreak()  #linebreak()  *Scenario 4: Intento de modificar datos de identidad* #linebreak()  • *Given* que el paciente intenta modificar su DNI, nombres, apellidos o fecha de nacimiento, #linebreak()     *When* guarda los cambios, #linebreak()     *Then* el sistema rechaza el cambio, pues los datos de identidad no se modifican. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1961))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1965))
#pagebreak()

#metadata((src: "README.md", line: 1967))
#strong[US-28: Cierre de Sesión del Paciente]

#metadata((src: "README.md", line: 1969, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-28], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Cierre de Sesión del Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* cerrar mi sesión, #linebreak()  *Para* proteger el acceso a mi cuenta al terminar de usar la aplicación.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Cierre de sesión confirmado* #linebreak()  • *Given* que el paciente tiene sesión iniciada y confirma el cierre, #linebreak()     *When* el sistema procesa la solicitud, #linebreak()     *Then* el sistema finaliza la sesión e invalida el token de acceso. #linebreak()  #linebreak()  *Scenario 2: Cierre de sesión no confirmado* #linebreak()  • *Given* que el paciente solicitó cerrar sesión y esto requiere confirmación, #linebreak()     *When* no confirma, #linebreak()     *Then* el sistema conserva la sesión activa. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1973))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1977))
#pagebreak()

#metadata((src: "README.md", line: 1979))
#strong[US-29: Aviso de Sesión Expirada]

#metadata((src: "README.md", line: 1981, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-29], [Paciente], [Medium], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Aviso de Sesión Expirada],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Paciente, #linebreak()  *Quiero* ser informado cuando mi sesión ha expirado, #linebreak()  *Para* volver a iniciar sesión de forma segura.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Sesión expirada* #linebreak()  • *Given* que el token de acceso del paciente venció, #linebreak()     *When* intenta realizar una acción, #linebreak()     *Then* el sistema rechaza la acción, informa que la sesión expiró y requiere un nuevo inicio de sesión. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1985))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 1989))
#pagebreak()

#metadata((src: "README.md", line: 1991))
#strong[US-30: Inicio de Sesión del Super Admin]

#metadata((src: "README.md", line: 1993, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-30], [Super Admin], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Inicio de Sesión del Super Admin],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Super Admin, #linebreak()  *Quiero* iniciar sesión con mi correo y contraseña, #linebreak()  *Para* acceder a la configuración del sistema.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Inicio de sesión exitoso* #linebreak()  • *Given* que el Super Admin ingresa credenciales válidas de una cuenta activa, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema otorga el acceso con el rol de Super Admin. #linebreak()  #linebreak()  *Scenario 2: Credenciales inválidas* #linebreak()  • *Given* que ingresa un correo no registrado, una contraseña incorrecta o un rol que no corresponde, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e informa credenciales inválidas. #linebreak()  #linebreak()  *Scenario 3: Cuenta inactiva* #linebreak()  • *Given* que ingresa credenciales válidas de una cuenta inactiva, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e informa que la cuenta está inactiva. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 1997))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2001))
#pagebreak()

#metadata((src: "README.md", line: 2003))
#strong[US-31: Creación de Cuenta de Personal de Admisión]

#metadata((src: "README.md", line: 2005, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-31], [Super Admin], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Creación de Cuenta de Personal de Admisión],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Super Admin, #linebreak()  *Quiero* registrar al personal de admisión con su DNI, nombres, apellidos, fecha de nacimiento, correo corporativo y teléfono, #linebreak()  *Para* otorgarle una cuenta verificada para operar el establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Alta exitosa* #linebreak()  • *Given* que el Super Admin autenticado ingresa datos que coinciden con el registro oficial y un correo corporativo disponible, #linebreak()     *When* registra al personal, #linebreak()     *Then* el sistema crea la cuenta de personal de admisión y envía las credenciales de acceso por correo. #linebreak()  #linebreak()  *Scenario 2: Incoincidencia de datos de identidad* #linebreak()  • *Given* que algún dato ingresado no coincide con el registro oficial, #linebreak()     *When* el Super Admin intenta registrar, #linebreak()     *Then* el sistema rechaza el alta e indica que la identidad no coincide con el titular. #linebreak()  #linebreak()  *Scenario 3: Correo duplicado* #linebreak()  • *Given* que el correo ingresado ya pertenece a una cuenta activa, #linebreak()     *When* el Super Admin intenta registrar, #linebreak()     *Then* el sistema rechaza el alta e indica que el correo ya está registrado. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2009))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2013))
#pagebreak()

#metadata((src: "README.md", line: 2015))
#strong[US-32: Inicio de Sesión del Personal de Admisión]

#metadata((src: "README.md", line: 2017, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-32], [Personal de Admisión], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Inicio de Sesión del Personal de Admisión],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* iniciar sesión con mi correo y contraseña, #linebreak()  *Para* acceder a las herramientas de operación del establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Inicio de sesión exitoso* #linebreak()  • *Given* que el personal de admisión ingresa credenciales válidas de una cuenta activa, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema otorga el acceso con el rol de Personal de Admisión. #linebreak()  #linebreak()  *Scenario 2: Credenciales inválidas* #linebreak()  • *Given* que ingresa un correo no registrado, una contraseña incorrecta o un rol que no corresponde, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e informa credenciales inválidas. #linebreak()  #linebreak()  *Scenario 3: Cuenta inactiva* #linebreak()  • *Given* que ingresa credenciales válidas de una cuenta inactiva, #linebreak()     *When* envía sus credenciales, #linebreak()     *Then* el sistema deniega el acceso e informa que la cuenta está inactiva. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2021))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2025))
#pagebreak()

#metadata((src: "README.md", line: 2027))
#strong[US-33: Configuración de la Duración de los Intervalos de Atención]

#metadata((src: "README.md", line: 2029, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-33], [Super Admin], [High], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Configuración de la Duración de los Intervalos de Atención],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Super Admin, #linebreak()  *Quiero* definir la duración de cada intervalo de atención, #linebreak()  *Para* adaptar la agenda a la operación del establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Intervalo actualizado* #linebreak()  • *Given* que el Super Admin ingresa una duración válida coherente con la tolerancia de llegada, #linebreak()     *When* guarda el intervalo, #linebreak()     *Then* el sistema aplica la duración a los nuevos bloques y conserva las citas confirmadas. #linebreak()  #linebreak()  *Scenario 2: Duración incoherente* #linebreak()  • *Given* que la tolerancia de llegada es mayor que la duración ingresada, #linebreak()     *When* el Super Admin intenta guardar, #linebreak()     *Then* el sistema rechaza el cambio e indica el conflicto. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2033))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2037))
#pagebreak()

#metadata((src: "README.md", line: 2039))
#strong[US-34: Edición de una Regla Operativa del Establecimiento]

#metadata((src: "README.md", line: 2041, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-34], [Super Admin], [High], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Edición de una Regla Operativa del Establecimiento],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Super Admin, #linebreak()  *Quiero* modificar el valor de una regla operativa (capacidad por bloque, tolerancia de llegada, plazo después de llamada, respuesta a reasignación, hora límite para reservar o anticipación para cancelar), #linebreak()  *Para* adaptar el sistema a la capacidad y a las políticas de la institución.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Regla actualizada* #linebreak()  • *Given* que el Super Admin ingresa un valor válido para la regla, #linebreak()     *When* guarda el cambio, #linebreak()     *Then* el sistema persiste el valor, lo aplica a la operación y conserva las reservas confirmadas. #linebreak()  #linebreak()  *Scenario 2: Valor inválido* #linebreak()  • *Given* que el valor ingresado es cero, no numérico o incoherente con la duración del intervalo, #linebreak()     *When* el Super Admin intenta guardar, #linebreak()     *Then* el sistema rechaza el cambio e indica el campo en conflicto. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2045))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2049))
#pagebreak()

#metadata((src: "README.md", line: 2051))
#strong[US-35: Consulta de Reglas Operativas Vigentes]

#metadata((src: "README.md", line: 2053, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-35], [Super Admin], [Medium], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Reglas Operativas Vigentes],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Super Admin, #linebreak()  *Quiero* consultar las reglas operativas vigentes del establecimiento, #linebreak()  *Para* conocer cómo está configurado el sistema.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Reglas vigentes* #linebreak()  • *Given* que el Super Admin está autenticado, #linebreak()     *When* consulta las reglas del establecimiento, #linebreak()     *Then* el sistema retorna el valor vigente de cada regla: capacidad por bloque, tolerancia de llegada, plazo después de llamada, respuesta a reasignación, hora límite para reservar, anticipación para cancelar, prioridad de reasignación y posición de cola visible. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2057))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2061))
#pagebreak()

#metadata((src: "README.md", line: 2063))
#strong[US-36: Selección de Especialidad en la Agenda Operativa]

#metadata((src: "README.md", line: 2065, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-36], [Personal de Admisión], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Selección de Especialidad en la Agenda Operativa],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* buscar y seleccionar una especialidad, #linebreak()  *Para* consultar su calendario operativo.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Selección de especialidad* #linebreak()  • *Given* que el catálogo contiene especialidades publicadas, #linebreak()     *When* el personal selecciona una especialidad, #linebreak()     *Then* el sistema habilita el calendario operativo de esa especialidad. #linebreak()  #linebreak()  *Scenario 2: Búsqueda sin coincidencias* #linebreak()  • *Given* que el término buscado no coincide con ninguna especialidad, #linebreak()     *When* el personal realiza la búsqueda, #linebreak()     *Then* el sistema indica que no encontró la especialidad y permite volver al catálogo completo. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2069))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2073))
#pagebreak()

#metadata((src: "README.md", line: 2075))
#strong[US-37: Consulta del Calendario Operativo]

#metadata((src: "README.md", line: 2077, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-37], [Personal de Admisión], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Calendario Operativo],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar el calendario mensual de una especialidad, #linebreak()  *Para* identificar las fechas con bloques programados.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Fechas con bloques* #linebreak()  • *Given* que la especialidad seleccionada tiene agenda activa, #linebreak()     *When* el personal consulta un mes, #linebreak()     *Then* el sistema identifica las fechas que tienen bloques programados. #linebreak()  #linebreak()  *Scenario 2: Fecha sin bloques* #linebreak()  • *Given* que la fecha consultada no tiene bloques programados, #linebreak()     *When* el personal la consulta, #linebreak()     *Then* el sistema indica que no hay bloques para esa fecha. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2081))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2085))
#pagebreak()

#metadata((src: "README.md", line: 2087))
#strong[US-38: Consulta de Bloques del Día]

#metadata((src: "README.md", line: 2089, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-38], [Personal de Admisión], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Bloques del Día],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar los bloques horarios de un día, #linebreak()  *Para* conocer la ocupación de la agenda.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Bloques del día* #linebreak()  • *Given* que existen bloques en la fecha y especialidad seleccionadas, #linebreak()     *When* el personal consulta el día, #linebreak()     *Then* el sistema retorna cada bloque con su horario, profesional, consultorio, reservas, capacidad y estado. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2093))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2097))
#pagebreak()

#metadata((src: "README.md", line: 2099))
#strong[US-39: Consulta del Detalle de un Bloque]

#metadata((src: "README.md", line: 2101, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-39], [Personal de Admisión], [High], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta del Detalle de un Bloque],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar el detalle de un bloque horario, #linebreak()  *Para* revisar su capacidad, reservas y estado.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Detalle del bloque* #linebreak()  • *Given* que el bloque existe en la agenda, #linebreak()     *When* el personal consulta su detalle, #linebreak()     *Then* el sistema retorna el horario, la especialidad, el profesional, el consultorio, la capacidad, las reservas y el estado. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2105))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2109))
#pagebreak()

#metadata((src: "README.md", line: 2111))
#strong[US-40: Consulta de Horario por Profesional]

#metadata((src: "README.md", line: 2113, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-40], [Personal de Admisión], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Horario por Profesional],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar los bloques de un profesional con sus cupos disponibles, #linebreak()  *Para* seleccionar el bloque que corresponde.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Bloques del profesional* #linebreak()  • *Given* que el profesional pertenece a la especialidad seleccionada, #linebreak()     *When* el personal consulta su horario, #linebreak()     *Then* el sistema retorna sus bloques con los cupos disponibles de cada uno. #linebreak()  #linebreak()  *Scenario 2: Bloque sin cupos* #linebreak()  • *Given* que un bloque del profesional no tiene cupos disponibles, #linebreak()     *When* el personal intenta seleccionarlo, #linebreak()     *Then* el sistema lo identifica como sin cupos y no permite la selección. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2117))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2121))
#pagebreak()

#metadata((src: "README.md", line: 2123))
#strong[US-41: Consulta de Pacientes con Reserva en un Bloque]

#metadata((src: "README.md", line: 2125, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-41], [Personal de Admisión], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Pacientes con Reserva en un Bloque],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar los pacientes que tienen reserva en un bloque, #linebreak()  *Para* saber quiénes deben llegar y en qué estado se encuentran.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Pacientes con reserva* #linebreak()  • *Given* que el bloque tiene reservas registradas, #linebreak()     *When* el personal consulta la lista, #linebreak()     *Then* el sistema retorna cada paciente con su código de reserva, si es titular o menor con su representante, y su estado de llegada o atención. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2129))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2133))
#pagebreak()

#metadata((src: "README.md", line: 2135))
#strong[US-42: Edición de un Bloque Horario]

#metadata((src: "README.md", line: 2137, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-42], [Personal de Admisión], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Edición de un Bloque Horario],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* modificar la hora de inicio, la especialidad, el profesional o el estado de un bloque, #linebreak()  *Para* mantener la agenda alineada con la operación real.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Bloque actualizado* #linebreak()  • *Given* que el cambio no entra en conflicto con reservas confirmadas ni con otro bloque del profesional, #linebreak()     *When* el personal confirma el cambio, #linebreak()     *Then* el sistema guarda los nuevos datos del bloque. #linebreak()  #linebreak()  *Scenario 2: Cambio incompatible* #linebreak()  • *Given* que el cambio entra en conflicto con reservas confirmadas u otro bloque del profesional, #linebreak()     *When* el personal confirma el cambio, #linebreak()     *Then* el sistema rechaza el cambio e indica que debe revisar el bloque. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2141))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2145))
#pagebreak()

#metadata((src: "README.md", line: 2147))
#strong[US-43: Registro de Llegada por Escaneo de QR]

#metadata((src: "README.md", line: 2149, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-43], [Personal de Admisión], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Registro de Llegada por Escaneo de QR],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* registrar la llegada de un paciente escaneando el código QR de su reserva, #linebreak()  *Para* confirmar su presencia y generar su ticket de atención.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Llegada confirmada* #linebreak()  • *Given* que el código QR corresponde a una reserva vigente y el paciente llega dentro de la tolerancia configurada, #linebreak()     *When* el personal escanea el código, #linebreak()     *Then* el sistema registra la llegada, genera el ticket del paciente y lo ingresa en la cola de atención. #linebreak()  #linebreak()  *Scenario 2: Reserva no vigente o inexistente* #linebreak()  • *Given* que el código QR no corresponde a una reserva vigente, #linebreak()     *When* el personal escanea el código, #linebreak()     *Then* el sistema rechaza el registro y no ingresa al paciente en la cola. #linebreak()  #linebreak()  *Scenario 3: Llegada fuera de la tolerancia* #linebreak()  • *Given* que el paciente llega fuera de la tolerancia configurada, #linebreak()     *When* el personal escanea el código, #linebreak()     *Then* el sistema rechaza el registro e informa que el horario de la reserva no permite la llegada. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2153))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2157))
#pagebreak()

#metadata((src: "README.md", line: 2159))
#strong[US-44: Registro de Llegada por Código Manual]

#metadata((src: "README.md", line: 2161, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-44], [Personal de Admisión], [Medium], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Registro de Llegada por Código Manual],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* registrar la llegada de un paciente ingresando el código de su reserva, #linebreak()  *Para* confirmar su presencia cuando no es posible escanear el QR.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
)

#metadata((src: "README.md", line: 2165))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2169))
#pagebreak()

#metadata((src: "README.md", line: 2171))
#strong[US-45: Consulta de la Cola de Atención Presencial]

#metadata((src: "README.md", line: 2173, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-45], [Personal de Admisión], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de la Cola de Atención Presencial],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar la cola de pacientes presentes de un consultorio, #linebreak()  *Para* conocer el orden de atención.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Cola con pacientes* #linebreak()  • *Given* que existen pacientes con llegada registrada, #linebreak()     *When* el personal consulta la cola, #linebreak()     *Then* el sistema retorna los pacientes ordenados por hora de llegada con su número de turno y estado. #linebreak()  #linebreak()  *Scenario 2: Cola vacía* #linebreak()  • *Given* que no hay llegadas registradas, #linebreak()     *When* el personal consulta la cola, #linebreak()     *Then* el sistema indica que no hay pacientes en espera. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2177))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2181))
#pagebreak()

#metadata((src: "README.md", line: 2183))
#strong[US-46: Llamado del Siguiente Paciente]

#metadata((src: "README.md", line: 2185, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-46], [Personal de Admisión], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Llamado del Siguiente Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* llamar al siguiente paciente de la cola, #linebreak()  *Para* que se dirija al consultorio dentro del plazo establecido.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Llamado registrado* #linebreak()  • *Given* que existe un paciente en espera en primer lugar de la cola, #linebreak()     *When* el personal lo llama, #linebreak()     *Then* el sistema registra la hora del llamado, cambia el estado del paciente a llamado e inicia el plazo para acudir configurado. #linebreak()  #linebreak()  *Scenario 2: Sin pacientes en espera* #linebreak()  • *Given* que no hay pacientes en espera en la cola, #linebreak()     *When* el personal intenta llamar al siguiente, #linebreak()     *Then* el sistema informa que no hay pacientes por llamar. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2189))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2193))
#pagebreak()

#metadata((src: "README.md", line: 2195))
#strong[US-47: Inicio de Atención de un Paciente Llamado]

#metadata((src: "README.md", line: 2197, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-47], [Personal de Admisión], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Inicio de Atención de un Paciente Llamado],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* iniciar la atención del paciente que acudió al consultorio, #linebreak()  *Para* registrar que el paciente está siendo atendido.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Atención iniciada* #linebreak()  • *Given* que el paciente llamado se encuentra en el consultorio dentro del plazo, #linebreak()     *When* el personal inicia la atención, #linebreak()     *Then* el sistema cambia el estado del turno a en atención y detiene el conteo del plazo. #linebreak()  #linebreak()  *Scenario 2: Atención iniciada con plazo vencido* #linebreak()  • *Given* que el plazo venció pero el paciente aún no fue marcado ausente, #linebreak()     *When* el personal inicia la atención, #linebreak()     *Then* el sistema cambia el estado del turno a en atención. #linebreak()  #linebreak()  *Scenario 3: Turno ya declarado ausente* #linebreak()  • *Given* que el turno fue declarado ausente, #linebreak()     *When* el personal intenta iniciar la atención, #linebreak()     *Then* el sistema rechaza la operación e informa que el turno se perdió. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2201))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2205))
#pagebreak()

#metadata((src: "README.md", line: 2207))
#strong[US-48: Finalización de la Atención de un Paciente]

#metadata((src: "README.md", line: 2209, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-48], [Personal de Admisión], [High], [EP4: Arrival & QR Check-in System],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Finalización de la Atención de un Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* finalizar la atención de un paciente, #linebreak()  *Para* retirarlo de la cola y continuar con el siguiente.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Atención finalizada* #linebreak()  • *Given* que el turno del paciente está en atención, #linebreak()     *When* el personal finaliza la atención, #linebreak()     *Then* el sistema cambia el estado a atendido, retira al paciente de la cola y habilita el llamado del siguiente. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2213))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2217))
#pagebreak()

#metadata((src: "README.md", line: 2219))
#strong[US-49: Registro de Ausencia de un Paciente]

#metadata((src: "README.md", line: 2221, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-49], [Personal de Admisión], [High], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Registro de Ausencia de un Paciente],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* marcar como ausente a un paciente que no acudió tras ser llamado, #linebreak()  *Para* liberar su cupo según las reglas del establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Ausencia confirmada* #linebreak()  • *Given* que el plazo posterior al llamado se cumplió sin que el paciente ingresara al consultorio, #linebreak()     *When* el personal confirma la ausencia, #linebreak()     *Then* el sistema marca el turno como ausente, retira al paciente de la cola y libera el cupo. #linebreak()  #linebreak()  *Scenario 2: Plazo aún vigente* #linebreak()  • *Given* que el plazo posterior al llamado no se cumplió, #linebreak()     *When* el personal intenta marcar la ausencia, #linebreak()     *Then* el sistema rechaza la operación e informa el tiempo restante. #linebreak()  #linebreak()  *Scenario 3: Atención ya iniciada* #linebreak()  • *Given* que la atención del paciente ya fue iniciada, #linebreak()     *When* el personal intenta marcar la ausencia, #linebreak()     *Then* el sistema rechaza la operación. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2225))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2229))
#pagebreak()

#metadata((src: "README.md", line: 2231))
#strong[US-50: Consulta de Citas Canceladas del Día]

#metadata((src: "README.md", line: 2233, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-50], [Personal de Admisión], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Consulta de Citas Canceladas del Día],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar las citas canceladas del día, #linebreak()  *Para* conocer qué cupos fueron liberados.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Cancelaciones del día* #linebreak()  • *Given* que existen cancelaciones registradas en el día, #linebreak()     *When* el personal consulta las citas canceladas, #linebreak()     *Then* el sistema retorna la especialidad, el paciente, el horario, el momento de la cancelación y el estado del cupo. #linebreak()  #linebreak()  *Scenario 2: Sin cancelaciones* #linebreak()  • *Given* que no hay cancelaciones registradas en el día, #linebreak()     *When* el personal consulta las citas canceladas, #linebreak()     *Then* el sistema indica que no hay citas canceladas. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2237))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2241))
#pagebreak()

#metadata((src: "README.md", line: 2243))
#strong[US-51: Visualización de Indicadores del Día]

#metadata((src: "README.md", line: 2245, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-51], [Personal de Admisión], [High], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Visualización de Indicadores del Día],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar las citas programadas, pendientes, canceladas e inasistencias del día junto con el resumen de atención, #linebreak()  *Para* monitorear el flujo de citas e incidencias del establecimiento.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Indicadores del día* #linebreak()  • *Given* que existen citas registradas en el día, #linebreak()     *When* el personal consulta los indicadores, #linebreak()     *Then* el sistema retorna las citas programadas, pendientes, canceladas, las inasistencias, las citas atendidas y los cupos recuperados, con su hora de actualización. #linebreak()  #linebreak()  *Scenario 2: Día sin actividad* #linebreak()  • *Given* que la fecha consultada no tiene citas ni incidencias, #linebreak()     *When* el personal consulta los indicadores, #linebreak()     *Then* el sistema retorna todos los indicadores en cero. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2249))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2253))
#pagebreak()

#metadata((src: "README.md", line: 2255))
#strong[US-52: Visualización de Demanda por Especialidad]

#metadata((src: "README.md", line: 2257, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-52], [Personal de Admisión], [Medium], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Visualización de Demanda por Especialidad],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* consultar la cantidad de reservas del día por especialidad, #linebreak()  *Para* identificar las especialidades con mayor demanda.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Demanda por especialidad* #linebreak()  • *Given* que existen reservas registradas en el día, #linebreak()     *When* el personal consulta la demanda, #linebreak()     *Then* el sistema retorna el total de reservas y las reservas de cada especialidad. #linebreak()  #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2261))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2265))
#pagebreak()

#metadata((src: "README.md", line: 2267))
#strong[US-53: Exportación de Reporte Operativo]

#metadata((src: "README.md", line: 2269, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [US-53], [Personal de Admisión], [Medium], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Exportación de Reporte Operativo],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[*Como* Personal de Admisión, #linebreak()  *Quiero* exportar un reporte en PDF o CSV indicando el rango de fechas y la especialidad, #linebreak()  *Para* contar con la información del periodo fuera de la aplicación.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[*Scenario 1: Reporte generado* #linebreak()  • *Given* que el personal indica un rango de fechas válido y una especialidad o todas, #linebreak()     *When* solicita la exportación en PDF o CSV, #linebreak()     *Then* el sistema genera el archivo con reservas, atenciones, ausencias, demanda y reasignaciones del periodo. #linebreak()  #linebreak()  *Scenario 2: Rango de fechas inválido* #linebreak()  • *Given* que la fecha inicial es posterior a la fecha final, #linebreak()     *When* el personal solicita la exportación, #linebreak()     *Then* el sistema rechaza la solicitud e indica corregir las fechas. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2272))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[Technical stories] <sec:technical-stories>
#metadata((src: "README.md", line: 2275, kind: "heading", level: 4))

#metadata((src: "README.md", line: 2279))
#strong[TECH-01: Configuración de Infraestructura y Clientes para Notificaciones (Email, SMS y FCM)]

#metadata((src: "README.md", line: 2281, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [TECH-01], [Developer], [High], [EP1 \/ EP2 \/ EP3],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Configuración de Infraestructura y Clientes para Notificaciones (Email, SMS y FCM)],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[#linebreak()         *Como* Developer, #linebreak()  #linebreak()         *Quiero* integrar los clientes de servicios de mensajería (SMTP, Firebase Cloud Messaging y pasarela SMS), #linebreak()  #linebreak()         *Para* proveer componentes reutilizables de envío masivo y seguro de notificaciones transaccionales a través de la arquitectura del sistema.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[#linebreak()         *Scenario 1: Envío de correo electrónico transaccional via SMTP* #linebreak()  #linebreak()         • *Given* una solicitud de envío con la plantilla HTML y los datos dinámicos requeridos, #linebreak()  #linebreak()            *When* el servicio invoca la interfaz de transporte SMTP, #linebreak()  #linebreak()            *Then* la pasarela entrega el correo al destinatario y retorna una respuesta con estado \`200 OK\` y el ID del mensaje enviado. #linebreak()  #linebreak()  #linebreak()         *Scenario 2: Envío de alerta push a dispositivo móvil vía FCM API* #linebreak()  #linebreak()         • *Given* un payload de notificación Push conteniendo el token del dispositivo destino, #linebreak()  #linebreak()            *When* el servicio ejecuta la petición HTTP POST hacia la API de Firebase Cloud Messaging, #linebreak()  #linebreak()            *Then* FCM responde con código \`200 OK\` confirmando la entrega del mensaje al dispositivo. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2328))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2336))
#strong[TECH-02: Desarrollo de Endpoints RESTful API con Especificación OpenAPI y Seguridad RBAC]

#metadata((src: "README.md", line: 2338, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [TECH-02], [Developer], [High], [EP5: Hospital Operations & System Configuration],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Desarrollo de Endpoints RESTful API con Especificación OpenAPI y Seguridad RBAC],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[#linebreak()         *Como* Developer, #linebreak()  #linebreak()         *Quiero* construir los controladores API REST e integrar la especificación OpenAPI\/Swagger con control de acceso por roles, #linebreak()  #linebreak()         *Para* exponer endpoints estandarizados, seguros y autodocumentados para los clientes del sistema.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[#linebreak()         *Scenario 1: Petición HTTP autenticada con rol autorizado (Request\/Response Exitoso)* #linebreak()  #linebreak()         • *Given* una solicitud HTTP \`GET \/api\/v1\/appointments\` con un encabezado \`Authorization: Bearer \` que contiene el rol autorizado, #linebreak()  #linebreak()            *When* el controlador procesa la petición, #linebreak()  #linebreak()            *Then* retorna un código de estado \`200 OK\` junto con el payload JSON estandarizado y documentado en Swagger UI. #linebreak()  #linebreak()  #linebreak()         *Scenario 2: Denegación de acceso por rol insuficiente o token inválido* #linebreak()  #linebreak()         • *Given* una solicitud a un endpoint protegido enviada con un token caducado o sin el rol requerido, #linebreak()  #linebreak()            *When* el middleware RBAC valida el token JWT, #linebreak()  #linebreak()            *Then* el sistema interrumpe la petición y responde con código HTTP \`401 Unauthorized\` o \`403 Forbidden\` según la falla. #linebreak()  #linebreak()  #linebreak()         *Scenario 3: Manejo estandarizado de errores de request (HTTP Status Codes)* #linebreak()  #linebreak()         • *Given* una petición HTTP POST con un cuerpo JSON malformado o faltante de campos obligatorios, #linebreak()  #linebreak()            *When* el middleware de validación procesa el request, #linebreak()  #linebreak()            *Then* la API responde con un código \`400 Bad Request\` indicando la lista detallada de errores de validación por campo. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2389))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2397))
#strong[TECH-03: Desarrollo de Cron Jobs en Segundo Plano para Auditoría y Control de Ausencias]

#metadata((src: "README.md", line: 2399, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [TECH-03], [Developer], [Medium], [EP3: Reassignment Protocol],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Desarrollo de Cron Jobs en Segundo Plano para Auditoría y Control de Ausencias],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[#linebreak()         *Como* Developer, #linebreak()  #linebreak()         *Quiero* implementar workers asíncronos programados (Cron Jobs), #linebreak()  #linebreak()         *Para* detectar turnos cuyo tiempo de tolerancia expiró, actualizar su estado a "Ausente" y desencadenar el protocolo de reasignación.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[#linebreak()         *Scenario 1: Procesamiento y actualización masiva de citas expiradas* #linebreak()  #linebreak()         • *Given* la ejecución periódica programada de la tarea en segundo plano, #linebreak()  #linebreak()            *When* el worker audita las citas del intervalo actual cuyo margen de tolerancia expiró sin confirmación de check-in, #linebreak()  #linebreak()            *Then* el sistema actualiza el estado de la entidad a "Ausente" en la base de datos registrando el timestamp de la acción. #linebreak()  #linebreak()  #linebreak()         *Scenario 2: Disparo de eventos de reasignación tras detección de ausencia* #linebreak()  #linebreak()         • *Given* una cita médica marcada como "Ausente" por el worker, #linebreak()  #linebreak()            *When* se confirma la persistencia del nuevo estado, #linebreak()  #linebreak()            *Then* el worker publica el evento \`AppointmentExpire​dEvent\` en la cola de mensajes para iniciar el protocolo de reasignación de cupos. #linebreak()  #linebreak()  #linebreak()         *Scenario 3: Bloqueo distribuido para evitar duplicidad de ejecución* #linebreak()  #linebreak()         • *Given* múltiples réplicas del servicio ejecutándose de manera concurrente, #linebreak()  #linebreak()            *When* la tarea Cron se dispara simultáneamente en varios nodos, #linebreak()  #linebreak()            *Then* el primer worker adquiere un bloqueo distribuido (Redis\/Database Lock), evitando ejecuciones duplicadas sobre los mismos registros. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2450))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2458))
#strong[TECH-04: Desarrollo de Consumidor Asíncrono de Eventos de Notificaciones de Citas]

#metadata((src: "README.md", line: 2460, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [TECH-04], [Developer], [Medium], [EP2: Appointments & Booking Engine],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Desarrollo de Consumidor Asíncrono de Eventos de Notificaciones de Citas],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[#linebreak()         *Como* Developer, #linebreak()  #linebreak()         *Quiero* desarrollar un consumidor asíncrono de eventos de notificaciones, #linebreak()  #linebreak()         *Para* procesar los eventos de reserva, cancelación o reasignación de citas enviando las alertas correspondientes sin penalizar el tiempo de respuesta del API REST.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[#linebreak()         *Scenario 1: Consumo y despacho exitoso del evento de reserva (Request\/Response Event)* #linebreak()  #linebreak()         • *Given* el evento \`AppointmentBooked​Event\` publicado en la cola de notificaciones, #linebreak()  #linebreak()            *When* el consumidor recupera el mensaje y genera la plantilla correspondiente, #linebreak()  #linebreak()            *Then* el sistema efectúa el dispatch hacia el proveedor externo obteniendo un código de entrega exitoso y marcando el mensaje de la cola como procesado (\`ACK\`). #linebreak()  #linebreak()  #linebreak()         *Scenario 2: Manejo de fallas temporales mediante Dead Letter Queue (DLQ)* #linebreak()  #linebreak()         • *Given* un fallo de conexión (5xx \/ Timeout) con la pasarela de notificaciones, #linebreak()  #linebreak()            *When* el consumidor detecta la excepción durante el procesamiento, #linebreak()  #linebreak()            *Then* el sistema aplica un reintento con \*Exponential Backoff\* y, si se supera el límite máximo de reintentos, transfiere el mensaje a la Dead Letter Queue (DLQ) registrando el log de auditoría. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2507))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2515))
#strong[TECH-05: Desarrollo del Endpoint API REST para Consulta y Validación de DNI Externa]

#metadata((src: "README.md", line: 2517, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([#text(weight: "bold")[Story ID]], [#text(weight: "bold")[User]], [#text(weight: "bold")[Priority]], [#text(weight: "bold")[Epic]]),
  tline,
  [TECH-05], [Developer], [High], [EP1: Authentication & Identity Management],
  [#text(weight: "bold")[Title]], table.cell(colspan: 3)[Desarrollo del Endpoint API REST para Consulta y Validación de DNI Externa],
  table.cell(colspan: 4)[#text(weight: "bold")[Description]],
  table.cell(colspan: 4)[#linebreak()         *Como* Developer, #linebreak()  #linebreak()         *Quiero* implementar el endpoint REST de consulta de DNI con manejo de cache y Circuit Breaker, #linebreak()  #linebreak()         *Para* exponer un servicio de validación de identidad rápido y tolerante a fallos para el registro de usuarios.],
  table.cell(colspan: 4)[#text(weight: "bold")[Acceptance Criteria]],
  table.cell(colspan: 4)[#linebreak()         *Scenario 1: Respuesta exitosa de validación de DNI (HTTP 200 OK)* #linebreak()  #linebreak()         • *Given* una solicitud \`POST \/api\/v1\/identity\/v​erify-dni\` conteniendo un DNI de 8 dígitos válido en el cuerpo JSON, #linebreak()  #linebreak()            *When* la API consulta el servicio (o la capa de cache en memoria), #linebreak()  #linebreak()            *Then* el sistema retorna un código de estado \`200 OK\` con los nombres y apellidos validados en el payload JSON. #linebreak()  #linebreak()  #linebreak()         *Scenario 2: Validación de formato de entrada (HTTP 400 Bad Request)* #linebreak()  #linebreak()         • *Given* una petición HTTP enviada con un DNI con formato incorrecto (menos de 8 dígitos o caracteres alfanuméricos), #linebreak()  #linebreak()            *When* el middleware de validación procesa el request, #linebreak()  #linebreak()            *Then* el sistema rechaza la petición respondiendo con un código \`400 Bad Request\` y el detalle del error de formato. #linebreak()  #linebreak()  #linebreak()         *Scenario 3: Respuesta ante caída o degradación del proveedor externo (HTTP 503 Service Unavailable)* #linebreak()  #linebreak()         • *Given* la API externa inactiva o con el patrón Circuit Breaker en estado abierto (\`Open\`), #linebreak()  #linebreak()            *When* el frontend realiza la consulta de un DNI, #linebreak()  #linebreak()            *Then* el endpoint responde con un código \`503 Service Unavailable\` adjuntando la bandera para permitir el registro condicional en el cliente. #linebreak()  #linebreak()  #linebreak()],
)

#metadata((src: "README.md", line: 2568))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2571))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 2572))
#pagebreak()

#heading(level: 3)[2.4.2. Impact Mapping] <sec:2-4-2-impact-mapping>
#metadata((src: "README.md", line: 2575, kind: "heading", level: 3))

#metadata((src: "README.md", line: 2577))
El mapa de impacto para nuestra plataforma de #strong[gestión de citas médicas y control de sala de espera], define una meta SMART: #emph[«Optimizar la atención médica y reducir el tiempo de espera operativo; al primer año de despliegue contar con 15 clínicas afiliadas, 25 000 reservas procesadas y un 75% de confirmación de presencia vía QR»]. A partir de esta meta se explicitan los cambios de comportamiento esperados en los actores clave del sistema.

#metadata((src: "README.md", line: 2579))
Como referencia cualitativa se emplean dos personas modelo: #strong[Personal de Admisión] (gestión operativa y flujo en sala) y #strong[Paciente] (reserva autónoma y confirmación de llegada). Para el primero, el mapa recoge necesidades relativas a visibilidad en tiempo real de pacientes confirmados, claridad en el llamado a consultorio, flexibilidad para aplicar prioridades o reasignaciones por imprevistos, y generación de métricas de ausentismo; para el segundo, autonomía para seleccionar especialidad y horario, confianza mediante el registro rápido por código QR sin filas presenciales, y claridad sobre su estado dentro de la cola de espera.

#metadata((src: "README.md", line: 2581))
A partir de estos impactos se declaran entregables de producto susceptibles de materializar el cambio de conducta: catálogo de especialidades y cupos en tiempo real, protocolo de reasignación de cupos liberados por orden de #raw("bookingOrder"), validador de presencia mediante lectura y verificación de hash QR con tolerancia de tiempo, monitor central para admisión con ordenamiento automático por llegada, dashboard operativo con indicadores de citas programadas, citas pendientes, citas canceladas e inasistencias del día, y motor analítico con exportación de reportes operativos (PDF\/CSV). En el ámbito técnico y de arquitectura, se integran endpoints RESTful seguros (HTTP 200\/401) para el registro de presencia y un motor de notificaciones en tiempo real para avisos instantáneos de llamados y liberación de cupos. La última dimensión del método vincula estos entregables con historias de usuario (US), historias técnicas (TS) y #emph[spikes] (SP) en formato #emph[Como… \/ quiero… \/ para…] (y su equivalente técnico #emph[Objective \/ Given \/ When \/ Then]), asegurando la trazabilidad directa desde la meta estratégica hasta el desarrollo funcional, como se observa en la #link("#figura-35")[Figura 35].

#metadata((src: "README.md", line: 2583))
#pagebreak()

#metadata((src: "README.md", line: 2589))
#strong[Figura 35]

#metadata((src: "README.md", line: 2591))
#emph[Impact Mapping de SaludYa]

#metadata((src: "README.md", line: 2593, kind: "figure", img: "https://i.imgur.com/0D0vHje.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/build/remote/remote-5725364401efacd3.png", alt: "Impact Mapping de SaludYa", width: 85%)]]]

#metadata((src: "README.md", line: 2595))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2598))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.4.3. Product Backlog] <sec:2-4-3-product-backlog>
#metadata((src: "README.md", line: 2600, kind: "heading", level: 3))

#metadata((src: "README.md", line: 2602))
El Product Backlog ha sido priorizado en función del #strong[valor directo entregado al negocio y a los usuarios], asegurando que los entregables visibles y de alto impacto (como la Landing Page y el flujo principal de reservas) se aborden desde los primeros Sprints. La priorización sigue el principio de #strong[valor de negocio primero]: las historias relacionadas con la propuesta de valor visible para el paciente (Landing Page, reserva de citas, check-in QR) y la operación crítica del establecimiento (gestión de cupos, reasignación de turnos liberados y dashboard operativo) se ubican en los primeros lugares, mientras que las historias de soporte técnico y configuración avanzada se postergan a Sprints posteriores.

#heading(level: 4)[Tabla del Product Backlog] <sec:tabla-del-product-backlog>
#metadata((src: "README.md", line: 2604, kind: "heading", level: 4))

#metadata((src: "README.md", line: 2607))
El backlog ordena las historias de usuario por prioridad e identifica su rol, alcance, estimación en story points y sprint previsto, como se detalla en la #link("#tabla-22")[Tabla 22].

#metadata((src: "README.md", line: 2609))
#pagebreak()

#metadata((src: "README.md", line: 2613))
#strong[Tabla 22]

#metadata((src: "README.md", line: 2615))
#emph[Product Backlog de SaludYa]

#metadata((src: "README.md", line: 2617, kind: "table"))
#table(
  columns: 6,
  align: (left, left, left, left, left, left),
  table.header([\# Orden], [User Story Id], [Rol], [Título], [Story Points (1 \/ 2 \/ 3 \/ 5 \/ 8)], [Sprint]),
  tline,
  [1], [US-00], [Paciente potencial], [Visualización de Propuesta de Valor en Landing Page], [2], [Sprint 1],
  [2], [US-01], [Paciente], [Verificación de Identidad por DNI], [5], [Sprint 1],
  [3], [US-02], [Paciente], [Registro de Credenciales de Acceso], [3], [Sprint 1],
  [4], [US-03], [Paciente], [Verificación de Celular y Creación de Cuenta], [5], [Sprint 1],
  [5], [US-04], [Paciente], [Inicio de Sesión del Paciente], [3], [Sprint 1],
  [6], [US-05], [Paciente], [Selección de Especialidad Médica], [2], [Sprint 1],
  [7], [US-06], [Paciente], [Consulta de Horarios Disponibles], [5], [Sprint 1],
  [8], [US-07], [Paciente], [Reserva de Cita para el Paciente], [8], [Sprint 1],
  [9], [US-08], [Paciente], [Recepción de Confirmación de Cita por Correo], [3], [Sprint 1],
  [10], [US-09], [Paciente], [Consulta de Citas Agendadas], [3], [Sprint 1],
  [11], [US-10], [Paciente], [Cancelación de Cita], [5], [Sprint 1],
  [12], [US-11], [Paciente], [Consulta del Código QR de la Reserva], [2], [Sprint 1],
  [13], [US-12], [Paciente], [Consulta del Ticket Digital de Atención], [3], [Sprint 1],
  [14], [US-13], [Paciente], [Consulta de Posición en la Cola de Atención], [3], [Sprint 1],
  [15], [US-14], [Paciente], [Recepción de Notificación de Llamado a Consultorio], [3], [Sprint 1],
  [16], [US-15], [Paciente], [Vinculación de un Menor de Edad], [5], [Sprint 1],
  [17], [US-16], [Paciente], [Reserva de Cita para un Menor Vinculado], [5], [Sprint 1],
  [18], [US-17], [Paciente], [Consulta de Menores Vinculados], [2], [Sprint 1],
  [19], [US-18], [Paciente], [Consulta del Perfil de un Menor], [2], [Sprint 1],
  [20], [US-19], [Paciente], [Desvinculación de un Menor de Edad], [2], [Sprint 1],
  [21], [US-20], [Paciente], [Aceptación de Adelanto de Cita], [5], [Sprint 1],
  [22], [US-21], [Paciente], [Rechazo de Adelanto de Cita], [3], [Sprint 1],
  [23], [US-22], [Paciente], [Salida Voluntaria de la Cola de Atención], [3], [Sprint 1],
  [24], [US-23], [Paciente], [Solicitud de Enlace de Recuperación de Contraseña], [3], [Sprint 1],
  [25], [US-24], [Paciente], [Restablecimiento de Contraseña], [3], [Sprint 1],
  [26], [US-25], [Paciente], [Solicitud de Ayuda por Pérdida de Acceso a la Cuenta], [2], [Sprint 1],
  [27], [US-26], [Paciente], [Consulta del Perfil del Paciente], [2], [Sprint 1],
  [28], [US-27], [Paciente], [Edición de Datos de Contacto], [3], [Sprint 1],
  [29], [US-28], [Paciente], [Cierre de Sesión del Paciente], [2], [Sprint 1],
  [30], [US-29], [Paciente], [Aviso de Sesión Expirada], [2], [Sprint 1],
  [31], [US-30], [Super Admin], [Inicio de Sesión del Super Admin], [3], [Sprint 2],
  [32], [US-31], [Super Admin], [Creación de Cuenta de Personal de Admisión], [3], [Sprint 2],
  [33], [US-32], [Personal de Admisión], [Inicio de Sesión del Personal de Admisión], [3], [Sprint 2],
  [34], [US-33], [Super Admin], [Configuración de la Duración de los Intervalos de Atención], [3], [Sprint 2],
  [35], [US-34], [Super Admin], [Edición de una Regla Operativa del Establecimiento], [5], [Sprint 2],
  [36], [US-35], [Super Admin], [Consulta de Reglas Operativas Vigentes], [2], [Sprint 2],
  [37], [US-36], [Personal de Admisión], [Selección de Especialidad en la Agenda Operativa], [2], [Sprint 2],
  [38], [US-37], [Personal de Admisión], [Consulta del Calendario Operativo], [3], [Sprint 2],
  [39], [US-38], [Personal de Admisión], [Consulta de Bloques del Día], [3], [Sprint 2],
  [40], [US-39], [Personal de Admisión], [Consulta del Detalle de un Bloque], [2], [Sprint 2],
  [41], [US-40], [Personal de Admisión], [Consulta de Horario por Profesional], [3], [Sprint 2],
  [42], [US-41], [Personal de Admisión], [Consulta de Pacientes con Reserva en un Bloque], [2], [Sprint 2],
  [43], [US-42], [Personal de Admisión], [Edición de un Bloque Horario], [5], [Sprint 2],
  [44], [US-43], [Personal de Admisión], [Registro de Llegada por Escaneo de QR], [8], [Sprint 2],
  [45], [US-44], [Personal de Admisión], [Registro de Llegada por Código Manual], [3], [Sprint 2],
  [46], [US-45], [Personal de Admisión], [Consulta de la Cola de Atención Presencial], [3], [Sprint 2],
  [47], [US-46], [Personal de Admisión], [Llamado del Siguiente Paciente], [5], [Sprint 2],
  [48], [US-47], [Personal de Admisión], [Inicio de Atención de un Paciente Llamado], [3], [Sprint 2],
  [49], [US-48], [Personal de Admisión], [Finalización de la Atención de un Paciente], [3], [Sprint 2],
  [50], [US-49], [Personal de Admisión], [Registro de Ausencia de un Paciente], [5], [Sprint 2],
  [51], [US-50], [Personal de Admisión], [Consulta de Citas Canceladas del Día], [2], [Sprint 2],
  [52], [US-51], [Personal de Admisión], [Visualización de Indicadores del Día], [5], [Sprint 2],
  [53], [US-52], [Personal de Admisión], [Visualización de Demanda por Especialidad], [3], [Sprint 2],
  [54], [US-53], [Personal de Admisión], [Exportación de Reporte Operativo], [5], [Sprint 2],
  [55], [TECH-01], [Developer], [Configuración de Infraestructura y Clientes para Notificaciones (Email, SMS y FCM)], [5], [Sprint 4],
  [56], [TECH-02], [Developer], [Desarrollo de Endpoints RESTful API con Especificación OpenAPI y Seguridad RBAC], [8], [Sprint 4],
  [57], [TECH-03], [Developer], [Desarrollo de Cron Jobs en Segundo Plano para Auditoría y Control de Ausencias], [5], [Sprint 4],
  [58], [TECH-04], [Developer], [Desarrollo de Consumidor Asíncrono de Eventos de Notificaciones de Citas], [5], [Sprint 4],
  [59], [TECH-05], [Developer], [Desarrollo del Endpoint API REST para Consulta y Validación de DNI Externa], [5], [Sprint 4],
  tline,
)

#metadata((src: "README.md", line: 2680))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2682))
\/s

#heading(level: 2)[2.5. Strategic-Level Domain-Driven Design] <sec:2-5-strategic-level-domain-driven-design>
#metadata((src: "README.md", line: 2683, kind: "heading", level: 2))

#heading(level: 3)[2.5.1. EventStorming] <sec:2-5-1-eventstorming>
#metadata((src: "README.md", line: 2685, kind: "heading", level: 3))

#metadata((src: "README.md", line: 2687))
Con el fin de plantear una aproximación del modelado de nivel general para el dominio del problema, se aplicó la técnica de EventStorming. Este proceso permitió al equipo comprender el flujo de eventos que ocurren dentro del dominio de la gestión de citas médicas en establecimientos públicos de salud, y definir las interacciones principales entre los actores, comandos y políticas del sistema #strong[SaludYa].

#metadata((src: "README.md", line: 2689))
La sesión se realizó con una duración aproximada de #strong[2 horas], con la participación de los cinco integrantes del equipo RuwaLabs, utilizando #strong[Miro] como tablero colaborativo.

#metadata((src: "README.md", line: 2691))
#strong[Pasos del proceso:]

#metadata((src: "README.md", line: 2693))
#strong[1. Identificación de los Domain Events:] En la primera fase, se identificaron los eventos clave que ocurren dentro del dominio (por ejemplo, "Appointment booked", "Slot released", "Check-in completed"). Estos se colocaron en secuencia sobre una línea de tiempo para visualizar el flujo del negocio. En esta fase se incorporaron los eventos #raw("Booking Order assigned"), #raw("Patient in attendance queue") y #raw("Patient called"), que reflejan la existencia de dos colas complementarias dentro del dominio: la #strong[cola por pedido de cita] (ordenada por #raw("Booking Order")) y la #strong[cola de asistencia] (ordenada por #raw("checkInTimestamp")).

#metadata((src: "README.md", line: 2698))
#strong[Figura 36]

#metadata((src: "README.md", line: 2700))
#emph[EventStorming - Domain Events]

#metadata((src: "README.md", line: 2702, kind: "figure", img: "assets/DomainEvents.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/DomainEvents.png", alt: "EventStorming - Domain Events", width: 90%)]]]

#metadata((src: "README.md", line: 2706))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2709))
#strong[2. Organización cronológica de los eventos:] Luego, los eventos fueron ordenados según el momento en que ocurren dentro del proceso real de atención, permitiendo entender la secuencia lógica de las operaciones desde la pre-atención hasta el cierre de la consulta. En esta línea de tiempo se distingue que el evento #raw("Booking Order assigned") ocurre inmediatamente después de #raw("Appointment booked"), mientras que #raw("Patient in attendance queue") y #raw("Patient called") ocurren después de #raw("Check-in completed"), evidenciando que ambas colas operan en momentos distintos del flujo, como se observa en la #link("#figura-36")[Figura 36].

#metadata((src: "README.md", line: 2710))
#pagebreak()

#metadata((src: "README.md", line: 2716))
#strong[Figura 37]

#metadata((src: "README.md", line: 2718))
#emph[EventStorming - Timeline]

#metadata((src: "README.md", line: 2720, kind: "figure", img: "assets/Timeline.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Timeline.png", alt: "EventStorming - Timeline", width: 90%)]]]

#metadata((src: "README.md", line: 2724))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2727))
#strong[3. Identificación de Pain Points y Pivotal Points:] En esta etapa se marcaron los #strong[pain points], es decir, las posibles dificultades o cuellos de botella del proceso actual, y los #strong[pivotal points], que representan los eventos más críticos o de cambio dentro del flujo. Se identificaron como puntos críticos la #strong[asignación del #raw("Booking Order")] (que determina la prioridad en la lista de espera) y el #strong[waitlist timeout] (que define el paso al siguiente paciente cuando nadie responde una propuesta de cupo liberado). Asimismo, se incorporaron como read models la #strong[attendance queue] y la #strong[waitlist], como se observa en la #link("#figura-37")[Figura 37].

#metadata((src: "README.md", line: 2732))
#strong[Figura 38]

#metadata((src: "README.md", line: 2734))
#emph[EventStorming - Pain Points y Pivotal Points]

#metadata((src: "README.md", line: 2736, kind: "figure", img: "assets/PaintPints-PivotalPoints.png"))
#align(center)[#block(breakable: false)[#fit-image("/assets/PaintPints-PivotalPoints.png", alt: "EventStorming - Pain Points y Pivotal Points", width: 85%)]]

#metadata((src: "README.md", line: 2740))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2743))
#strong[4. Incorporación de Commands, Policies y Read Models:] Finalmente, se agregaron los #strong[commands] (acciones que disparan eventos), las #strong[policies] (reglas de negocio que responden a eventos) y los #strong[read models] (consultas de información). Esto permitió obtener una visión más completa y técnica del dominio de SaludYa. En esta fase se incorporaron los commands #raw("Assign Booking Order"), #raw("Add to attendance queue") y #raw("Call next patient"); las policies #raw("When a slot is released, notify the patient with the lowest Booking Order"), #raw("When the timeout expires, move to the next patient in the list") y #raw("If cancelled within the allowed time, release the slot"); y los read models #raw("Attendance Queue") y #raw("Waitlist"), como se observa en la #link("#figura-38")[Figura 38] y la #link("#figura-39")[Figura 39].

#metadata((src: "README.md", line: 2748))
#strong[Figura 39]

#metadata((src: "README.md", line: 2750))
#emph[EventStorming - Commands, Policies y Read Models]

#metadata((src: "README.md", line: 2752, kind: "figure", img: "assets/Commands.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Commands.png", alt: "EventStorming - Commands, Policies y Read Models", width: 90%)]]]

#metadata((src: "README.md", line: 2756))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[2.5.1.1. Candidate Context Discovery] <sec:2-5-1-1-candidate-context-discovery>
#metadata((src: "README.md", line: 2759, kind: "heading", level: 4))

#metadata((src: "README.md", line: 2761))
A partir del modelado realizado en el EventStorming, se llevó a cabo una sesión de Candidate Context Discovery con el objetivo de identificar los bounded contexts dentro del dominio de SaludYa. Para ello, se aplicó la técnica #strong["look-for-pivotal-events"], que permitió detectar los eventos clave del negocio que marcan transiciones de estado y delimitan responsabilidades entre diferentes partes del proceso.

#metadata((src: "README.md", line: 2763))
Durante la sesión, se reorganizó la línea de tiempo del EventStorming para agrupar los elementos relacionados —eventos, comandos, políticas y read models— en torno a sus respectivos aggregates. Esto facilitó distinguir los límites naturales entre los contextos y definir con mayor claridad las interacciones entre ellos.

#metadata((src: "README.md", line: 2765))
Es importante precisar que #strong[#raw("Attendance Queue") no constituye un bounded context], sino un #strong[agregado dentro del bounded context #raw("Arrival & QR Check-in")]. Su responsabilidad se limita a ordenar la atención presencial del día según el timestamp de check-in, y su ciclo de vida es efímero (por día y por franja horaria). De manera análoga, #strong[#raw("Booking Order") no constituye un bounded context], sino un #strong[atributo de #raw("Appointment") dentro del bounded context #raw("Appointments & Booking")], cuyo propósito es determinar la prioridad de reasignación en la lista de espera dinámica. Un bounded context se justifica únicamente cuando existe lenguaje propio, reglas de negocio complejas y autonomía de modelo; ninguna de las dos colas cumple esas condiciones por separado.

#metadata((src: "README.md", line: 2767))
Como resultado del proceso, se identificaron #strong[cinco bounded contexts candidatos] para el dominio de SaludYa:

#metadata((src: "README.md", line: 2772))
#strong[Tabla 23]

#metadata((src: "README.md", line: 2774))
#emph[Candidate Context Discovery]

#metadata((src: "README.md", line: 2776, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([\#], [Bounded Context], [Propósito], [Eventos clave]),
  tline,
  [1], [#strong[Identity & Access Management]], [Gestionar el registro, autenticación y roles de pacientes y personal administrativo.], [Account created, Session started, Minor linked],
  [2], [#strong[Appointments & Booking]], [Gestionar la búsqueda de disponibilidad, reserva y cancelación de citas médicas. Incluye el atributo #raw("Booking Order"), que asigna un número secuencial a cada cita reservada.], [Appointment requested, Slot verified, Appointment booked, Booking Order assigned, Appointment cancelled],
  [3], [#strong[Dynamic Waitlist & Reassignment]], [Gestionar la lista de espera dinámica y la reasignación de cupos liberados, ofreciendo las propuestas en orden de #raw("Booking Order").], [Slot released, Appointment reassigned, Reassignment expired],
  [4], [#strong[Arrival & QR Check-in]], [Validar la presencia presencial del paciente, emitir el ticket digital de atención y gestionar la #raw("Attendance Queue").], [Check-in completed, Patient in attendance queue, Patient called, Ticket issued, Patient absent],
  [5], [#strong[Hospital Operations & Configuration]], [Configurar parámetros operativos del establecimiento y monitorear la operación diaria.], [Rules updated, Report generated],
  tline,
)

#metadata((src: "README.md", line: 2785))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2788))
A continuación se detalla, para cada bounded context, los elementos incorporados en la sesión de Candidate Context Discovery, como se detalla en la #link("#tabla-23")[Tabla 23]:

#metadata((src: "README.md", line: 2790))
- #strong[#raw("Appointments & Booking"):] se incorpora el atributo #raw("Booking Order") y la regla de negocio #emph["Every booked appointment has a unique Booking Order per specialty, date and facility"].
- #strong[#raw("Dynamic Waitlist & Reassignment"):] se incorporan los conceptos #raw("Waitlist Entry") (entrada ordenada por #raw("Booking Order")), #raw("Cascade Reassignment") (reasignación en cascada si nadie acepta) y #raw("Waitlist Response Timeout") (tiempo máximo para aceptar o rechazar). La policy de reasignación se define como #emph["Reassignment by Booking Order"].
- #strong[#raw("Arrival & QR Check-in"):] se incorporan los conceptos #raw("Attendance Queue") (cola virtual ordenada por #raw("checkInTimestamp")) y #raw("Queue Entry") (entrada individual en la cola de asistencia). La policy asociada se define como #emph["Attendance Queue sorted by checkInTimestamp"].
- #strong[#raw("Hospital Operations & Configuration"):] se incorpora el parámetro #raw("waitlistResponseTimeout") (y opcionalmente #raw("cascadeWaitlistEnabled") y #raw("maxCapacityPerSlot")) como parte de las reglas operativas configurables por el establecimiento.

#metadata((src: "README.md", line: 2796))
La identificación de bounded contexts delimita las responsabilidades de identidad, reservas, reasignación, llegada y configuración operativa dentro del dominio de SaludYa, como se observa en la #link("#figura-40")[Figura 40].

#metadata((src: "README.md", line: 2800))
#strong[Figura 40]

#metadata((src: "README.md", line: 2802))
#emph[Candidate Context Discovery - Bounded Contexts identificados]

#metadata((src: "README.md", line: 2804, kind: "figure", img: "assets/CandidateContextDiscovery.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/CandidateContextDiscovery.png", alt: "Candidate Context Discovery - Bounded Contexts identificados", width: 95%)]]]

#metadata((src: "README.md", line: 2808))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[2.5.1.2. Domain Message Flows Modeling] <sec:2-5-1-2-domain-message-flows-modeling>
#metadata((src: "README.md", line: 2811, kind: "heading", level: 4))

#metadata((src: "README.md", line: 2813))
En esta sección se presentan los principales flujos de colaboración entre los bounded contexts, modelados con la técnica de #strong[Domain Message Flow Modelling] propuesta por ddd-crew. Cada diagrama muestra los comandos, eventos y queries que fluyen entre actores, bounded contexts y sistemas para un escenario específico, incluyendo el nombre del mensaje, su orden y los datos que transporta.

#metadata((src: "README.md", line: 2815))
Los flujos reflejan las dos colas complementarias del dominio: la #strong[cola por pedido de cita] (ordenada por #raw("bookingOrder")) y la #strong[cola de asistencia] (ordenada por #raw("checkInTimestamp")).

#metadata((src: "README.md", line: 2816))
#pagebreak()

#metadata((src: "README.md", line: 2817))
#strong[Flow 1: Registro y autenticación de paciente]

#metadata((src: "README.md", line: 2819, kind: "figure", img: "assets/flow-01-registration.png"))
#figure(
  fit-image("/assets/flow-01-registration.png", width: 100%),
  caption: [Flow 1],
)

#metadata((src: "README.md", line: 2821))
El paciente ejecuta #raw("RegisterPatient"); #strong[Identity & Access Management] valida la identidad con #raw("ValidateIdentity") contra #strong[ApiPeru.dev] (ACL hacia RENIEC) y responde con #raw("IdentityVerified") → #raw("AccountCreated"). Luego #raw("Login") → #raw("SessionStarted"), y #raw("LinkMinor") → #raw("MinorLinked").

#metadata((src: "README.md", line: 2822))
#pagebreak()

#metadata((src: "README.md", line: 2823))
#strong[Flow 2: Reserva de cita médica para el titular]

#metadata((src: "README.md", line: 2825, kind: "figure", img: "assets/flow-02-booking-titular.png"))
#figure(
  fit-image("/assets/flow-02-booking-titular.png", width: 100%),
  caption: [Flow 2],
)

#metadata((src: "README.md", line: 2827))
El paciente ejecuta #raw("BookAppointment"); #strong[Appointments & Booking] valida con #raw("VerifySlotAvailability") → #raw("SlotAvailable"), asigna el #raw("AssignBookingOrder") y emite #raw("AppointmentBooked"). Finalmente notifica al paciente vía #raw("SendConfirmationEmail") → #raw("EmailSent").

#metadata((src: "README.md", line: 2828))
#pagebreak()

#metadata((src: "README.md", line: 2829))
#strong[Flow 3: Reserva de cita médica para un menor a cargo]

#metadata((src: "README.md", line: 2831, kind: "figure", img: "assets/flow-03-booking-menor.png"))
#figure(
  fit-image("/assets/flow-03-booking-menor.png", width: 100%),
  caption: [Flow 3],
)

#metadata((src: "README.md", line: 2833))
El titular ejecuta #raw("GetLinkedMinors") (IAM) → #raw("MinorRetrieved"), y luego #raw("BookAppointmentForMinor") con el #raw("minorId"). #strong[Appointments & Booking] valida con #raw("VerifySlotAvailability") → #raw("SlotAvailable"), asigna el #raw("bookingOrder") y emite #raw("AppointmentBooked"), notificando al tutor.

#metadata((src: "README.md", line: 2835))
#pagebreak()

#metadata((src: "README.md", line: 2837))
#strong[Flow 4: Check-in presencial mediante código QR]

#metadata((src: "README.md", line: 2840, kind: "figure", img: "assets/flow-04-checkin-qr.png"))
#figure(
  fit-image("/assets/flow-04-checkin-qr.png", width: 100%),
  caption: [Flow 4],
)

#metadata((src: "README.md", line: 2842))
El paciente ejecuta #raw("ScanQRCode"); #strong[Arrival & QR Check-in] valida con #raw("ValidateQRTolerance") → #raw("ToleranceValid"), crea la entrada con #raw("CreateQueueEntry"), calcula la posición (#raw("PositionCalculated")) y emite #raw("CheckInCompleted") y #raw("TicketIssued").

#metadata((src: "README.md", line: 2843))
#pagebreak()

#metadata((src: "README.md", line: 2844))
#strong[Flow 5: Cancelación de cita y liberación de cupo]

#metadata((src: "README.md", line: 2846, kind: "figure", img: "assets/flow-05-cancelacion.png"))
#figure(
  fit-image("/assets/flow-05-cancelacion.png", width: 100%),
  caption: [Flow 5],
)

#metadata((src: "README.md", line: 2848))
El paciente ejecuta #raw("CancelAppointment"); #strong[Appointments & Booking] valida con #raw("VerifyCancellationDeadline") → #raw("DeadlineValid"), ejecuta #raw("ReleaseSlot") y emite #raw("AppointmentCancelled").

#metadata((src: "README.md", line: 2850))
#quote(block: true)[
  #metadata((src: "README.md", line: 2850))
  #strong[Nota:] la cancelación #strong[no dispara reasignación]. Solo la ausencia presencial lo hace (ver Flow 6).
]

#metadata((src: "README.md", line: 2852))
#strong[Flow 6a: Declaración de ausencia]

#metadata((src: "README.md", line: 2856))
El personal de admisión ejecuta #raw("CallPatient"); #strong[Arrival & QR Check-in] valida con #raw("VerifyPostCallTolerance") → #raw("ToleranceExpired"), y emite #raw("PatientAbsentEvent") hacia #strong[Reassignment].

#metadata((src: "README.md", line: 2858))
#strong[Flow 6b: Reasignación en cadena]

#metadata((src: "README.md", line: 2862))
#strong[Reassignment] ejecuta #raw("FindNextCandidate") en #strong[Appointments & Booking] → #raw("CandidateFound"), envía #raw("ReassignmentOfferSent") al paciente, quien responde con #raw("ReassignmentOfferAccepted"). #strong[Reassignment] ejecuta #raw("ReassignAppointment") y #raw("ReleaseOriginalSlot") para liberar el slot del candidato y re-ofrecerlo al siguiente (cadena). Si el candidato acepta y no llega, se emite #raw("ReassignmentOfferNoShow").

#metadata((src: "README.md", line: 2864))
#pagebreak()

#metadata((src: "README.md", line: 2867))
#strong[Flow 7: Configuración operativa del establecimiento]

#metadata((src: "README.md", line: 2869, kind: "figure", img: "assets/flow-07-configuracion.png"))
#figure(
  fit-image("/assets/flow-07-configuracion.png", width: 100%),
  caption: [Flow 7],
)

#metadata((src: "README.md", line: 2871))
El Super Admin ejecuta #raw("UpdateConfiguration"); #strong[Hospital Operations & Configuration] valida con #raw("ValidateParameters") → #raw("ParametersValid"), aplica con #raw("ApplyConfiguration") y emite #raw("ConfigurationUpdated"). Finalmente, #raw("GetDashboard") → #raw("DashboardRetrieved").

#metadata((src: "README.md", line: 2873))
En conjunto, los flujos evidencian que la #strong[cola por pedido de cita] se gestiona como atributo dentro de #raw("Appointments & Booking") y se consume desde #raw("Reassignment") para priorizar la reasignación, mientras que la #strong[cola de asistencia] se gestiona como agregado dentro de #raw("Arrival & QR Check-in") para ordenar el llamado a consultorio.

#heading(level: 4)[2.5.1.3. Bounded Context Canvases] <sec:2-5-1-3-bounded-context-canvases>
#metadata((src: "README.md", line: 2876, kind: "heading", level: 4))

#metadata((src: "README.md", line: 2878))
Para la presente sección, elaboramos el Bounded Context Canvas de cada uno de los Bounded Context candidatos que identificamos. Aplicamos el modelo #strong[versión 5] propuesto por el Domain Driven Design Group, que permite documentar cada contexto desde una perspectiva estratégica y táctica, cubriendo el propósito, la clasificación estratégica, las comunicaciones de entrada y salida, el lenguaje ubicuo, las decisiones de negocio, los supuestos, las métricas de verificación y las preguntas abiertas.

#metadata((src: "README.md", line: 2880))
En cada uno de los canvases registramos las secciones específicas como el #strong[Context Overview Definition], #strong[Business Rules Distillation] y el #strong[Ubiquitous Language], identificando claramente el tipo de Bounded Context y sus interacciones de entrada y salida con otros contextos. El resultado se presenta a continuación para cada uno de los cinco bounded contexts identificados en la sección 2.5.1.1.

#metadata((src: "README.md", line: 2882))
#strong[Bounded Context Canvas – Identity & Access Management]

#metadata((src: "README.md", line: 2884))
El bounded context #strong[Identity & Access Management] gestiona el registro, autenticación, vinculación de menores y gestión de roles de los usuarios en SaludYa. Se clasifica como #emph[Generic] con rol #emph[Execution Context], e interactúa principalmente con #raw("Patient"), #raw("Super Admin") y el servicio externo #strong[ApiPeru.dev] (Anticorruption Layer hacia RENIEC) para la validación de identidad.

#metadata((src: "README.md", line: 2886, kind: "figure", img: "assets/bounded-context-canvas-01-iam.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/bounded-context-canvas-01-iam.png", alt: "Bounded Context Canvas – Identity &amp; Access Management", width: 75%)]]

#metadata((src: "README.md", line: 2890))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2892))
#strong[Bounded Context Canvas – Appointments & Booking]

#metadata((src: "README.md", line: 2894))
El bounded context #strong[Appointments & Booking] gestiona la búsqueda de disponibilidad, reserva y cancelación de citas médicas. Se clasifica como #emph[Core] con rol #emph[Execution Context], e incorpora el atributo #raw("Booking Order"), que asigna un número secuencial a cada cita reservada y determina la prioridad en la cola de reserva consumida por #raw("Reassignment").

#metadata((src: "README.md", line: 2896, kind: "figure", img: "assets/bounded-context-canvas-02-appointments.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/bounded-context-canvas-02-appointments.png", alt: "Bounded Context Canvas – Appointments &amp; Booking", width: 75%)]]

#metadata((src: "README.md", line: 2900))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2901))
#pagebreak()

#metadata((src: "README.md", line: 2903))
#strong[Bounded Context Canvas – Reassignment]

#metadata((src: "README.md", line: 2905))
El bounded context #strong[Reassignment] gestiona la cola de reserva del sistema y reasigna los cupos liberados por #strong[ausencias], notificando oportunidades de adelanto a los pacientes. Se clasifica como #emph[Core] con rol #emph[Execution Context], y aplica una #strong[cadena de reasignación] en la que el candidato que acepta libera su slot original, el cual se re-ofrece al siguiente paciente de la cola.

#metadata((src: "README.md", line: 2907, kind: "figure", img: "assets/bounded-context-canvas-03-reassignment.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/bounded-context-canvas-03-reassignment.png", alt: "Bounded Context Canvas – Reassignment", width: 75%)]]

#metadata((src: "README.md", line: 2911))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2913))
#strong[Bounded Context Canvas – Arrival & QR Check-in]

#metadata((src: "README.md", line: 2915))
El bounded context #strong[Arrival & QR Check-in] valida la presencia presencial del paciente mediante el escaneo de un código QR, gestiona la #raw("Attendance Queue") (cola virtual ordenada por #raw("checkInTimestamp")), emite el ticket digital y declara la ausencia del paciente cuando excede la tolerancia configurada. Se clasifica como #emph[Core] con rol #emph[Execution Context].

#metadata((src: "README.md", line: 2917, kind: "figure", img: "assets/bounded-context-canvas-04-arrival.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/bounded-context-canvas-04-arrival.png", alt: "Bounded Context Canvas – Arrival &amp; QR Check-in", width: 75%)]]

#metadata((src: "README.md", line: 2921))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2923))
#strong[Bounded Context Canvas – Hospital Operations & Configuration]

#metadata((src: "README.md", line: 2925))
El bounded context #strong[Hospital Operations & Configuration] configura los parámetros operativos de cada establecimiento de salud (intervalos de atención, tolerancias, plazos de cancelación, #raw("reassignmentResponseTimeoutMin"), #raw("maxCapacityPerSlot")) y proporciona dashboards y reportes para monitorear la operación diaria, el ausentismo y la demanda. Se clasifica como #emph[Supporting] con rol #emph[Execution Context].

#metadata((src: "README.md", line: 2927, kind: "figure", img: "assets/bounded-context-canvas-05-hospital-ops.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/bounded-context-canvas-05-hospital-ops.png", alt: "Bounded Context Canvas – Hospital Operations &amp; Configuration", width: 75%)]]

#metadata((src: "README.md", line: 2931))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2933))
Los canvases presentados permiten visualizar de forma estructurada las responsabilidades, reglas de negocio, lenguaje común y métricas de verificación de cada bounded context, asegurando un entendimiento compartido entre los miembros del equipo y facilitando la comunicación con los stakeholders del dominio de SaludYa. Asimismo, se evidencia que las dos colas complementarias del dominio quedan correctamente ubicadas: la #strong[cola por pedido de cita] como atributo (#raw("Booking Order")) dentro de #raw("Appointments & Booking"), y la #strong[cola de asistencia] como agregado (#raw("Attendance Queue")) dentro de #raw("Arrival & QR Check-in"). Esta separación permite que cada contexto mantenga su propio lenguaje ubicuo y sus reglas de negocio sin acoplarse innecesariamente al resto del sistema.

#heading(level: 3)[2.5.2. Context Mapping] <sec:2-5-2-context-mapping>
#metadata((src: "README.md", line: 2936, kind: "heading", level: 3))

#metadata((src: "README.md", line: 2938))
El proceso de Context Mapping nos permitió analizar y definir las relaciones estructurales y los patrones de integración entre los bounded contexts del sistema SaludYa. Este análisis fue clave para garantizar una comunicación clara, minimizar dependencias innecesarias y mantener una alta cohesión interna dentro de cada contexto.

#metadata((src: "README.md", line: 2940))
#strong[Análisis del proceso]

#metadata((src: "README.md", line: 2942))
Durante la elaboración de los context maps, el equipo se planteó las siguientes preguntas para refinar los límites y relaciones entre los bounded contexts:

#metadata((src: "README.md", line: 2944))
- #strong[¿Qué pasaría si movemos ciertas capacidades del Identity & Access Management al Appointments & Booking?]
  Se descartó esta opción, ya que se perdería la independencia del módulo de autenticación y se generaría una sobrecarga innecesaria en el proceso de reserva. La autenticación debe ser un servicio transversal consumido por el resto de contextos.
- #strong[¿Qué pasaría si descomponemos el Appointments & Booking en subcontextos separados para reservas y cancelaciones?]
  Se concluyó que no era necesario, ya que ambos flujos comparten las mismas reglas de negocio, aggregates y políticas de agenda. Descomponerlo generaría duplicidad y aumentaría la complejidad de coordinación.
- #strong[¿Qué pasaría si el Arrival & QR Check-in dependiera directamente del Appointments & Booking?]
  Se determinó mantener la dependencia mediante #strong[eventos de dominio] (#raw("Cita reservada"), #raw("Cita cancelada")) para evitar acoplamientos fuertes y permitir que el check-in funcione de manera desacoplada.
- #strong[¿Qué pasaría si creamos un servicio compartido para la gestión de notificaciones?]
  Se decidió implementar una comunicación #strong[event-driven] con un #strong[Shared Kernel] (plantillas, canales y prioridades compartidas), dado que varios contextos requieren enviar mensajes al usuario final: Identity & Access Management (confirmaciones de cuenta), Appointments & Booking (confirmación de reservas), Reassignment (propuestas de adelanto) y Arrival & QR Check-in (ticket emitido).
- #strong[¿Qué pasaría si aislamos el core de reservas y movemos la configuración a un contexto aparte?]
  Se confirmó la separación actual: #strong[Hospital Operations & Configuration] funciona como contexto de soporte que parametriza el comportamiento de los contextos core sin acoplarse a su lógica interna.

#metadata((src: "README.md", line: 2964))
#strong[Patrones de integración aplicados]

#metadata((src: "README.md", line: 2966))
A partir del análisis, se definieron los siguientes patrones de relación entre los bounded contexts de SaludYa, como se detalla en la #link("#tabla-24")[Tabla 24]:

#metadata((src: "README.md", line: 2971))
#strong[Tabla 24]

#metadata((src: "README.md", line: 2973))
#emph[Context Mapping: patrones y relaciones entre contextos]

#metadata((src: "README.md", line: 2975, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Bounded Context origen], [Bounded Context destino], [Patrón], [Justificación]),
  tline,
  [Identity & Access Management], [RENIEC API (externo)], [#strong[ACL]], [Se traduce el modelo externo de RENIEC al modelo interno de identidad.],
  [Identity & Access Management], [Appointments & Booking], [#strong[Shared Kernel]], [Comparten el modelo de identidad y sesión activa del paciente.],
  [Identity & Access Management], [Arrival & QR Check-in], [#strong[Shared Kernel]], [Comparten la validación de sesión para el check-in.],
  [Identity & Access Management], [Hospital Operations & Configuration], [#strong[Shared Kernel]], [Comparten el modelo de roles para autorizar al Super Admin.],
  [Arrival & QR Check-in], [Reassignment], [#strong[Customer\/Supplier]], [Check-in publica el evento de ausencia (#raw("PatientAbsentEvent")) que Reassignment consume.],
  [Hospital Operations & Configuration], [Appointments & Booking], [#strong[Conformist]], [Booking adopta el modelo de parámetros operativos sin traducirlo.],
  [Hospital Operations & Configuration], [Arrival & QR Check-in], [#strong[Conformist]], [Check-in adopta el modelo de tolerancias sin traducirlo.],
  tline,
)

#metadata((src: "README.md", line: 2986))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 2989))
#strong[Mensajes intercambiados entre bounded contexts]

#metadata((src: "README.md", line: 2991))
A continuación se detallan los mensajes que se intercambian entre los bounded contexts, reflejando la existencia de las dos colas complementarias del dominio, como se detalla en la #link("#tabla-25")[Tabla 25]:

#metadata((src: "README.md", line: 2996))
#strong[Tabla 25]

#metadata((src: "README.md", line: 2998))
#emph[Context Mapping: mensajes entre contextos]

#metadata((src: "README.md", line: 3000, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Mensaje], [Bounded Context origen], [Bounded Context destino], [Contenido]),
  tline,
  [#raw("AppointmentBooked")], [Appointments & Booking], [Arrival & QR Check-in], [Incluye #raw("bookingOrder") de la cita reservada.],
  [#raw("PatientAbsentEvent")], [Arrival & QR Check-in], [Reassignment], [Evento de ausencia presencial que dispara la reasignación.],
  [#raw("CheckInCompleted")], [Arrival & QR Check-in], [Appointments & Booking, Patient], [Incluye #raw("attendanceQueueId") y #raw("position") del paciente en la cola de asistencia.],
  [#raw("ReassignmentOfferSent")], [Reassignment], [Patient], [Propuesta de cupo liberado enviada al paciente con menor #raw("bookingOrder").],
  [#raw("ReassignmentOfferAccepted")], [Reassignment], [Appointments & Booking, Patient], [Confirmación de aceptación del cupo liberado (mueve la cita y libera el slot original).],
  [#raw("ReassignmentOfferRejected")], [Reassignment], [Patient], [Rechazo del cupo liberado; se ofrece al siguiente candidato.],
  [#raw("ReassignmentOfferExpired")], [Reassignment], [Patient], [Expiración de la ventana única sin respuesta del paciente.],
  [#raw("ReassignmentOfferAttended")], [Reassignment], [Appointments & Booking], [El candidato aceptó y llegó; cierra la oferta.],
  [#raw("ReassignmentOfferNoShow")], [Reassignment], [Appointments & Booking], [El candidato aceptó y no llegó; marca su cita como ausente.],
  tline,
)

#metadata((src: "README.md", line: 3013))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3016))
#strong[Leyenda de patrones:]

#metadata((src: "README.md", line: 3018))
- #strong[ACL (Anticorruption Layer):] Capa de traducción entre el modelo externo y el modelo interno.
- #strong[SK (Shared Kernel):] Modelo compartido entre dos o más contextos.
- #strong[CF (Conformist):] Un contexto adopta el modelo de otro sin traducirlo.
- #strong[C\/S (Customer\/Supplier):] Relación donde el supplier publica y el customer consume.

#metadata((src: "README.md", line: 3024))
El mapa de contextos relaciona las áreas del dominio y sus dependencias para explicar cómo colaboran los componentes de SaludYa, como se observa en la #link("#figura-41")[Figura 41].

#metadata((src: "README.md", line: 3028))
#strong[Figura 41]

#metadata((src: "README.md", line: 3030))
#emph[Mapa de relaciones entre bounded contexts de SaludYa]

#metadata((src: "README.md", line: 3032, kind: "figure", img: "assets/ContextMapping.png"))
#figure(
  fit-image("/assets/ContextMapping.png", width: 100%),
  caption: [Context Map],
)

#metadata((src: "README.md", line: 3034))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 3)[2.5.3. Software Architecture] <sec:2-5-3-software-architecture>
#metadata((src: "README.md", line: 3037, kind: "heading", level: 3))

#heading(level: 4)[2.5.3.1. Software Architecture Context Level Diagrams] <sec:2-5-3-1-software-architecture-context-level-diagrams>
#metadata((src: "README.md", line: 3039, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3041))
En el Software Architecture Context Diagram se pueden apreciar los componentes más importantes que interactúan con el sistema SaludYa, así como los usuarios principales y las funciones que desempeñan dentro del ecosistema de gestión de citas médicas en establecimientos públicos de salud.

#metadata((src: "README.md", line: 3043))
El sistema SaludYa interactúa con tres tipos de usuarios principales: los #strong[pacientes] que reservan y gestionan citas médicas, el #strong[personal de admisión] que controla el flujo de atención en el establecimiento, y el #strong[Super Admin] que configura los parámetros operativos del sistema. Asimismo, el sistema se integra con cuatro servicios externos: #strong[RENIEC API] para la validación de identidad por DNI, #strong[Firebase Cloud Messaging] para el envío de notificaciones push, un #strong[Servicio de Correo] para notificaciones transaccionales, y una #strong[Pasarela SMS] para el envío de mensajes de texto, como se observa en la #link("#figura-42")[Figura 42].

#metadata((src: "README.md", line: 3045))
#pagebreak()

#metadata((src: "README.md", line: 3049))
#strong[Figura 42]

#metadata((src: "README.md", line: 3051))
#emph[Diagrama C4 de contexto de SaludYa]

#metadata((src: "README.md", line: 3053, kind: "figure", img: "assets/ContextDiagram.png"))
#figure(
  fit-image("/assets/ContextDiagram.png", width: 100%),
  caption: [ContextSys],
)

#metadata((src: "README.md", line: 3055))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[2.5.3.2. Software Architecture Container Level Diagrams] <sec:2-5-3-2-software-architecture-container-level-diagrams>
#metadata((src: "README.md", line: 3058, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3060))
En el Software Architecture Container Diagram se detalla la estructura interna del sistema SaludYa, mostrando los contenedores principales que lo componen y cómo se comunican entre sí. Este nivel de abstracción permite visualizar las decisiones tecnológicas y la distribución de responsabilidades dentro del sistema.

#metadata((src: "README.md", line: 3062))
El sistema SaludYa está compuesto por dos aplicaciones móviles (una para pacientes y otra para el personal de admisión), un API Gateway que centraliza las peticiones, un Backend API que orquesta la lógica de negocio de los bounded contexts, una base de datos PostgreSQL para la persistencia, un Message Broker RabbitMQ para la comunicación asíncrona entre contextos, y un worker de Cron Jobs que ejecuta tareas programadas como la expiración de tolerancias, la reasignación de cupos y la expiración de propuestas de la cola de reserva.

#metadata((src: "README.md", line: 3064))
El Backend API orquesta internamente la lógica de los cinco bounded contexts del sistema, incluyendo la gestión de la cola de asistencia ordenada por #raw("checkInTimestamp") y la cola de reserva ordenada por #raw("bookingOrder"). La base de datos PostgreSQL incorpora las tablas #raw("attendance_queue_entries") y #raw("reassignment_offers"), y la tabla #raw("appointments") incluye el campo #raw("booking_order") que determina la prioridad de reasignación.

#metadata((src: "README.md", line: 3066))
El Backend API se integra con cuatro servicios externos: #strong[RENIEC API] para la validación de identidad por DNI, #strong[Firebase Cloud Messaging] para el envío de notificaciones push, un #strong[Servicio de Correo] para notificaciones transaccionales, y una #strong[Pasarela SMS] para el envío de mensajes de texto a los pacientes que no cuentan con smartphone, como se observa en la #link("#figura-43")[Figura 43].

#metadata((src: "README.md", line: 3071))
#strong[Figura 43]

#metadata((src: "README.md", line: 3073))
#emph[Diagrama C4 de contenedores de SaludYa]

#metadata((src: "README.md", line: 3075, kind: "figure", img: "assets/ContainerDiagram.png"))
#figure(
  fit-image("/assets/ContainerDiagram.png", width: 100%),
  caption: [ContainerSys],
)

#metadata((src: "README.md", line: 3077))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[2.5.3.3. Software Architecture Deployment Diagrams] <sec:2-5-3-3-software-architecture-deployment-diagrams>
#metadata((src: "README.md", line: 3080, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3082))
En el Software Architecture Deployment Diagram se muestra la distribución física de los contenedores del sistema SaludYa sobre la infraestructura tecnológica que los aloja. Este diagrama permite visualizar cómo se despliegan las aplicaciones móviles, los servicios del backend y los componentes de infraestructura en los diferentes nodos del sistema.

#metadata((src: "README.md", line: 3084))
El despliegue de SaludYa se distribuye en tres entornos principales. En primer lugar, las #strong[aplicaciones móviles] se ejecutan directamente en los dispositivos de los usuarios: la app del paciente en smartphones Android\/iOS, y la app del personal de admisión en smartphones o tablets del establecimiento. En segundo lugar, el #strong[backend del sistema] se despliega en una infraestructura cloud (AWS o GCP) compuesta por un servidor de aplicaciones con contenedores Docker que alojan el API Gateway, el Backend API y los Cron Jobs y un servidor de base de datos PostgreSQL. Finalmente, el sistema se integra con #strong[servicios externos] como RENIEC API para la validación de identidad, Firebase Cloud Messaging para notificaciones push, el servicio de correo SMTP para notificaciones transaccionales, y una pasarela SMS.

#metadata((src: "README.md", line: 3086))
Esta arquitectura de despliegue permite escalar horizontalmente los servicios del backend según la demanda, mantener la comunicación asíncrona entre bounded contexts mediante el message broker, y garantizar la disponibilidad de los servicios críticos mediante la infraestructura cloud, como se observa en la #link("#figura-44")[Figura 44].

#metadata((src: "README.md", line: 3091))
#strong[Figura 44]

#metadata((src: "README.md", line: 3093))
#emph[Diagrama C4 de despliegue de SaludYa]

#metadata((src: "README.md", line: 3095, kind: "figure", img: "assets/DeploymentDiagram.png"))
#figure(
  fit-image("/assets/DeploymentDiagram.png", width: 100%),
  caption: [DeploymentSys],
)

#metadata((src: "README.md", line: 3097))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 2)[2.6. Tactical-Level Domain-Driven Design] <sec:2-6-tactical-level-domain-driven-design>
#metadata((src: "README.md", line: 3100, kind: "heading", level: 2))

#heading(level: 3)[2.6.1. Bounded Context: Identity & Access Management] <sec:2-6-1-bounded-context-identity-access-management>
#metadata((src: "README.md", line: 3102, kind: "heading", level: 3))

#metadata((src: "README.md", line: 3104))
El #strong[bounded context de Identity & Access Management] gestiona el registro, autenticación, vinculación de menores y gestión de roles de los usuarios en SaludYa. Permite validar la identidad de los pacientes y del personal administrativo antes de acceder a los módulos principales del sistema.

#heading(level: 4)[2.6.1.1. Domain Layer] <sec:2-6-1-1-domain-layer>
#metadata((src: "README.md", line: 3106, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3108))
La capa de #strong[Domain] representa el núcleo del negocio de identidad. Aquí se definen las entidades, value objects, enums, aggregates, factories e interfaces que encapsulan las reglas de negocio.

#heading(level: 5)[UserAccount (Aggregate Root)] <sec:useraccount-aggregate-root>
#metadata((src: "README.md", line: 3110, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3112))
#strong[Atributos:]
#raw("id"), #raw("email: Email"), #raw("password: PasswordHash"), #raw("role: Role"), #raw("isActive"), #raw("createdAt")

#metadata((src: "README.md", line: 3115))
#strong[Métodos:]

#metadata((src: "README.md", line: 3116))
- #raw("validatePassword(password)") → verifica si la contraseña ingresada coincide con la almacenada.
- #raw("assignRole(role)") → asigna un rol al usuario.
- #raw("activate()") \/ #raw("deactivate()") → controlan si el usuario puede iniciar sesión.

#metadata((src: "README.md", line: 3120))
#strong[Propósito:]
Representa la cuenta de acceso al sistema. Es aggregate root porque agrupa la lógica de autenticación y estado del usuario.

#metadata((src: "README.md", line: 3123))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Patient (Aggregate Root)] <sec:patient-aggregate-root>
#metadata((src: "README.md", line: 3125, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3127))
#strong[Atributos:]
#raw("id"), #raw("idUser"), #raw("dni: Dni"), #raw("name"), #raw("lastname"), #raw("birthDate"), #raw("phone")

#metadata((src: "README.md", line: 3130))
#strong[Métodos:]

#metadata((src: "README.md", line: 3131))
- #raw("updateContactInfo(phone, email)") → actualiza los datos de contacto.
- #raw("isMinor()") → retorna #raw("true") si el paciente es menor de edad.

#metadata((src: "README.md", line: 3134))
#strong[Propósito:]
Representa el perfil del paciente. Es aggregate root porque agrupa la información personal del paciente.

#metadata((src: "README.md", line: 3137))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientMinor (Entity)] <sec:patientminor-entity>
#metadata((src: "README.md", line: 3139, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3141))
#strong[Atributos:]
#raw("id"), #raw("idPatient"), #raw("idTutor")

#metadata((src: "README.md", line: 3144))
#strong[Métodos:]

#metadata((src: "README.md", line: 3145))
- #raw("validateTutor(tutorId)") → valida que el tutor sea un adulto responsable registrado.

#metadata((src: "README.md", line: 3147))
#strong[Propósito:]
Vincula a un menor de edad con un adulto responsable (tutor).

#metadata((src: "README.md", line: 3150))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Email (Value Object)] <sec:email-value-object>
#metadata((src: "README.md", line: 3152, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3154))
#strong[Atributos:]
#raw("value")

#metadata((src: "README.md", line: 3157))
#strong[Métodos:]

#metadata((src: "README.md", line: 3158))
- #raw("isValid()") → valida el formato del correo.

#metadata((src: "README.md", line: 3160))
#strong[Propósito:]
Encapsula el correo electrónico como value object inmutable.

#metadata((src: "README.md", line: 3163))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Dni (Value Object)] <sec:dni-value-object>
#metadata((src: "README.md", line: 3165, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3167))
#strong[Atributos:]
#raw("value")

#metadata((src: "README.md", line: 3170))
#strong[Métodos:]

#metadata((src: "README.md", line: 3171))
- #raw("isValid()") → valida que el DNI tenga 8 dígitos.

#metadata((src: "README.md", line: 3173))
#strong[Propósito:]
Encapsula el DNI como value object inmutable.

#metadata((src: "README.md", line: 3176))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PasswordHash (Value Object)] <sec:passwordhash-value-object>
#metadata((src: "README.md", line: 3178, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3180))
#strong[Atributos:]
#raw("value")

#metadata((src: "README.md", line: 3183))
#strong[Propósito:]
Encapsula el hash de la contraseña como value object inmutable.

#metadata((src: "README.md", line: 3186))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Role (Enum)] <sec:role-enum>
#metadata((src: "README.md", line: 3188, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3190))
#strong[Valores posibles:]
#raw("PATIENT"), #raw("ADMISSION_STAFF"), #raw("SUPER_ADMIN")

#metadata((src: "README.md", line: 3193))
#strong[Propósito:]
Define los tipos de usuario del sistema.

#metadata((src: "README.md", line: 3196))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[UserAccountFactory (Factory)] <sec:useraccountfactory-factory>
#metadata((src: "README.md", line: 3198, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3200))
#strong[Métodos:]

#metadata((src: "README.md", line: 3201))
- #raw("createPatientAccount(email, password, dni, name, lastname, birthDate, phone): UserAccount")
- #raw("createStaffAccount(email, password, dni, name, lastname): UserAccount")

#metadata((src: "README.md", line: 3204))
#strong[Propósito:]
Encapsula la creación de cuentas de usuario, validando los datos y asignando el rol correspondiente.

#metadata((src: "README.md", line: 3207))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[UserAccountRepository (Interface)] <sec:useraccountrepository-interface>
#metadata((src: "README.md", line: 3209, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3211))
#strong[Métodos:]

#metadata((src: "README.md", line: 3212))
- #raw("save(userAccount: UserAccount): UserAccount")
- #raw("findById(id: Int): UserAccount?")
- #raw("findByEmail(email: String): UserAccount?")
- #raw("updateStatus(id: Int, isActive: Boolean)")

#metadata((src: "README.md", line: 3217))
#strong[Propósito:]
Define las operaciones de persistencia para cuentas de usuario.

#metadata((src: "README.md", line: 3220))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientRepository (Interface)] <sec:patientrepository-interface>
#metadata((src: "README.md", line: 3222, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3224))
#strong[Métodos:]

#metadata((src: "README.md", line: 3225))
- #raw("save(patient: Patient): Patient")
- #raw("findById(id: Int): Patient?")
- #raw("findByDni(dni: String): Patient?")
- #raw("findByUserId(userId: Int): Patient?")
- #raw("saveMinor(patientMinor: PatientMinor): PatientMinor")
- #raw("findMinorsByTutor(tutorId: Int): List<PatientMinor>")

#metadata((src: "README.md", line: 3232))
#strong[Propósito:]
Define las operaciones de persistencia para pacientes y menores vinculados.

#metadata((src: "README.md", line: 3235))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[EventPublisher (Interface)] <sec:eventpublisher-interface>
#metadata((src: "README.md", line: 3237, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3239))
#strong[Métodos:]

#metadata((src: "README.md", line: 3240))
- #raw("publish(event: DomainEvent)")

#metadata((src: "README.md", line: 3242))
#strong[Propósito:]
Define la interfaz para publicar eventos de dominio. La implementación concreta usa Spring Events.

#metadata((src: "README.md", line: 3245))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.1.2. Interface Layer] <sec:2-6-1-2-interface-layer>
#metadata((src: "README.md", line: 3247, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3249))
La #strong[Interface Layer] expone las funcionalidades del bounded context mediante endpoints REST.

#heading(level: 5)[UserAccountsController (REST API Controller)] <sec:useraccountscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3251, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3253))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3254))
- #raw("POST /api/v1/user-accounts") → Registra un nuevo paciente con verificación de DNI.
- #raw("POST /api/v1/user-accounts/login") → Inicia sesión y genera token JWT.
- #raw("POST /api/v1/user-accounts/logout") → Cierra sesión.
- #raw("POST /api/v1/user-accounts/recover-password") → Solicita recuperación de contraseña.
- #raw("GET /api/v1/user-accounts/{id}") → Obtiene el perfil del usuario autenticado.
- #raw("PUT /api/v1/user-accounts/{id}") → Actualiza datos de contacto.
- #raw("POST /api/v1/user-accounts/staff") → Crea cuenta de personal administrativo.

#metadata((src: "README.md", line: 3262))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("UserAccount").

#metadata((src: "README.md", line: 3265))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientsController (REST API Controller)] <sec:patientscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3267, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3269))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3270))
- #raw("GET /api/v1/patients/{id}") → Obtiene el perfil de un paciente.
- #raw("PUT /api/v1/patients/{id}") → Actualiza datos del paciente.
- #raw("GET /api/v1/patients/{id}/minors") → Lista los menores vinculados al tutor.

#metadata((src: "README.md", line: 3274))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("Patient").

#metadata((src: "README.md", line: 3277))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientMinorsController (REST API Controller)] <sec:patientminorscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3279, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3281))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3282))
- #raw("POST /api/v1/patient-minors") → Vincula un menor a la cuenta del titular.
- #raw("GET /api/v1/patient-minors/{id}") → Obtiene el detalle del vínculo.
- #raw("DELETE /api/v1/patient-minors/{id}") → Desvincula un menor.

#metadata((src: "README.md", line: 3286))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre la entity #raw("PatientMinor").

#metadata((src: "README.md", line: 3289))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[IamContextFacade (Facade \/ ACL)] <sec:iamcontextfacade-facade-acl>
#metadata((src: "README.md", line: 3291, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3293))
#strong[Métodos:]

#metadata((src: "README.md", line: 3294))
- #raw("getUserById(id): UserAccount?")
- #raw("getPatientById(id): Patient?")
- #raw("getMinorsByTutor(tutorId): List<PatientMinor>")

#metadata((src: "README.md", line: 3298))
#strong[Propósito:]
Punto de entrada interno para otros bounded contexts. Evita que otros contextos accedan directamente a los repositorios de IAM.

#metadata((src: "README.md", line: 3301))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.1.3. Application Layer] <sec:2-6-1-3-application-layer>
#metadata((src: "README.md", line: 3303, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3305))
La #strong[Application Layer] orquesta los casos de uso del dominio mediante #strong[Command Services] y #strong[Query Services]. Los #strong[Command Handlers] viven dentro de los Command Services, y los #strong[Event Handlers] en #raw("application/internal/eventhandlers/").

#heading(level: 5)[UserAccountCommandService (Interface)] <sec:useraccountcommandservice-interface>
#metadata((src: "README.md", line: 3307, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3309))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 3310))
- #raw("registerPatient(command: RegisterPatientCommand): Patient")
- #raw("login(command: LoginCommand): AuthResult")
- #raw("logout(command: LogoutCommand): void")
- #raw("recoverPassword(command: RecoverPasswordCommand): void")
- #raw("updateProfile(command: UpdateProfileCommand): Patient")
- #raw("createStaffAccount(command: CreateStaffAccountCommand): UserAccount")

#metadata((src: "README.md", line: 3317))
#strong[Propósito:]
Define los comandos relacionados con la cuenta de usuario.

#metadata((src: "README.md", line: 3320))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientCommandService (Interface)] <sec:patientcommandservice-interface>
#metadata((src: "README.md", line: 3322, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3324))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 3325))
- #raw("linkMinor(command: LinkMinorCommand): PatientMinor")
- #raw("unlinkMinor(command: UnlinkMinorCommand): void")

#metadata((src: "README.md", line: 3328))
#strong[Propósito:]
Define los comandos relacionados con el paciente y sus menores vinculados.

#metadata((src: "README.md", line: 3331))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[UserAccountQueryService (Interface)] <sec:useraccountqueryservice-interface>
#metadata((src: "README.md", line: 3333, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3335))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3336))
- #raw("getById(id: Int): UserAccount?")
- #raw("getByEmail(email: String): UserAccount?")

#metadata((src: "README.md", line: 3339))
#strong[Propósito:]
Define las consultas relacionadas con la cuenta de usuario.

#metadata((src: "README.md", line: 3342))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientQueryService (Interface)] <sec:patientqueryservice-interface>
#metadata((src: "README.md", line: 3344, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3346))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3347))
- #raw("getById(id: Int): Patient?")
- #raw("getByDni(dni: String): Patient?")
- #raw("getMinorsByTutor(tutorId: Int): List<PatientMinor>")

#metadata((src: "README.md", line: 3351))
#strong[Propósito:]
Define las consultas relacionadas con el paciente.

#metadata((src: "README.md", line: 3354))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[UserAccountCommandServiceImpl (Implementation)] <sec:useraccountcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 3356, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3358))
#strong[Responsabilidad:] Implementar los comandos de cuenta de usuario.

#metadata((src: "README.md", line: 3360))
#strong[Flujo de #raw("registerPatient"):]

#metadata((src: "README.md", line: 3361))
+ Recibe los datos del paciente.
+ Valida el DNI contra el servicio externo RENIEC mediante #raw("ReniecService") (ACL).
+ Valida que el correo no esté duplicado.
+ Crea la cuenta de usuario con rol #raw("PATIENT") usando #raw("UserAccountFactory").
+ Crea el perfil de paciente.
+ Publica el evento #raw("PatientRegisteredEvent").
+ Notifica al paciente vía #raw("NotificationAdapter").

#metadata((src: "README.md", line: 3369))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientCommandServiceImpl (Implementation)] <sec:patientcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 3371, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3373))
#strong[Responsabilidad:] Implementar los comandos de paciente.

#metadata((src: "README.md", line: 3375))
#strong[Flujo de #raw("linkMinor"):]

#metadata((src: "README.md", line: 3376))
+ Recibe el DNI del menor.
+ Valida el DNI contra RENIEC.
+ Valida que el menor no esté vinculado a otra cuenta.
+ Crea el #raw("PatientMinor") asociando al tutor.
+ Publica el evento #raw("MinorLinkedEvent").
+ Notifica al tutor.

#metadata((src: "README.md", line: 3383))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientRegisteredEventHandler (Event Handler)] <sec:patientregisteredeventhandler-event-handler>
#metadata((src: "README.md", line: 3385, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3387))
#strong[Responsabilidad:] Reaccionar al evento #raw("PatientRegisteredEvent").
#strong[Flujo:]

#metadata((src: "README.md", line: 3389))
+ Escucha el evento.
+ Envía el correo de bienvenida.
+ Registra la acción en el log de auditoría.

#metadata((src: "README.md", line: 3393))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[MinorLinkedEventHandler (Event Handler)] <sec:minorlinkedeventhandler-event-handler>
#metadata((src: "README.md", line: 3395, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3397))
#strong[Responsabilidad:] Reaccionar al evento #raw("MinorLinkedEvent").
#strong[Flujo:]

#metadata((src: "README.md", line: 3399))
+ Escucha el evento.
+ Notifica al tutor que la vinculación fue exitosa.
+ Registra la acción en el log de auditoría.

#metadata((src: "README.md", line: 3403))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.1.4. Infrastructure Layer] <sec:2-6-1-4-infrastructure-layer>
#metadata((src: "README.md", line: 3405, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3407))
La capa de #strong[Infrastructure] contiene las implementaciones concretas.

#heading(level: 5)[UserAccountRepositoryImpl] <sec:useraccountrepositoryimpl>
#metadata((src: "README.md", line: 3409, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3410))
#strong[Implementa:] #raw("UserAccountRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("users"). Mapea entidades del dominio a entidades JPA.

#metadata((src: "README.md", line: 3415))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientRepositoryImpl] <sec:patientrepositoryimpl>
#metadata((src: "README.md", line: 3417, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3418))
#strong[Implementa:] #raw("PatientRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre las tablas #raw("patients") y #raw("patient_minors").

#metadata((src: "README.md", line: 3423))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReniecService (ACL)] <sec:reniecservice-acl>
#metadata((src: "README.md", line: 3425, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3426))
#strong[Función:]
Valida la identidad por DNI contra el servicio externo de RENIEC.
#strong[Tecnología:] REST Client (RestTemplate \/ WebClient)
#strong[Explicación:]
Implementa un Anticorruption Layer (ACL) que traduce el modelo externo de RENIEC al modelo interno de identidad.

#metadata((src: "README.md", line: 3432))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[BCryptHashingService] <sec:bcrypthashingservice>
#metadata((src: "README.md", line: 3434, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3435))
#strong[Función:]
Hashea y valida contraseñas con BCrypt.
#strong[Tecnología:] BCrypt

#metadata((src: "README.md", line: 3439))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TokenServiceImpl] <sec:tokenserviceimpl>
#metadata((src: "README.md", line: 3441, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3442))
#strong[Función:]
Genera y valida tokens JWT.
#strong[Tecnología:] java-jwt \/ jjwt

#metadata((src: "README.md", line: 3446))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[WebSecurityConfiguration] <sec:websecurityconfiguration>
#metadata((src: "README.md", line: 3448, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3449))
#strong[Función:]
Configura Spring Security, filtros de autorización y pipeline de autenticación.
#strong[Tecnología:] Spring Security

#metadata((src: "README.md", line: 3453))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[BearerAuthorizationRequestFilter] <sec:bearerauthorizationrequestfilter>
#metadata((src: "README.md", line: 3455, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3456))
#strong[Función:]
Filtra las peticiones HTTP y valida el token Bearer en cada request.
#strong[Tecnología:] Spring Security

#metadata((src: "README.md", line: 3460))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[NotificationAdapter] <sec:notificationadapter>
#metadata((src: "README.md", line: 3462, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3463))
#strong[Función:]
Envía notificaciones al usuario (correo de bienvenida, recuperación de contraseña).
#strong[Tecnología:] SMTP + Firebase Cloud Messaging

#metadata((src: "README.md", line: 3467))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpringEventPublisherImpl] <sec:springeventpublisherimpl>
#metadata((src: "README.md", line: 3469, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3470))
#strong[Implementa:] #raw("EventPublisher")
#strong[Función:]
Publica eventos de dominio usando Spring Events.
#strong[Tecnología:] #raw("ApplicationEventPublisher") de Spring

#metadata((src: "README.md", line: 3475))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.1.5. Bounded Context Software Architecture Component Level Diagrams] <sec:2-6-1-5-bounded-context-software-architecture-component-level-diagrams>
#metadata((src: "README.md", line: 3477, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3482))
#strong[Figura 45]

#metadata((src: "README.md", line: 3484))
#emph[Diagrama de componentes — IAM]

#metadata((src: "README.md", line: 3486, kind: "figure", img: "assets/iam_component_diagram.png"))
#block(breakable: false)[#fit-image("/assets/iam_component_diagram.png", alt: "Diagrama de componentes — IAM", width: 85%)]

#metadata((src: "README.md", line: 3488))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3491))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3492))
El diagrama de componentes del bounded context Identity & Access Management muestra la organización interna del Backend API en sus cuatro capas: Interface, Application, Domain e Infrastructure. Se aprecian los controladores REST, los servicios de aplicación, los aggregates del dominio, las interfaces de repositorio y los adapters de infraestructura, junto con sus dependencias y la comunicación con la base de datos PostgreSQL y los servicios externos, como se observa en la #link("#figura-45")[Figura 45].

#heading(level: 4)[2.6.1.6. Bounded Context Software Architecture Code Level Diagrams] <sec:2-6-1-6-bounded-context-software-architecture-code-level-diagrams>
#metadata((src: "README.md", line: 3494, kind: "heading", level: 4))

#heading(level: 5)[2.6.1.6.1. Bounded Context Domain Layer Class Diagrams] <sec:2-6-1-6-1-bounded-context-domain-layer-class-diagrams>
#metadata((src: "README.md", line: 3496, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3501))
#strong[Figura 46]

#metadata((src: "README.md", line: 3503))
#emph[Diagrama de clases — IAM]

#metadata((src: "README.md", line: 3505, kind: "figure", img: "assets/iam_uml_diagram.png"))
#block(breakable: false)[#fit-image("/assets/iam_uml_diagram.png", alt: "Diagrama de clases — IAM", width: 85%)]

#metadata((src: "README.md", line: 3507))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3510))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3511))
El diagrama de clases del dominio del bounded context Identity & Access Management representa los aggregates, entities, value objects, enums, factory e interfaces de repositorio que encapsulan las reglas de negocio de identidad. Se muestran las relaciones entre UserAccount, Patient y PatientMinor, junto con los value objects Email, Dni y PasswordHash, el enum Role y la factory UserAccountFactory, como se observa en la #link("#figura-46")[Figura 46].

#heading(level: 5)[2.6.1.6.2. Bounded Context Database Design Diagram] <sec:2-6-1-6-2-bounded-context-database-design-diagram>
#metadata((src: "README.md", line: 3513, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3518))
#strong[Figura 47]

#metadata((src: "README.md", line: 3520))
#emph[Diagrama de base de datos — IAM]

#metadata((src: "README.md", line: 3522, kind: "figure", img: "assets/iam_database_diagram.png"))
#block(breakable: false)[#fit-image("/assets/iam_database_diagram.png", alt: "Diagrama de base de datos — IAM", width: 85%)]

#metadata((src: "README.md", line: 3524))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3527))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3528))
El diagrama de base de datos del bounded context Identity & Access Management muestra las tablas roles, users, patients y patient\_minors, junto con sus columnas, claves primarias, claves foráneas y restricciones de unicidad. Las relaciones reflejan la estructura de identidad: un rol tiene muchos usuarios, un usuario tiene un solo paciente, y un paciente puede ser tutor de muchos menores, como se observa en la #link("#figura-47")[Figura 47].

#metadata((src: "README.md", line: 3530))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.6.2. Bounded Context: Appointments & Booking] <sec:2-6-2-bounded-context-appointments-booking>
#metadata((src: "README.md", line: 3532, kind: "heading", level: 3))

#metadata((src: "README.md", line: 3534))
El #strong[bounded context de Appointments & Booking] gestiona el ciclo de vida de una cita médica: consulta de disponibilidad, reserva, confirmación y cancelación. Es el responsable de la #strong[cola de pedido de cita] (#raw("booking_order")), que define la prioridad del paciente para asumir cupos liberados.

#heading(level: 4)[2.6.2.1. Domain Layer] <sec:2-6-2-1-domain-layer>
#metadata((src: "README.md", line: 3536, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3538))
La capa de #strong[Domain] representa el núcleo del negocio de reserva de citas. Aquí se definen las entidades, value objects, enums, aggregates, domain events e interfaces que encapsulan las reglas de negocio.

#heading(level: 5)[Appointment (Aggregate Root)] <sec:appointment-aggregate-root>
#metadata((src: "README.md", line: 3540, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3542))
#strong[Atributos:]
#raw("id"), #raw("timeSlotId"), #raw("patientId"), #raw("bookingOrder: BookingOrder"), #raw("status: AppointmentStatus"), #raw("createdAt"), #raw("updatedAt")

#metadata((src: "README.md", line: 3545))
#strong[Métodos:]

#metadata((src: "README.md", line: 3546))
- #raw("create(timeSlotId, patientId, bookingOrder)") → crea una nueva cita en estado #raw("RESERVED") (factory method estático).
- #raw("rehydrate(id, timeSlotId, patientId, bookingOrder, status, createdAt, updatedAt)") → reconstruye la cita desde su estado persistido.
- #raw("cancel()") → cambia el estado a #raw("CANCELLED") y registra el evento #raw("AppointmentCancelledEvent").
- #raw("markAsAbsent()") → cambia el estado a #raw("ABSENT") y registra el evento #raw("AppointmentAbsentEvent").
- #raw("markAsAttended()") → cambia el estado a #raw("ATTENDED").
- #raw("confirm()") → cambia el estado de #raw("RESERVED") a #raw("CONFIRMED").
- #raw("expire()") → cambia el estado a #raw("EXPIRED").
- #raw("isActive()") → retorna #raw("true") si el estado es #raw("RESERVED") o #raw("CONFIRMED").
- #raw("canBeCancelled(scheduledAt, deadlineHours)") → valida si aún está dentro del plazo de cancelación.

#metadata((src: "README.md", line: 3556))
#strong[Propósito:]
Representa una cita médica reservada. Es aggregate root porque agrupa el #raw("bookingOrder") y controla el ciclo de vida de la cita.

#metadata((src: "README.md", line: 3559))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlot (Aggregate Root)] <sec:timeslot-aggregate-root>
#metadata((src: "README.md", line: 3561, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3563))
#strong[Atributos:]
#raw("id"), #raw("doctorId"), #raw("date"), #raw("startHour"), #raw("endHour"), #raw("maxCapacity"), #raw("currentBookings"), #raw("status: TimeSlotStatus")

#metadata((src: "README.md", line: 3566))
#strong[Métodos:]

#metadata((src: "README.md", line: 3567))
- #raw("create(doctorId, date, startHour, endHour, maxCapacity)") → crea un bloque horario en estado #raw("AVAILABLE") (factory method estático).
- #raw("rehydrate(id, doctorId, date, startHour, endHour, maxCapacity, currentBookings, status)") → reconstruye el bloque desde su estado persistido.
- #raw("hasAvailableCapacity()") → retorna #raw("true") si #raw("currentBookings < maxCapacity").
- #raw("incrementBookings()") → aumenta #raw("currentBookings") en 1.
- #raw("decrementBookings()") → disminuye #raw("currentBookings") en 1.
- #raw("updateMaxCapacity(newMaxCapacity)") → actualiza la capacidad máxima, validando que no sea menor que #raw("currentBookings").
- #raw("isFull()") → retorna #raw("true") si #raw("currentBookings >= maxCapacity").
- #raw("isExpired()") → retorna #raw("true") si la fecha y hora ya pasaron.
- #raw("cancel()") → cambia el estado a #raw("CANCELLED").

#metadata((src: "README.md", line: 3577))
#strong[Propósito:]
Representa un bloque horario concreto de un médico en una fecha. Es aggregate root porque controla la capacidad y el estado del bloque.

#metadata((src: "README.md", line: 3580))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Doctor (Aggregate)] <sec:doctor-aggregate>
#metadata((src: "README.md", line: 3582, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3584))
#strong[Atributos:]
#raw("id"), #raw("specialtyId"), #raw("name"), #raw("lastname")

#metadata((src: "README.md", line: 3587))
#strong[Métodos:]

#metadata((src: "README.md", line: 3588))
- #raw("create(specialtyId, name, lastname)") → crea un médico (factory method estático).
- #raw("rehydrate(id, specialtyId, name, lastname)") → reconstruye el médico desde su estado persistido.

#metadata((src: "README.md", line: 3591))
#strong[Propósito:]
Representa a un médico dentro del catálogo.

#metadata((src: "README.md", line: 3594))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Specialty (Aggregate)] <sec:specialty-aggregate>
#metadata((src: "README.md", line: 3596, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3598))
#strong[Atributos:]
#raw("id"), #raw("name"), #raw("description")

#metadata((src: "README.md", line: 3601))
#strong[Métodos:]

#metadata((src: "README.md", line: 3602))
- #raw("create(name, description)") → crea una especialidad (factory method estático).
- #raw("rehydrate(id, name, description)") → reconstruye la especialidad desde su estado persistido.

#metadata((src: "README.md", line: 3605))
#strong[Propósito:]
Representa una especialidad médica dentro del catálogo.

#metadata((src: "README.md", line: 3608))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[BookingOrder (Value Object)] <sec:bookingorder-value-object>
#metadata((src: "README.md", line: 3610, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3612))
#strong[Atributos:]
#raw("value")

#metadata((src: "README.md", line: 3615))
#strong[Propósito:]
Encapsula el número secuencial de reserva. Es inmutable una vez asignado. El alcance "por especialidad" se resuelve al calcular el siguiente valor mediante #raw("getNextBookingOrderBySpecialty").

#metadata((src: "README.md", line: 3618))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentStatus (Enum)] <sec:appointmentstatus-enum>
#metadata((src: "README.md", line: 3620, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3622))
#strong[Valores posibles:]
#raw("RESERVED"), #raw("CONFIRMED"), #raw("CANCELLED"), #raw("ABSENT"), #raw("ATTENDED"), #raw("EXPIRED")

#metadata((src: "README.md", line: 3625))
#strong[Propósito:]
Define los estados del ciclo de vida de una cita. Las transiciones hacia #raw("ATTENDED") y #raw("ABSENT") son disparadas por el bounded context #raw("Arrival & QR Check-in"), y #raw("EXPIRED") por un job programado.

#metadata((src: "README.md", line: 3628))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotStatus (Enum)] <sec:timeslotstatus-enum>
#metadata((src: "README.md", line: 3630, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3632))
#strong[Valores posibles:]
#raw("AVAILABLE"), #raw("FULL"), #raw("CANCELLED")

#metadata((src: "README.md", line: 3635))
#strong[Propósito:]
Define el estado de disponibilidad de un bloque horario.

#metadata((src: "README.md", line: 3638))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentRepository (Interface)] <sec:appointmentrepository-interface>
#metadata((src: "README.md", line: 3640, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3642))
#strong[Métodos:]

#metadata((src: "README.md", line: 3643))
- #raw("save(appointment: Appointment): Appointment")
- #raw("findById(id: Long): Appointment?")
- #raw("findByPatientId(patientId: Long): List<Appointment>")
- #raw("findByTimeSlotId(timeSlotId: Long): List<Appointment>")
- #raw("findActiveBySpecialtyId(specialtyId: Long): List<Appointment>")
- #raw("getNextBookingOrderBySpecialty(specialtyId: Long): int")
- #raw("existsActiveByPatientAndTimeSlot(patientId: Long, timeSlotId: Long): Boolean")
- #raw("updateStatus(id: Long, status: AppointmentStatus)")
- #raw("existsById(id: Long): Boolean")
- #raw("deleteById(id: Long)")

#metadata((src: "README.md", line: 3654))
#strong[Propósito:]
Define las operaciones de persistencia para citas.

#metadata((src: "README.md", line: 3657))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotRepository (Interface)] <sec:timeslotrepository-interface>
#metadata((src: "README.md", line: 3659, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3661))
#strong[Métodos:]

#metadata((src: "README.md", line: 3662))
- #raw("save(timeSlot: TimeSlot): TimeSlot")
- #raw("findById(id: Long): TimeSlot?")
- #raw("findAvailableBySpecialty(specialtyId: Long, date: LocalDate): List<TimeSlot>")
- #raw("findByDoctorAndDate(doctorId: Long, date: LocalDate): List<TimeSlot>")
- #raw("existsById(id: Long): Boolean")

#metadata((src: "README.md", line: 3668))
#strong[Propósito:]
Define las operaciones de persistencia para bloques horarios.

#metadata((src: "README.md", line: 3671))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpecialtyRepository (Interface)] <sec:specialtyrepository-interface>
#metadata((src: "README.md", line: 3673, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3675))
#strong[Métodos:]

#metadata((src: "README.md", line: 3676))
- #raw("save(specialty: Specialty): Specialty")
- #raw("findById(id: Long): Specialty?")
- #raw("findAll(): List<Specialty>")
- #raw("existsById(id: Long): Boolean")

#metadata((src: "README.md", line: 3681))
#strong[Propósito:]
Define las operaciones de persistencia para el catálogo de especialidades.

#metadata((src: "README.md", line: 3684))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[DoctorRepository (Interface)] <sec:doctorrepository-interface>
#metadata((src: "README.md", line: 3686, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3688))
#strong[Métodos:]

#metadata((src: "README.md", line: 3689))
- #raw("save(doctor: Doctor): Doctor")
- #raw("findById(id: Long): Doctor?")
- #raw("findBySpecialtyId(specialtyId: Long): List<Doctor>")
- #raw("findAll(): List<Doctor>")
- #raw("existsById(id: Long): Boolean")

#metadata((src: "README.md", line: 3695))
#strong[Propósito:]
Define las operaciones de persistencia para el catálogo de médicos.

#metadata((src: "README.md", line: 3698))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3700))
#quote(block: true)[
  #metadata((src: "README.md", line: 3700))
  #strong[Nota sobre eventos de dominio:] #raw("AppointmentBookedEvent"), #raw("AppointmentCancelledEvent") y #raw("AppointmentAbsentEvent") son registrados por el aggregate #raw("Appointment") mediante #raw("registerDomainEvent(...)") y publicados por el persistence adapter al guardar, usando #raw("ApplicationEventPublisher") de Spring.
]

#metadata((src: "README.md", line: 3702))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentBookedEvent (Domain Event)] <sec:appointmentbookedevent-domain-event>
#metadata((src: "README.md", line: 3704, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3706))
#strong[Atributos:]
#raw("appointmentId"), #raw("timeSlotId"), #raw("patientId"), #raw("bookingOrder"), #raw("bookedAt")

#metadata((src: "README.md", line: 3709))
#strong[Propósito:]
Representa el hecho de negocio de que se reservó una nueva cita.

#metadata((src: "README.md", line: 3712))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentCancelledEvent (Domain Event)] <sec:appointmentcancelledevent-domain-event>
#metadata((src: "README.md", line: 3714, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3716))
#strong[Atributos:]
#raw("appointmentId"), #raw("freedTimeSlotId"), #raw("cancelledAt")

#metadata((src: "README.md", line: 3719))
#strong[Propósito:]
Representa el hecho de negocio de que una cita fue cancelada y su cupo quedó libre.

#metadata((src: "README.md", line: 3722))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentAbsentEvent (Domain Event)] <sec:appointmentabsentevent-domain-event>
#metadata((src: "README.md", line: 3724, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3726))
#strong[Atributos:]
#raw("appointmentId"), #raw("freedTimeSlotId"), #raw("absentAt")

#metadata((src: "README.md", line: 3729))
#strong[Propósito:]
Representa el hecho de negocio de que un paciente no se presentó a su cita.

#metadata((src: "README.md", line: 3732))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.2.2. Interface Layer] <sec:2-6-2-2-interface-layer>
#metadata((src: "README.md", line: 3734, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3736))
La #strong[Interface Layer] expone las funcionalidades del bounded context mediante endpoints REST.

#heading(level: 5)[AppointmentsController (REST API Controller)] <sec:appointmentscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3738, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3740))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3741))
- #raw("POST /api/v1/appointments") → Reserva una nueva cita.
- #raw("GET /api/v1/appointments/{id}") → Obtiene el detalle de una cita.
- #raw("GET /api/v1/appointments/patient/{patientId}") → Lista citas de un paciente.
- #raw("DELETE /api/v1/appointments/{id}") → Cancela una cita.

#metadata((src: "README.md", line: 3746))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("Appointment").

#metadata((src: "README.md", line: 3749))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotsController (REST API Controller)] <sec:timeslotscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3751, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3753))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3754))
- #raw("GET /api/v1/time-slots/available?specialtyId={id}&date={date}") → Lista bloques horarios disponibles de una especialidad.
- #raw("GET /api/v1/time-slots?doctorId={id}&date={date}") → Lista bloques horarios de un médico en una fecha.
- #raw("GET /api/v1/time-slots/{id}") → Obtiene el detalle de un bloque horario.
- #raw("POST /api/v1/time-slots") → Crea un bloque horario.
- #raw("PUT /api/v1/time-slots/{id}/capacity") → Actualiza la capacidad de un bloque horario.

#metadata((src: "README.md", line: 3760))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("TimeSlot").

#metadata((src: "README.md", line: 3763))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpecialtiesController (REST API Controller)] <sec:specialtiescontroller-rest-api-controller>
#metadata((src: "README.md", line: 3765, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3767))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3768))
- #raw("GET /api/v1/specialties") → Lista especialidades disponibles.
- #raw("GET /api/v1/specialties/{id}") → Obtiene el detalle de una especialidad.

#metadata((src: "README.md", line: 3771))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("Specialty").

#metadata((src: "README.md", line: 3774))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[DoctorsController (REST API Controller)] <sec:doctorscontroller-rest-api-controller>
#metadata((src: "README.md", line: 3776, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3778))
#strong[Endpoints:]

#metadata((src: "README.md", line: 3779))
- #raw("GET /api/v1/doctors?specialtyId={id}") → Lista médicos de una especialidad.
- #raw("GET /api/v1/doctors/{id}") → Obtiene el detalle de un médico.

#metadata((src: "README.md", line: 3782))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("Doctor").

#metadata((src: "README.md", line: 3785))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.2.3. Application Layer] <sec:2-6-2-3-application-layer>
#metadata((src: "README.md", line: 3787, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3789))
La #strong[Application Layer] orquesta los casos de uso del dominio mediante #strong[Command Services] y #strong[Query Services]. Los command services retornan #raw("Result<T, ApplicationError>") (patrón Result del módulo #raw("shared")).

#heading(level: 5)[AppointmentCommandService (Interface)] <sec:appointmentcommandservice-interface>
#metadata((src: "README.md", line: 3791, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3793))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 3794))
- #raw("book(command: BookAppointmentCommand): Result<Appointment, ApplicationError>")
- #raw("cancel(command: CancelAppointmentCommand): Result<Appointment, ApplicationError>")

#metadata((src: "README.md", line: 3797))
#strong[Propósito:]
Define los comandos relacionados con la cita.

#metadata((src: "README.md", line: 3800))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotCommandService (Interface)] <sec:timeslotcommandservice-interface>
#metadata((src: "README.md", line: 3802, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3804))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 3805))
- #raw("create(command: CreateTimeSlotCommand): Result<TimeSlot, ApplicationError>")
- #raw("updateCapacity(command: UpdateTimeSlotCapacityCommand): Result<TimeSlot, ApplicationError>")

#metadata((src: "README.md", line: 3808))
#strong[Propósito:]
Define los comandos relacionados con el bloque horario.

#metadata((src: "README.md", line: 3811))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentQueryService (Interface)] <sec:appointmentqueryservice-interface>
#metadata((src: "README.md", line: 3813, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3815))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3816))
- #raw("getById(id: Long): Appointment?")
- #raw("getByPatient(patientId: Long): List<Appointment>")
- #raw("getByTimeSlot(timeSlotId: Long): List<Appointment>")

#metadata((src: "README.md", line: 3820))
#strong[Propósito:]
Define las consultas relacionadas con la cita.

#metadata((src: "README.md", line: 3823))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotQueryService (Interface)] <sec:timeslotqueryservice-interface>
#metadata((src: "README.md", line: 3825, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3827))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3828))
- #raw("getById(id: Long): TimeSlot?")
- #raw("getAvailableBySpecialty(specialtyId: Long, date: LocalDate): List<TimeSlot>")
- #raw("getByDoctorAndDate(doctorId: Long, date: LocalDate): List<TimeSlot>")

#metadata((src: "README.md", line: 3832))
#strong[Propósito:]
Define las consultas relacionadas con el bloque horario.

#metadata((src: "README.md", line: 3835))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpecialtyQueryService (Interface)] <sec:specialtyqueryservice-interface>
#metadata((src: "README.md", line: 3837, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3839))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3840))
- #raw("getAll(): List<Specialty>")
- #raw("getById(id: Long): Specialty?")

#metadata((src: "README.md", line: 3843))
#strong[Propósito:]
Define las consultas relacionadas con el catálogo de especialidades.

#metadata((src: "README.md", line: 3846))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[DoctorQueryService (Interface)] <sec:doctorqueryservice-interface>
#metadata((src: "README.md", line: 3848, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3850))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 3851))
- #raw("getBySpecialty(specialtyId: Long): List<Doctor>")
- #raw("getById(id: Long): Doctor?")

#metadata((src: "README.md", line: 3854))
#strong[Propósito:]
Define las consultas relacionadas con el catálogo de médicos.

#metadata((src: "README.md", line: 3857))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentCommandServiceImpl (Implementation)] <sec:appointmentcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 3859, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3861))
#strong[Responsabilidad:] Implementar los comandos de cita.

#metadata((src: "README.md", line: 3863))
#strong[Flujo de #raw("book"):]

#metadata((src: "README.md", line: 3864))
+ Recibe #raw("patientId") y #raw("timeSlotId").
+ Carga el #raw("TimeSlot") y valida que tenga capacidad disponible (#raw("hasAvailableCapacity")).
+ Valida que no haya solapamiento (#raw("existsActiveByPatientAndTimeSlot")).
+ Carga el #raw("Doctor") del slot para obtener la #raw("specialtyId").
+ Calcula el siguiente #raw("bookingOrder") con #raw("getNextBookingOrderBySpecialty").
+ Crea el #raw("Appointment") en estado #raw("RESERVED") con #raw("Appointment.create(...)").
+ Incrementa #raw("current_bookings") y guarda el #raw("TimeSlot").
+ Guarda el #raw("Appointment"); el adapter publica el evento #raw("AppointmentBookedEvent").

#metadata((src: "README.md", line: 3873))
#strong[Flujo de #raw("cancel"):]

#metadata((src: "README.md", line: 3874))
+ Recibe #raw("appointmentId").
+ Busca la cita.
+ Valida que esté activa (#raw("isActive")).
+ Cambia el estado a #raw("CANCELLED") con #raw("cancel()"), que registra el evento #raw("AppointmentCancelledEvent").
+ Decrementa #raw("current_bookings").
+ Guarda el #raw("Appointment"); el adapter publica el evento #raw("AppointmentCancelledEvent").

#metadata((src: "README.md", line: 3881))
#quote(block: true)[
  #metadata((src: "README.md", line: 3881))
  #strong[Nota:] la validación del plazo (#raw("cancellationDeadlineHours")) proviene del bounded context #raw("Hospital Operations & Configuration") y se integra mediante un ACL (pendiente).
]

#metadata((src: "README.md", line: 3883))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3885))
#quote(block: true)[
  #metadata((src: "README.md", line: 3885))
  #strong[Nota:] la reasignación de cupos liberados #strong[por ausencia] es responsabilidad del bounded context #raw("Reassignment"), que escucha #raw("PatientAbsentEvent") publicado por #raw("Arrival & QR Check-in"). La cancelación de una cita #strong[no] dispara reasignación (solo libera el cupo para reserva externa). Este contexto no implementa handlers propios para reasignación.
]

#metadata((src: "README.md", line: 3887))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotCommandServiceImpl (Implementation)] <sec:timeslotcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 3889, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3891))
#strong[Responsabilidad:] Implementar los comandos de bloque horario.

#metadata((src: "README.md", line: 3893))
#strong[Flujo de #raw("create"):]

#metadata((src: "README.md", line: 3894))
+ Recibe #raw("doctorId"), #raw("date"), #raw("startHour"), #raw("endHour") y #raw("maxCapacity").
+ Crea el #raw("TimeSlot") en estado #raw("AVAILABLE") con #raw("TimeSlot.create(...)").
+ Guarda el #raw("TimeSlot").

#metadata((src: "README.md", line: 3898))
#strong[Flujo de #raw("updateCapacity"):]

#metadata((src: "README.md", line: 3899))
+ Recibe #raw("timeSlotId") y #raw("maxCapacity").
+ Busca el #raw("TimeSlot").
+ Actualiza la capacidad con #raw("updateMaxCapacity(...)"), validando que no sea menor que #raw("currentBookings").
+ Guarda el #raw("TimeSlot").

#metadata((src: "README.md", line: 3904))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.2.4. Infrastructure Layer] <sec:2-6-2-4-infrastructure-layer>
#metadata((src: "README.md", line: 3906, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3908))
La capa de #strong[Infrastructure] contiene las implementaciones concretas.

#heading(level: 5)[AppointmentPersistenceAdapter] <sec:appointmentpersistenceadapter>
#metadata((src: "README.md", line: 3910, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3911))
#strong[Implementa:] #raw("AppointmentRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("appointments"), implementa el cálculo de #raw("booking_order") secuencial por especialidad y publica los domain events del aggregate (#raw("AppointmentBookedEvent"), #raw("AppointmentCancelledEvent"), #raw("AppointmentAbsentEvent")) vía #raw("ApplicationEventPublisher") de Spring tras persistir.

#metadata((src: "README.md", line: 3916))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TimeSlotPersistenceAdapter] <sec:timeslotpersistenceadapter>
#metadata((src: "README.md", line: 3918, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3919))
#strong[Implementa:] #raw("TimeSlotRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("time_slots").

#metadata((src: "README.md", line: 3924))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpecialtyPersistenceAdapter] <sec:specialtypersistenceadapter>
#metadata((src: "README.md", line: 3926, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3927))
#strong[Implementa:] #raw("SpecialtyRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("specialties").

#metadata((src: "README.md", line: 3932))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[DoctorPersistenceAdapter] <sec:doctorpersistenceadapter>
#metadata((src: "README.md", line: 3934, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3935))
#strong[Implementa:] #raw("DoctorRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("doctors").

#metadata((src: "README.md", line: 3940))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[NotificationAdapter] <sec:notificationadapter-2>
#metadata((src: "README.md", line: 3942, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3943))
#strong[Función:]
Envía notificaciones de confirmación y cancelación al paciente.
#strong[Tecnología:] SMTP
#strong[Explicación:]
Requiere un ACL hacia el bounded context #raw("Identity & Access Management") para obtener el correo del paciente. Su implementación está pendiente.

#metadata((src: "README.md", line: 3949))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.2.5. Bounded Context Software Architecture Component Level Diagrams] <sec:2-6-2-5-bounded-context-software-architecture-component-level-diagrams>
#metadata((src: "README.md", line: 3951, kind: "heading", level: 4))

#metadata((src: "README.md", line: 3956))
#strong[Figura 48]

#metadata((src: "README.md", line: 3958))
#emph[Diagrama de componentes — Appointment]

#metadata((src: "README.md", line: 3960, kind: "figure", img: "chapter-02/assets/appointment_component_diagram_v2.png"))
#block(breakable: false)[#fit-image("/chapter-02/assets/appointment_component_diagram_v2.png", alt: "Diagrama de componentes — Appointment", width: 85%)]

#metadata((src: "README.md", line: 3962))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3965))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3966))
El diagrama de componentes del bounded context Appointments & Booking muestra la organización interna del Backend API en sus cuatro capas. En la Interface Layer, los controladores exponen los endpoints REST para reservar, cancelar, consultar disponibilidad, gestionar bloques horarios y explorar el catálogo médico. En la Application Layer, los Command Services y Query Services orquestan los casos de uso. En la Domain Layer, los aggregates Appointment y TimeSlot encapsulan las reglas de negocio, junto con los aggregates Doctor y Specialty y los domain events. En la Infrastructure Layer, los adapters implementan la persistencia con Spring Data JPA y la publicación de eventos de dominio con #raw("ApplicationEventPublisher") de Spring, como se observa en la #link("#figura-48")[Figura 48].

#heading(level: 4)[2.6.2.6. Bounded Context Software Architecture Code Level Diagrams] <sec:2-6-2-6-bounded-context-software-architecture-code-level-diagrams>
#metadata((src: "README.md", line: 3968, kind: "heading", level: 4))

#heading(level: 5)[2.6.2.6.1. Bounded Context Domain Layer Class Diagrams] <sec:2-6-2-6-1-bounded-context-domain-layer-class-diagrams>
#metadata((src: "README.md", line: 3970, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3975))
#strong[Figura 49]

#metadata((src: "README.md", line: 3977))
#emph[Diagrama de clases — Appointment]

#metadata((src: "README.md", line: 3979, kind: "figure", img: "chapter-02/assets/appointment_class_diagram_v2.png"))
#block(breakable: false)[#fit-image("/chapter-02/assets/appointment_class_diagram_v2.png", alt: "Diagrama de clases — Appointment", width: 85%)]

#metadata((src: "README.md", line: 3981))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 3984))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 3985))
El diagrama de clases del dominio del bounded context Appointments & Booking representa los aggregates, value objects, enums, domain events e interfaces de repositorio que encapsulan las reglas de negocio de reserva de citas. Se muestran las relaciones entre Appointment, TimeSlot, Doctor y Specialty, junto con el value object BookingOrder, los enums AppointmentStatus y TimeSlotStatus, los domain events y los repositorios, como se observa en la #link("#figura-49")[Figura 49].

#metadata((src: "README.md", line: 3987))
#pagebreak()

#heading(level: 5)[2.6.2.6.2. Bounded Context Database Design Diagram] <sec:2-6-2-6-2-bounded-context-database-design-diagram>
#metadata((src: "README.md", line: 3989, kind: "heading", level: 5))

#metadata((src: "README.md", line: 3994))
#strong[Figura 50]

#metadata((src: "README.md", line: 3996))
#emph[Diagrama de base de datos — Appointment]

#metadata((src: "README.md", line: 3998, kind: "figure", img: "assets/appointment_database_diagram.png"))
#block(breakable: false)[#fit-image("/assets/appointment_database_diagram.png", alt: "Diagrama de base de datos — Appointment", width: 85%)]

#metadata((src: "README.md", line: 4000))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4003))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4004))
El diagrama de base de datos del bounded context Appointments & Booking muestra las tablas specialties, doctors, time\_slots y appointments, junto con sus columnas, claves primarias, claves foráneas y restricciones de unicidad. Las relaciones reflejan la estructura del catálogo médico y la reserva de citas: una especialidad tiene muchos doctores, un doctor tiene muchos bloques horarios, y un bloque horario contiene muchas citas, como se observa en la #link("#figura-50")[Figura 50].

#metadata((src: "README.md", line: 4006))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.6.3. Bounded Context: Reassignment] <sec:2-6-3-bounded-context-reassignment>
#metadata((src: "README.md", line: 4008, kind: "heading", level: 3))

#metadata((src: "README.md", line: 4010))
El #strong[bounded context de Reassignment] gestiona la reasignación de cupos liberados por #strong[ausencias] presenciales. La reasignación opera sobre la #strong[cola de reserva] (#raw("appointments") ordenadas por #raw("booking_order")); no existe lista de espera externa ni cascada hacia otros #raw("Time Slot"). Cuando un paciente no se presenta y es declarado ausente, el sistema toma al siguiente paciente de la misma especialidad (por #raw("booking_order")) y le ofrece el cupo liberado. El candidato dispone de una #strong[ventana única] (#raw("expiresAt")) para aceptar #strong[y] presentarse. Si acepta y llega, se reasigna; al abandonar su slot original, este se libera y se re-ofrece al siguiente, formando una #strong[cadena de reasignación]. Si rechaza o no responde, se pasa al siguiente candidato. Si acepta pero no llega, se declara ausente. Si nadie en la cola acepta, el cupo se cierra. La cancelación de citas #strong[no] dispara este flujo.

#heading(level: 4)[2.6.3.1. Domain Layer] <sec:2-6-3-1-domain-layer>
#metadata((src: "README.md", line: 4012, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4014))
La capa de #strong[Domain] representa el núcleo del negocio de reasignación. Aquí se definen el aggregate root, el enum y los domain events (records inmutables) que encapsulan las reglas de negocio.

#heading(level: 5)[ReassignmentOffer (Aggregate Root)] <sec:reassignmentoffer-aggregate-root>
#metadata((src: "README.md", line: 4016, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4018))
#strong[Atributos:]
#raw("id"), #raw("appointmentId"), #raw("originalAppointmentId"), #raw("freedTimeSlotId"), #raw("candidateTimeSlotId"), #raw("status: ReassignmentStatus"), #raw("offeredAt"), #raw("respondedAt"), #raw("expiresAt")

#metadata((src: "README.md", line: 4021))
#strong[Métodos:]

#metadata((src: "README.md", line: 4022))
- #raw("offer(appointmentId, originalAppointmentId, freedTimeSlotId, candidateTimeSlotId, expiresAt)") → factory que crea una oferta #raw("PENDING").
- #raw("onOffered()") → registra #raw("ReassignmentOfferSentEvent") (tras persistir, cuando ya existe el #raw("id")).
- #raw("accept()") → valida #raw("PENDING") y no expirada; cambia a #raw("ACCEPTED") y registra #raw("respondedAt") y #raw("ReassignmentOfferAcceptedEvent").
- #raw("reject()") → valida #raw("PENDING"); cambia a #raw("REJECTED") y registra #raw("ReassignmentOfferRejectedEvent").
- #raw("expire()") → valida #raw("PENDING") y #raw("expiresAt < now"); cambia a #raw("EXPIRED") y registra #raw("ReassignmentOfferExpiredEvent").
- #raw("markArrived()") → valida #raw("ACCEPTED"); cambia a #raw("ATTENDED") y registra #raw("ReassignmentOfferAttendedEvent").
- #raw("markNoShow()") → valida #raw("ACCEPTED") y #raw("expiresAt < now"); cambia a #raw("ABSENT") y registra #raw("ReassignmentOfferNoShowEvent").
- #raw("isPending()"), #raw("isAccepted()"), #raw("isExpired()") → predicados de estado.

#metadata((src: "README.md", line: 4031))
#strong[Propósito:]
Representa una oferta de reasignación enviada a un candidato de la cola de reserva. Es aggregate root porque controla el ciclo de vida completo de la oferta. Los identificadores de #raw("Appointment") y #raw("TimeSlot") se modelan como #raw("Long") planos para no acoplar la persistencia entre bounded contexts.

#metadata((src: "README.md", line: 4034))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReassignmentStatus (Enum)] <sec:reassignmentstatus-enum>
#metadata((src: "README.md", line: 4036, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4038))
#strong[Valores posibles:]
#raw("PENDING"), #raw("ACCEPTED"), #raw("REJECTED"), #raw("EXPIRED"), #raw("ATTENDED"), #raw("ABSENT")

#metadata((src: "README.md", line: 4041))
#strong[Propósito:]
Define los estados del ciclo de vida de una oferta de reasignación.

#metadata((src: "README.md", line: 4044))
#pagebreak()

#metadata((src: "README.md", line: 4047))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReassignmentOfferRepository (Interface)] <sec:reassignmentofferrepository-interface>
#metadata((src: "README.md", line: 4049, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4051))
#strong[Métodos:]

#metadata((src: "README.md", line: 4052))
- #raw("save(offer: ReassignmentOffer): ReassignmentOffer")
- #raw("findById(id: Long): Optional<ReassignmentOffer>")
- #raw("findPendingByAppointment(appointmentId: Long): List<ReassignmentOffer>")
- #raw("findExpiredOffers(): List<ReassignmentOffer>")
- #raw("findAcceptedOverdue(): List<ReassignmentOffer>")

#metadata((src: "README.md", line: 4058))
#strong[Propósito:]
Define las operaciones de persistencia para ofertas de reasignación.

#metadata((src: "README.md", line: 4061))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Domain Events (records)] <sec:domain-events-records>
#metadata((src: "README.md", line: 4063, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4065))
Los domain events son #strong[records inmutables] publicados por el persistence adapter vía #raw("ApplicationEventPublisher") de Spring. El agregado los registra con #raw("registerDomainEvent(...)") (heredado de #raw("AbstractDomainAggregateRoot")).

#metadata((src: "README.md", line: 4067))
- #strong[ReassignmentOfferSentEvent:] #raw("offerId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("offeredAt") — se envió una oferta.
- #strong[ReassignmentOfferAcceptedEvent:] #raw("offerId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("originalAppointmentId"), #raw("candidateTimeSlotId"), #raw("acceptedAt") — el candidato aceptó (lleva el snapshot para que Booking mueva la cita y libere el slot original).
- #strong[ReassignmentOfferRejectedEvent:] #raw("offerId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("originalAppointmentId"), #raw("rejectedAt") — el candidato rechazó.
- #strong[ReassignmentOfferExpiredEvent:] #raw("offerId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("originalAppointmentId"), #raw("expiredAt") — la oferta expiró sin respuesta.
- #strong[ReassignmentOfferAttendedEvent:] #raw("offerId"), #raw("appointmentId"), #raw("attendedAt") — el candidato aceptó y llegó.
- #strong[ReassignmentOfferNoShowEvent:] #raw("offerId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("noShowAt") — el candidato aceptó y no llegó.

#metadata((src: "README.md", line: 4074))
#quote(block: true)[
  #metadata((src: "README.md", line: 4074))
  #strong[Nota:] la búsqueda del siguiente candidato (#raw("findNextCandidate")) no es un domain service: se resuelve mediante un ACL hacia #raw("Appointments & Booking"), porque consulta datos de otro bounded context.
]

#metadata((src: "README.md", line: 4076))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.3.2. Interface Layer] <sec:2-6-3-2-interface-layer>
#metadata((src: "README.md", line: 4078, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4080))
La #strong[Interface Layer] expone las funcionalidades del bounded context mediante endpoints REST y un consumer de eventos.

#heading(level: 5)[ReassignmentOffersController (REST API Controller)] <sec:reassignmentofferscontroller-rest-api-controller>
#metadata((src: "README.md", line: 4082, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4084))
#strong[Endpoints:]

#metadata((src: "README.md", line: 4085))
- #raw("GET /api/v1/reassignment-offers/pending?appointmentId={id}") → Lista ofertas pendientes de un candidato.
- #raw("POST /api/v1/reassignment-offers/{id}/accept") → Acepta una oferta.
- #raw("POST /api/v1/reassignment-offers/{id}/reject") → Rechaza una oferta.

#metadata((src: "README.md", line: 4089))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("ReassignmentOffer").

#metadata((src: "README.md", line: 4092))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientAbsentEventConsumer (Event Consumer)] <sec:patientabsenteventconsumer-event-consumer>
#metadata((src: "README.md", line: 4094, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4096))
#strong[Función:]
Escucha el evento #raw("PatientAbsentEvent") publicado por #raw("Arrival & QR Check-in") y dispara el protocolo de reasignación.
#strong[Tecnología:] #raw("@EventListener") de Spring

#metadata((src: "README.md", line: 4100))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.3.3. Application Layer] <sec:2-6-3-3-application-layer>
#metadata((src: "README.md", line: 4102, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4104))
La #strong[Application Layer] orquesta los casos de uso mediante #strong[Command Services] y #strong[Query Services]. Los command services retornan #raw("Result<T, ApplicationError>") (patrón Result del módulo #raw("shared")), y los #strong[Event Handlers] viven en #raw("application/internal/eventhandlers/").

#heading(level: 5)[ReassignmentCommandService (Interface)] <sec:reassignmentcommandservice-interface>
#metadata((src: "README.md", line: 4106, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4108))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 4109))
- #raw("sendReassignmentOffer(command: SendReassignmentOfferCommand): Optional<Long>") — dispara la reasignación y devuelve el id de la oferta creada (vacío si no hay candidato).
- #raw("acceptReassignment(command: AcceptReassignmentCommand): Result<ReassignmentOffer, ApplicationError>")
- #raw("rejectReassignment(command: RejectReassignmentCommand): Result<ReassignmentOffer, ApplicationError>")

#metadata((src: "README.md", line: 4113))
#strong[Propósito:]
Define los comandos relacionados con la reasignación.

#metadata((src: "README.md", line: 4116))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReassignmentQueryService (Interface)] <sec:reassignmentqueryservice-interface>
#metadata((src: "README.md", line: 4118, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4120))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 4121))
- #raw("getPendingByAppointment(appointmentId: Long): List<ReassignmentOffer>")
- #raw("getById(id: Long): Optional<ReassignmentOffer>")

#metadata((src: "README.md", line: 4124))
#strong[Propósito:]
Define las consultas relacionadas con la reasignación.

#metadata((src: "README.md", line: 4127))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AppointmentLookupService (ACL \/ Outbound)] <sec:appointmentlookupservice-acl-outbound>
#metadata((src: "README.md", line: 4129, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4131))
#strong[Métodos:]

#metadata((src: "README.md", line: 4132))
- #raw("findNextCandidateByBookingOrder(freedTimeSlotId): Optional<Long>") — devuelve el #raw("appointmentId") del siguiente candidato por #raw("bookingOrder").
- #raw("timeSlotOfAppointment(appointmentId): Long") — devuelve el slot actual del candidato.

#metadata((src: "README.md", line: 4135))
#strong[Propósito:]
Puerto de acceso a #raw("Appointments & Booking"). Implementación en memoria (pendiente de conectar a la facade real).

#metadata((src: "README.md", line: 4138))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[HospitalConfigurationService (ACL \/ Outbound)] <sec:hospitalconfigurationservice-acl-outbound>
#metadata((src: "README.md", line: 4140, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4142))
#strong[Métodos:]

#metadata((src: "README.md", line: 4143))
- #raw("reassignmentResponseTimeoutMinutes(): int")

#metadata((src: "README.md", line: 4145))
#strong[Propósito:]
Puerto de acceso a #raw("Hospital Operations & Configuration") para la ventana única. Implementación en memoria (pendiente).

#metadata((src: "README.md", line: 4148))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReassignmentCommandServiceImpl (Implementation)] <sec:reassignmentcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 4150, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4152))
#strong[Responsabilidad:] Implementar los comandos de reasignación.

#metadata((src: "README.md", line: 4154))
#strong[Flujo de #raw("sendReassignmentOffer"):]

#metadata((src: "README.md", line: 4155))
+ Recibe #raw("originalAppointmentId") y #raw("freedTimeSlotId").
+ Busca el siguiente candidato con #raw("AppointmentLookupService.findNextCandidateByBookingOrder").
+ Si no hay candidato, no hace nada (el cupo se cierra).
+ Lee la ventana única con #raw("HospitalConfigurationService.reassignmentResponseTimeoutMinutes").
+ Calcula #raw("expiresAt = now + ventana") y obtiene #raw("candidateTimeSlotId").
+ Crea la oferta #raw("PENDING") con #raw("ReassignmentOffer.offer(...)") y la guarda (publica #raw("ReassignmentOfferSentEvent")).

#metadata((src: "README.md", line: 4162))
#strong[Flujo de #raw("acceptReassignment"):]

#metadata((src: "README.md", line: 4163))
+ Busca la oferta; valida que esté #raw("PENDING") y no expirada.
+ Llama #raw("accept()") (cambia a #raw("ACCEPTED")) y guarda (publica #raw("ReassignmentOfferAcceptedEvent")).
+ El handler de #raw("AcceptedEvent") libera el slot original del candidato y reinicia la cadena.

#metadata((src: "README.md", line: 4167))
#strong[Flujo de #raw("rejectReassignment"):]

#metadata((src: "README.md", line: 4168))
+ Busca la oferta; valida que esté #raw("PENDING").
+ Llama #raw("reject()") y guarda (publica #raw("ReassignmentOfferRejectedEvent")).

#metadata((src: "README.md", line: 4171))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[Event Handlers] <sec:event-handlers>
#metadata((src: "README.md", line: 4173, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4175))
- #strong[PatientAbsentEventHandler] — escucha #raw("PatientAbsentEvent") y dispara #raw("sendReassignmentOffer").
- #strong[ReassignmentOfferAcceptedEventHandler] — escucha #raw("AcceptedEvent") y re-ofrece el slot original del candidato (cadena).
- #strong[ReassignmentOfferRejectedEventHandler] — escucha #raw("RejectedEvent") y ofrece el mismo slot al siguiente candidato.
- #strong[ReassignmentOfferExpiredEventHandler] — escucha #raw("ExpiredEvent") y ofrece el mismo slot al siguiente candidato.
- #strong[ReassignmentOfferNoShowEventHandler] — escucha #raw("NoShowEvent") y cierra el cupo (Booking marcará la cita como ausente).

#metadata((src: "README.md", line: 4181))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.3.4. Infrastructure Layer] <sec:2-6-3-4-infrastructure-layer>
#metadata((src: "README.md", line: 4183, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4185))
La capa de #strong[Infrastructure] contiene las implementaciones concretas.

#heading(level: 5)[ReassignmentOfferRepositoryImpl] <sec:reassignmentofferrepositoryimpl>
#metadata((src: "README.md", line: 4187, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4188))
#strong[Implementa:] #raw("ReassignmentOfferRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("reassignment_offers") y publica los domain events del aggregate vía #raw("ApplicationEventPublisher") de Spring tras persistir.

#metadata((src: "README.md", line: 4193))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReassignmentExpirationScheduler] <sec:reassignmentexpirationscheduler>
#metadata((src: "README.md", line: 4195, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4196))
#strong[Función:]
Ejecuta periódicamente dos tareas: (1) expira las ofertas #raw("PENDING") cuya ventana venció, y (2) marca como #raw("ABSENT") las ofertas #raw("ACCEPTED") cuya ventana venció sin llegada.
#strong[Tecnología:] #raw("@Scheduled") de Spring

#metadata((src: "README.md", line: 4200))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[NotificationAdapter] <sec:notificationadapter-3>
#metadata((src: "README.md", line: 4202, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4203))
#strong[Función:]
Envía notificaciones de ofertas de reasignación al paciente (pendiente de implementación; se integrará consumiendo los domain events).
#strong[Tecnología:] SMTP + Firebase Cloud Messaging

#metadata((src: "README.md", line: 4207))
#pagebreak()

#metadata((src: "README.md", line: 4209))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.3.5. Bounded Context Software Architecture Component Level Diagrams] <sec:2-6-3-5-bounded-context-software-architecture-component-level-diagrams>
#metadata((src: "README.md", line: 4211, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4216))
#strong[Figura 51]

#metadata((src: "README.md", line: 4218))
#emph[Diagrama de componentes — Reassignment]

#metadata((src: "README.md", line: 4220, kind: "figure", img: "assets/reassignment_component_diagram.png"))
#block(breakable: false)[#fit-image("/assets/reassignment_component_diagram.png", alt: "Diagrama de componentes — Reassignment", width: 85%)]

#metadata((src: "README.md", line: 4222))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4225))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4226))
El diagrama de componentes del bounded context Reassignment muestra la organización interna del Backend API en sus cuatro capas. En la Interface Layer, el ReassignmentOffersController expone los endpoints REST para aceptar o rechazar ofertas, y el PatientAbsentEventConsumer escucha el evento de ausencia de Arrival. En la Application Layer, los Command Services y Query Services orquestan los casos de uso, junto con los Event Handlers que hacen avanzar la cadena de reasignación y los ACLs (AppointmentLookupService y HospitalConfigurationService). En la Domain Layer, el aggregate ReassignmentOffer encapsula las reglas de negocio, junto con el enum ReassignmentStatus, los domain events y la interfaz ReassignmentOfferRepository. En la Infrastructure Layer, los adapters implementan la persistencia con Spring Data JPA (ReassignmentOfferRepositoryImpl) y la expiración automática de ofertas (ReassignmentExpirationScheduler). La comunicación con la base de datos PostgreSQL se realiza mediante JDBC\/JPA, como se observa en la #link("#figura-51")[Figura 51].

#metadata((src: "README.md", line: 4228))
#pagebreak()

#heading(level: 4)[2.6.3.6. Bounded Context Software Architecture Code Level Diagrams] <sec:2-6-3-6-bounded-context-software-architecture-code-level-diagrams>
#metadata((src: "README.md", line: 4231, kind: "heading", level: 4))

#heading(level: 5)[2.6.3.6.1. Bounded Context Domain Layer Class Diagrams] <sec:2-6-3-6-1-bounded-context-domain-layer-class-diagrams>
#metadata((src: "README.md", line: 4233, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4238))
#strong[Figura 52]

#metadata((src: "README.md", line: 4240))
#emph[Diagrama de clases — Reassignment]

#metadata((src: "README.md", line: 4242, kind: "figure", img: "assets/reassignment_class_diagram.png"))
#block(breakable: false)[#fit-image("/assets/reassignment_class_diagram.png", alt: "Diagrama de clases — Reassignment", width: 85%)]

#metadata((src: "README.md", line: 4244))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4247))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4248))
El diagrama de clases del dominio del bounded context Reassignment representa el aggregate root ReassignmentOffer que encapsula el estado de la oferta, junto con el enum ReassignmentStatus que define los estados posibles (PENDING, ACCEPTED, REJECTED, EXPIRED, ATTENDED, ABSENT). Se muestran los seis Domain Events (records) que publica el aggregate (ReassignmentOfferSentEvent, ReassignmentOfferAcceptedEvent, ReassignmentOfferRejectedEvent, ReassignmentOfferExpiredEvent, ReassignmentOfferAttendedEvent, ReassignmentOfferNoShowEvent) y la interfaz ReassignmentOfferRepository, como se observa en la #link("#figura-52")[Figura 52].

#heading(level: 5)[2.6.3.6.2. Bounded Context Database Design Diagram] <sec:2-6-3-6-2-bounded-context-database-design-diagram>
#metadata((src: "README.md", line: 4250, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4255))
#strong[Figura 53]

#metadata((src: "README.md", line: 4257))
#emph[Diagrama de base de datos — Reassignment]

#metadata((src: "README.md", line: 4259, kind: "figure", img: "assets/reassignment_database_diagram.png"))
#block(breakable: false)[#fit-image("/assets/reassignment_database_diagram.png", alt: "Diagrama de base de datos — Reassignment", width: 85%)]

#metadata((src: "README.md", line: 4261))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4264))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4265))
El diagrama de base de datos del bounded context Reassignment muestra la tabla reassignment\_offers, que almacena las ofertas de reasignación enviadas a los pacientes de la cola de reserva. La tabla incluye dos foreign keys hacia appointments (el paciente candidato y la cita original liberada) y dos foreign keys hacia time\_slots (el cupo liberado y el slot actual del candidato), junto con el estado de la oferta y los timestamps de envío, respuesta y expiración, como se observa en la #link("#figura-53")[Figura 53].

#metadata((src: "README.md", line: 4267))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.6.4. Bounded Context: Arrival & QR Check-in] <sec:2-6-4-bounded-context-arrival-qr-check-in>
#metadata((src: "README.md", line: 4269, kind: "heading", level: 3))

#metadata((src: "README.md", line: 4271))
El #strong[bounded context de Arrival & QR Check-in] gestiona la llegada física del paciente al establecimiento de salud, la validación del código QR y la #strong[cola de asistencia] (#raw("attendance_queue")), que ordena a los pacientes por orden de llegada dentro de cada #raw("time_slot"). Cuando el paciente escanea el código QR, el sistema valida el token firmado por el propio backend, registra su presencia, lo ingresa a la cola de asistencia y emite el ticket digital con su posición. Si el paciente no se presenta dentro de la ventana de tolerancia o no responde al llamado, el sistema declara su ausencia y libera el cupo.

#heading(level: 4)[2.6.4.1. Domain Layer] <sec:2-6-4-1-domain-layer>
#metadata((src: "README.md", line: 4273, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4275))
La capa de #strong[Domain] representa el núcleo del negocio de llegada y check-in. Aquí se definen las entidades, value objects, enums, aggregates, factories, domain services e interfaces que encapsulan las reglas de la cola de asistencia y la validación de presencia.

#heading(level: 5)[CheckIn (Aggregate Root)] <sec:checkin-aggregate-root>
#metadata((src: "README.md", line: 4277, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4279))
#strong[Atributos:]
#raw("id"), #raw("idAppointment"), #raw("qrToken"), #raw("status: CheckInStatus"), #raw("checkedInAt")

#metadata((src: "README.md", line: 4282))
#strong[Métodos:]

#metadata((src: "README.md", line: 4283))
- #raw("isValid()") → retorna #raw("true") si el estado es #raw("VALID").
- #raw("expire()") → cambia el estado a #raw("EXPIRED").
- #raw("invalidate()") → cambia el estado a #raw("INVALID").

#metadata((src: "README.md", line: 4287))
#strong[Propósito:]
Representa la validación de presencia física del paciente. Es aggregate root porque controla el ciclo de vida del check-in.

#metadata((src: "README.md", line: 4290))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AttendanceQueue (Aggregate Root)] <sec:attendancequeue-aggregate-root>
#metadata((src: "README.md", line: 4292, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4294))
#strong[Atributos:]
#raw("id"), #raw("idTimeSlot"), #raw("date"), #raw("status: AttendanceQueueStatus")

#metadata((src: "README.md", line: 4297))
#strong[Métodos:]

#metadata((src: "README.md", line: 4298))
- #raw("open()") → cambia el estado a #raw("OPEN").
- #raw("close()") → cambia el estado a #raw("CLOSED").
- #raw("pause()") → cambia el estado a #raw("PAUSED").
- #raw("getEntriesOrdered()") → retorna las entradas ordenadas por #raw("position").

#metadata((src: "README.md", line: 4303))
#strong[Propósito:]
Representa la fila de asistencia de un #raw("time_slot") en una fecha. Es aggregate root porque agrupa las #raw("QueueEntry").

#metadata((src: "README.md", line: 4306))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueEntry (Entity)] <sec:queueentry-entity>
#metadata((src: "README.md", line: 4308, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4310))
#strong[Atributos:]
#raw("id"), #raw("idAttendanceQueue"), #raw("idCheckIn"), #raw("position"), #raw("status: QueueEntryStatus"), #raw("calledAt"), #raw("attendedAt")

#metadata((src: "README.md", line: 4313))
#strong[Métodos:]

#metadata((src: "README.md", line: 4314))
- #raw("call()") → cambia el estado a #raw("CALLED").
- #raw("startAttention()") → cambia el estado a #raw("IN_ATTENTION").
- #raw("markAsAttended()") → cambia el estado a #raw("ATTENDED").
- #raw("markAsAbsent()") → cambia el estado a #raw("ABSENT").
- #raw("isWaiting()") → retorna #raw("true") si el estado es #raw("WAITING").

#metadata((src: "README.md", line: 4320))
#strong[Propósito:]
Representa a cada persona en la fila de asistencia.

#metadata((src: "README.md", line: 4323))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueuePosition (Value Object)] <sec:queueposition-value-object>
#metadata((src: "README.md", line: 4325, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4327))
#strong[Atributos:]
#raw("value"), #raw("totalInQueue")

#metadata((src: "README.md", line: 4330))
#strong[Propósito:]
Encapsula la posición del paciente en la cola de asistencia. Es inmutable y se calcula por timestamp de check-in.

#metadata((src: "README.md", line: 4333))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInStatus (Enum)] <sec:checkinstatus-enum>
#metadata((src: "README.md", line: 4335, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4337))
#strong[Valores posibles:]
#raw("VALID"), #raw("EXPIRED"), #raw("INVALID")

#metadata((src: "README.md", line: 4340))
#strong[Propósito:]
Define el estado de la validación del check-in.

#metadata((src: "README.md", line: 4343))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AttendanceQueueStatus (Enum)] <sec:attendancequeuestatus-enum>
#metadata((src: "README.md", line: 4345, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4347))
#strong[Valores posibles:]
#raw("OPEN"), #raw("CLOSED"), #raw("PAUSED")

#metadata((src: "README.md", line: 4350))
#strong[Propósito:]
Define el estado de la fila de asistencia.

#metadata((src: "README.md", line: 4353))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueEntryStatus (Enum)] <sec:queueentrystatus-enum>
#metadata((src: "README.md", line: 4355, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4357))
#strong[Valores posibles:]
#raw("WAITING"), #raw("CALLED"), #raw("IN_ATTENTION"), #raw("ATTENDED"), #raw("ABSENT")

#metadata((src: "README.md", line: 4360))
#strong[Propósito:]
Define el estado de cada entrada en la cola de asistencia.

#metadata((src: "README.md", line: 4363))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInFactory (Factory)] <sec:checkinfactory-factory>
#metadata((src: "README.md", line: 4365, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4367))
#strong[Métodos:]

#metadata((src: "README.md", line: 4368))
- #raw("createCheckIn(appointment, qrToken): CheckIn")

#metadata((src: "README.md", line: 4370))
#strong[Propósito:]
Encapsula la creación de un check-in, validando que la cita exista.

#metadata((src: "README.md", line: 4373))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueDomainService (Domain Service)] <sec:queuedomainservice-domain-service>
#metadata((src: "README.md", line: 4375, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4377))
#strong[Métodos:]

#metadata((src: "README.md", line: 4378))
- #raw("calculatePosition(attendanceQueueId): Int")
- #raw("validateToleranceWindow(checkInTime, timeSlot): Boolean")

#metadata((src: "README.md", line: 4381))
#strong[Propósito:]
Encapsula la lógica de cálculo de posición en la cola y la validación de la ventana de tolerancia.

#metadata((src: "README.md", line: 4384))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInRepository (Interface)] <sec:checkinrepository-interface>
#metadata((src: "README.md", line: 4386, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4388))
#strong[Métodos:]

#metadata((src: "README.md", line: 4389))
- #raw("save(checkIn: CheckIn): CheckIn")
- #raw("findById(id: Int): CheckIn?")
- #raw("findByAppointment(appointmentId: Int): CheckIn?")
- #raw("findByQRToken(qrToken: String): CheckIn?")
- #raw("updateStatus(id: Int, status: CheckInStatus)")

#metadata((src: "README.md", line: 4395))
#strong[Propósito:]
Define las operaciones de persistencia para check-ins.

#metadata((src: "README.md", line: 4398))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AttendanceQueueRepository (Interface)] <sec:attendancequeuerepository-interface>
#metadata((src: "README.md", line: 4400, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4402))
#strong[Métodos:]

#metadata((src: "README.md", line: 4403))
- #raw("save(queue: AttendanceQueue): AttendanceQueue")
- #raw("findById(id: Int): AttendanceQueue?")
- #raw("findByTimeSlotAndDate(timeSlotId: Int, date: Date): AttendanceQueue?")
- #raw("createIfNotExists(timeSlotId: Int, date: Date): AttendanceQueue")
- #raw("updateStatus(id: Int, status: AttendanceQueueStatus)")

#metadata((src: "README.md", line: 4409))
#strong[Propósito:]
Define las operaciones de persistencia para colas de asistencia.

#metadata((src: "README.md", line: 4412))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueEntryRepository (Interface)] <sec:queueentryrepository-interface>
#metadata((src: "README.md", line: 4414, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4416))
#strong[Métodos:]

#metadata((src: "README.md", line: 4417))
- #raw("save(entry: QueueEntry): QueueEntry")
- #raw("findById(id: Int): QueueEntry?")
- #raw("findByAttendanceQueue(queueId: Int): List<QueueEntry>")
- #raw("getNextPosition(queueId: Int): Int")
- #raw("updateStatus(id: Int, status: QueueEntryStatus)")
- #raw("findExpiredCalledEntries(toleranceMinutes: Int): List<QueueEntry>")

#metadata((src: "README.md", line: 4424))
#strong[Propósito:]
Define las operaciones de persistencia para entradas de la cola.

#metadata((src: "README.md", line: 4427))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[EventPublisher (Interface)] <sec:eventpublisher-interface-2>
#metadata((src: "README.md", line: 4429, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4431))
#strong[Métodos:]

#metadata((src: "README.md", line: 4432))
- #raw("publish(event: DomainEvent)")

#metadata((src: "README.md", line: 4434))
#strong[Propósito:]
Define la interfaz para publicar eventos de dominio. La implementación concreta usa Spring Events.

#metadata((src: "README.md", line: 4437))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInCompletedEvent (Domain Event)] <sec:checkincompletedevent-domain-event>
#metadata((src: "README.md", line: 4439, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4441))
#strong[Atributos:]
#raw("checkInId"), #raw("appointmentId"), #raw("attendanceQueueId"), #raw("position"), #raw("completedAt")

#metadata((src: "README.md", line: 4444))
#strong[Propósito:]
Representa el hecho de negocio de que un paciente completó su check-in y fue ingresado a la cola de asistencia.

#metadata((src: "README.md", line: 4447))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientCalledEvent (Domain Event)] <sec:patientcalledevent-domain-event>
#metadata((src: "README.md", line: 4449, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4451))
#strong[Atributos:]
#raw("queueEntryId"), #raw("attendanceQueueId"), #raw("position"), #raw("calledAt")

#metadata((src: "README.md", line: 4454))
#strong[Propósito:]
Representa el hecho de negocio de que un paciente fue llamado a consultorio.

#metadata((src: "README.md", line: 4457))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientAbsentEvent (Domain Event)] <sec:patientabsentevent-domain-event>
#metadata((src: "README.md", line: 4459, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4461))
#strong[Atributos:]
#raw("queueEntryId"), #raw("appointmentId"), #raw("freedTimeSlotId"), #raw("absentAt")

#metadata((src: "README.md", line: 4464))
#strong[Propósito:]
Representa el hecho de negocio de que un paciente fue declarado ausente por no presentarse al llamado.

#metadata((src: "README.md", line: 4467))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.4.2. Interface Layer] <sec:2-6-4-2-interface-layer>
#metadata((src: "README.md", line: 4469, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4471))
La #strong[Interface Layer] expone las funcionalidades del bounded context mediante endpoints REST.

#heading(level: 5)[CheckInsController (REST API Controller)] <sec:checkinscontroller-rest-api-controller>
#metadata((src: "README.md", line: 4473, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4475))
#strong[Endpoints:]

#metadata((src: "README.md", line: 4476))
- #raw("POST /api/v1/check-ins/qr") → Valida el QR y registra el check-in.
- #raw("GET /api/v1/check-ins/{id}") → Obtiene el detalle del check-in.
- #raw("GET /api/v1/check-ins/appointment/{appointmentId}") → Obtiene el check-in de una cita.

#metadata((src: "README.md", line: 4480))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("CheckIn").

#metadata((src: "README.md", line: 4483))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AttendanceQueuesController (REST API Controller)] <sec:attendancequeuescontroller-rest-api-controller>
#metadata((src: "README.md", line: 4485, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4487))
#strong[Endpoints:]

#metadata((src: "README.md", line: 4488))
- #raw("GET /api/v1/attendance-queues/{id}") → Obtiene el estado de la cola.
- #raw("GET /api/v1/attendance-queues/{id}/entries") → Lista las entradas de la cola.
- #raw("POST /api/v1/attendance-queues/{id}/call-next") → Llama al siguiente paciente.

#metadata((src: "README.md", line: 4492))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("AttendanceQueue").

#metadata((src: "README.md", line: 4495))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueEntriesController (REST API Controller)] <sec:queueentriescontroller-rest-api-controller>
#metadata((src: "README.md", line: 4497, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4499))
#strong[Endpoints:]

#metadata((src: "README.md", line: 4500))
- #raw("GET /api/v1/queue-entries/{id}") → Obtiene el detalle de una entrada.
- #raw("POST /api/v1/queue-entries/{id}/absent") → Marca una entrada como ausente.

#metadata((src: "README.md", line: 4503))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre la entity #raw("QueueEntry").

#metadata((src: "README.md", line: 4506))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.4.3. Application Layer] <sec:2-6-4-3-application-layer>
#metadata((src: "README.md", line: 4508, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4510))
La #strong[Application Layer] orquesta los casos de uso del dominio mediante #strong[Command Services] y #strong[Query Services]. Los #strong[Command Handlers] viven dentro de los Command Services, y los #strong[Event Handlers] en #raw("application/internal/eventhandlers/").

#heading(level: 5)[CheckInCommandService (Interface)] <sec:checkincommandservice-interface>
#metadata((src: "README.md", line: 4512, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4514))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 4515))
- #raw("validateQR(command: ValidateQRCommand): CheckInResult")
- #raw("registerCheckIn(command: RegisterCheckInCommand): QueueEntry")
- #raw("declareAbsence(command: DeclareAbsenceCommand): void")
- #raw("detectAbsences(): void")

#metadata((src: "README.md", line: 4520))
#strong[Propósito:]
Define los comandos relacionados con el check-in.

#metadata((src: "README.md", line: 4523))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueCommandService (Interface)] <sec:queuecommandservice-interface>
#metadata((src: "README.md", line: 4525, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4527))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 4528))
- #raw("callNextPatient(command: CallNextPatientCommand): QueueEntry")

#metadata((src: "README.md", line: 4530))
#strong[Propósito:]
Define los comandos relacionados con la cola de asistencia.

#metadata((src: "README.md", line: 4533))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInQueryService (Interface)] <sec:checkinqueryservice-interface>
#metadata((src: "README.md", line: 4535, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4537))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 4538))
- #raw("getById(id: Int): CheckIn?")
- #raw("getByAppointment(appointmentId: Int): CheckIn?")

#metadata((src: "README.md", line: 4541))
#strong[Propósito:]
Define las consultas relacionadas con el check-in.

#metadata((src: "README.md", line: 4544))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueQueryService (Interface)] <sec:queuequeryservice-interface>
#metadata((src: "README.md", line: 4546, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4548))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 4549))
- #raw("getQueuePosition(checkInId: Int): QueuePosition")
- #raw("getQueueEntries(queueId: Int): List<QueueEntry>")

#metadata((src: "README.md", line: 4552))
#strong[Propósito:]
Define las consultas relacionadas con la cola.

#metadata((src: "README.md", line: 4555))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInCommandServiceImpl (Implementation)] <sec:checkincommandserviceimpl-implementation>
#metadata((src: "README.md", line: 4557, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4559))
#strong[Responsabilidad:] Implementar los comandos de check-in.

#metadata((src: "README.md", line: 4561))
#strong[Flujo de #raw("validateQR"):]

#metadata((src: "README.md", line: 4562))
+ Recibe #raw("qrToken").
+ Lee #raw("checkInToleranceMinutes") de la configuración.
+ Busca la cita asociada al QR.
+ Valida el estado y la ventana de tolerancia con #raw("QueueDomainService.validateToleranceWindow").
+ Retorna el resultado.

#metadata((src: "README.md", line: 4568))
#strong[Flujo de #raw("registerCheckIn"):]

#metadata((src: "README.md", line: 4569))
+ Crea el #raw("CheckIn") con estado #raw("VALID") usando #raw("CheckInFactory").
+ Crea o recupera la #raw("AttendanceQueue").
+ Calcula la #raw("position") con #raw("QueueDomainService.calculatePosition").
+ Crea el #raw("QueueEntry") con estado #raw("WAITING").
+ Actualiza la cita a #raw("CONFIRMED").
+ Publica el evento #raw("CheckInCompletedEvent").
+ Notifica al paciente con su posición.

#metadata((src: "README.md", line: 4577))
#strong[Flujo de #raw("declareAbsence"):]

#metadata((src: "README.md", line: 4578))
+ Lee #raw("postCallToleranceMinutes") de la configuración.
+ Valida que el #raw("QueueEntry") esté #raw("CALLED").
+ Cambia el estado a #raw("ABSENT").
+ Publica el evento #raw("PatientAbsentEvent").
+ Dispara la reasignación.

#metadata((src: "README.md", line: 4584))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueCommandServiceImpl (Implementation)] <sec:queuecommandserviceimpl-implementation>
#metadata((src: "README.md", line: 4586, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4588))
#strong[Responsabilidad:] Implementar los comandos de cola.

#metadata((src: "README.md", line: 4590))
#strong[Flujo de #raw("callNextPatient"):]

#metadata((src: "README.md", line: 4591))
+ Busca el primer #raw("QueueEntry") con estado #raw("WAITING").
+ Cambia su estado a #raw("CALLED").
+ Publica el evento #raw("PatientCalledEvent").
+ Notifica al paciente.

#metadata((src: "README.md", line: 4596))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[CheckInCompletedEventHandler (Event Handler)] <sec:checkincompletedeventhandler-event-handler>
#metadata((src: "README.md", line: 4598, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4600))
#strong[Responsabilidad:] Reaccionar al evento #raw("CheckInCompletedEvent").
#strong[Flujo:]

#metadata((src: "README.md", line: 4602))
+ Escucha el evento.
+ Notifica al paciente que ha sido ingresado a la cola.
+ Registra la acción en el log de auditoría.

#metadata((src: "README.md", line: 4606))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[PatientCalledEventHandler (Event Handler)] <sec:patientcalledeventhandler-event-handler>
#metadata((src: "README.md", line: 4608, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4610))
#strong[Responsabilidad:] Reaccionar al evento #raw("PatientCalledEvent").
#strong[Flujo:]

#metadata((src: "README.md", line: 4612))
+ Escucha el evento.
+ Envía una notificación push al paciente.
+ Registra la acción en el log de auditoría.

#metadata((src: "README.md", line: 4616))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.4.4. Infrastructure Layer] <sec:2-6-4-4-infrastructure-layer>
#metadata((src: "README.md", line: 4618, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4620))
La capa de #strong[Infrastructure] contiene las implementaciones concretas.

#heading(level: 5)[CheckInRepositoryImpl] <sec:checkinrepositoryimpl>
#metadata((src: "README.md", line: 4622, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4623))
#strong[Implementa:] #raw("CheckInRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("check_ins").

#metadata((src: "README.md", line: 4628))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AttendanceQueueRepositoryImpl] <sec:attendancequeuerepositoryimpl>
#metadata((src: "README.md", line: 4630, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4631))
#strong[Implementa:] #raw("AttendanceQueueRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("attendance_queues").

#metadata((src: "README.md", line: 4636))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[QueueEntryRepositoryImpl] <sec:queueentryrepositoryimpl>
#metadata((src: "README.md", line: 4638, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4639))
#strong[Implementa:] #raw("QueueEntryRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("queue_entries").

#metadata((src: "README.md", line: 4644))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[HospitalConfigurationRepositoryImpl] <sec:hospitalconfigurationrepositoryimpl>
#metadata((src: "README.md", line: 4646, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4647))
#strong[Implementa:] #raw("HospitalConfigurationRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Lee #raw("checkInToleranceMinutes"), #raw("postCallToleranceMinutes") y #raw("attendanceQueueVisible") de la configuración del hospital.

#metadata((src: "README.md", line: 4652))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[JwtQRValidator (Utility)] <sec:jwtqrvalidator-utility>
#metadata((src: "README.md", line: 4654, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4655))
#strong[Función:]
Valida el token QR firmado por el backend usando JWT.
#strong[Tecnología:] java-jwt \/ jjwt
#strong[Explicación:]
Verifica la firma y la expiración del #raw("qrToken") generado por el backend al confirmar la reserva. No se comunica con ningún sistema externo.

#metadata((src: "README.md", line: 4661))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[TicketGenerationAdapter] <sec:ticketgenerationadapter>
#metadata((src: "README.md", line: 4663, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4664))
#strong[Función:]
Genera el ticket digital con identificador de llamado y posición en la cola.
#strong[Tecnología:] iText \/ Kotlin PDF

#metadata((src: "README.md", line: 4668))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[NotificationAdapter] <sec:notificationadapter-4>
#metadata((src: "README.md", line: 4670, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4671))
#strong[Función:]
Envía notificaciones al paciente (check-in completado, llamado a consultorio).
#strong[Tecnología:] SMTP + Firebase Cloud Messaging

#metadata((src: "README.md", line: 4675))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpringEventPublisherImpl] <sec:springeventpublisherimpl-2>
#metadata((src: "README.md", line: 4677, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4678))
#strong[Implementa:] #raw("EventPublisher")
#strong[Función:]
Publica eventos de dominio usando Spring Events.
#strong[Tecnología:] #raw("ApplicationEventPublisher") de Spring

#metadata((src: "README.md", line: 4683))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[AbsenceDetectionScheduler] <sec:absencedetectionscheduler>
#metadata((src: "README.md", line: 4685, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4686))
#strong[Función:]
Ejecuta periódicamente #raw("detectAbsences") para detectar ausencias automáticamente.
#strong[Tecnología:] #raw("@Scheduled") de Spring

#metadata((src: "README.md", line: 4690))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.4.5. Bounded Context Software Architecture Component Level Diagrams] <sec:2-6-4-5-bounded-context-software-architecture-component-level-diagrams>
#metadata((src: "README.md", line: 4692, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4697))
#strong[Figura 54]

#metadata((src: "README.md", line: 4699))
#emph[Diagrama de componentes — Arrival]

#metadata((src: "README.md", line: 4701, kind: "figure", img: "assets/arrival_component_diagram.png"))
#block(breakable: false)[#fit-image("/assets/arrival_component_diagram.png", alt: "Diagrama de componentes — Arrival", width: 85%)]

#metadata((src: "README.md", line: 4703))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4706))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4707))
El diagrama de componentes del bounded context Arrival & QR Check-in muestra la organización interna del Backend API en sus cuatro capas. En la Interface Layer, los controladores CheckInsController, AttendanceQueuesController y QueueEntriesController exponen los endpoints REST para validar el QR, registrar el check-in y gestionar la cola de asistencia. En la Application Layer, los Command Services y Query Services orquestan los casos de uso, junto con los Event Handlers que reaccionan a los eventos de check-in completado y paciente llamado. En la Domain Layer, los aggregates CheckIn y AttendanceQueue encapsulan las reglas de negocio, junto con el QueueDomainService (que calcula la posición y valida la tolerancia) y las interfaces de repositorio. En la Infrastructure Layer, los adapters implementan la persistencia con Spring Data JPA (CheckInRepositoryImpl, AttendanceQueueRepositoryImpl, QueueEntryRepositoryImpl, HospitalConfigurationRepositoryImpl), la validación del QR firmado por el backend (JwtQRValidator), la generación del ticket digital (TicketGenerationAdapter), el envío de notificaciones (NotificationAdapter), la publicación de eventos con Spring Events (SpringEventPublisherImpl) y la detección automática de ausencias (AbsenceDetectionScheduler). La comunicación con la base de datos PostgreSQL se realiza mediante JDBC\/JPA, como se observa en la #link("#figura-54")[Figura 54].

#metadata((src: "README.md", line: 4708))
#pagebreak()

#heading(level: 4)[2.6.4.6. Bounded Context Software Architecture Code Level Diagrams] <sec:2-6-4-6-bounded-context-software-architecture-code-level-diagrams>
#metadata((src: "README.md", line: 4710, kind: "heading", level: 4))

#heading(level: 5)[2.6.4.6.1. Bounded Context Domain Layer Class Diagrams] <sec:2-6-4-6-1-bounded-context-domain-layer-class-diagrams>
#metadata((src: "README.md", line: 4712, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4717))
#strong[Figura 55]

#metadata((src: "README.md", line: 4719))
#emph[Diagrama de clases — Arrival]

#metadata((src: "README.md", line: 4721, kind: "figure", img: "assets/arrival_class_diagram.png"))
#block(breakable: false)[#fit-image("/assets/arrival_class_diagram.png", alt: "Diagrama de clases — Arrival", width: 85%)]

#metadata((src: "README.md", line: 4723))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4726))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4727))
El diagrama de clases del dominio del bounded context Arrival & QR Check-in representa los aggregates root CheckIn y AttendanceQueue, junto con la entity QueueEntry y el value object QueuePosition. Se muestran los enums CheckInStatus, AttendanceQueueStatus y QueueEntryStatus que definen los estados posibles de cada componente, la factory CheckInFactory que encapsula la creación de check-ins, el QueueDomainService que encapsula el cálculo de posición y la validación de la ventana de tolerancia, y las interfaces CheckInRepository, AttendanceQueueRepository, QueueEntryRepository y EventPublisher que definen los contratos de persistencia y publicación de eventos. Se muestran también los tres Domain Events que publica el aggregate: CheckInCompletedEvent, PatientCalledEvent y PatientAbsentEvent, como se observa en la #link("#figura-55")[Figura 55].

#metadata((src: "README.md", line: 4728))
#pagebreak()

#heading(level: 5)[2.6.4.6.2. Bounded Context Database Design Diagram] <sec:2-6-4-6-2-bounded-context-database-design-diagram>
#metadata((src: "README.md", line: 4730, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4735))
#strong[Figura 56]

#metadata((src: "README.md", line: 4737))
#emph[Diagrama de base de datos — Arrival]

#metadata((src: "README.md", line: 4739, kind: "figure", img: "assets/arrival_database_diagram.png"))
#block(breakable: false)[#fit-image("/assets/arrival_database_diagram.png", alt: "Diagrama de base de datos — Arrival", width: 85%)]

#metadata((src: "README.md", line: 4741))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4744))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 4745))
El diagrama de base de datos del bounded context Arrival & QR Check-in muestra las tablas check\_ins, attendance\_queues y queue\_entries, junto con sus columnas, claves primarias, claves foráneas y restricciones de unicidad. La tabla check\_ins almacena la validación de presencia del paciente con una foreign key hacia appointments. La tabla attendance\_queues representa la fila de asistencia por time\_slot y fecha, con una foreign key hacia time\_slots. La tabla queue\_entries almacena las entradas individuales de cada paciente en la cola, con foreign keys hacia attendance\_queues y check\_ins, y un campo position que determina el orden de atención por timestamp de check-in, como se observa en la #link("#figura-56")[Figura 56].

#metadata((src: "README.md", line: 4747))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[2.6.5. Bounded Context: Hospital Operations & Configuration] <sec:2-6-5-bounded-context-hospital-operations-configuration>
#metadata((src: "README.md", line: 4749, kind: "heading", level: 3))

#metadata((src: "README.md", line: 4751))
El #strong[bounded context de Hospital Operations & Configuration] gestiona la configuración operativa del establecimiento de salud y provee dashboards y reportes para monitorear la operación diaria, el ausentismo y la demanda de servicios. Parametriza el comportamiento de los demás bounded contexts mediante reglas configurables como la capacidad máxima por bloque horario, las tolerancias de check-in y post-llamado, el tiempo de respuesta para la reasignación y los plazos de reserva y cancelación.

#heading(level: 4)[2.6.5.1. Domain Layer] <sec:2-6-5-1-domain-layer>
#metadata((src: "README.md", line: 4753, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4755))
La capa de #strong[Domain] representa el núcleo del negocio de configuración y operación del hospital. Aquí se definen las entidades, value objects, enums e interfaces que encapsulan las reglas operativas.

#heading(level: 5)[HospitalConfiguration (Aggregate Root)] <sec:hospitalconfiguration-aggregate-root>
#metadata((src: "README.md", line: 4757, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4759))
#strong[Atributos:]
#raw("id"), #raw("maxCapacityPerSlot"), #raw("bookingOrderScope: BookingOrderScope"), #raw("checkInToleranceMinutes"), #raw("postCallToleranceMinutes"), #raw("reassignmentResponseTimeoutMin"), #raw("bookingCutoffTime"), #raw("cancellationDeadlineHours"), #raw("attendanceQueueVisible"), #raw("updatedAt")

#metadata((src: "README.md", line: 4762))
#strong[Métodos:]

#metadata((src: "README.md", line: 4763))
- #raw("updateMaxCapacity(value)") → valida que sea mayor a 0 y actualiza la capacidad máxima por bloque.
- #raw("updateTolerances(checkIn, postCall)") → valida que sean mayores o iguales a 0 y actualiza las tolerancias.
- #raw("updateReassignmentTimeout(value)") → valida que sea mayor o igual a 0 y actualiza el timeout de reasignación.
- #raw("updateBookingCutoffTime(value)") → actualiza la hora límite para reservar citas.
- #raw("updateCancellationDeadline(value)") → actualiza el plazo mínimo para cancelar citas.
- #raw("validate()") → valida que todos los parámetros sean coherentes entre sí.

#metadata((src: "README.md", line: 4770))
#strong[Propósito:]
Representa la configuración operativa del establecimiento. Es aggregate root porque agrupa todos los parámetros operativos que parametrizan el comportamiento de los demás bounded contexts.

#metadata((src: "README.md", line: 4773))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[BookingOrderScope (Enum)] <sec:bookingorderscope-enum>
#metadata((src: "README.md", line: 4775, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4777))
#strong[Valores posibles:]
#raw("GLOBAL"), #raw("PER_SPECIALTY")

#metadata((src: "README.md", line: 4780))
#strong[Propósito:]
Define si el #raw("bookingOrder") se calcula de forma global al establecimiento o por especialidad.

#metadata((src: "README.md", line: 4783))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[HospitalConfigurationRepository (Interface)] <sec:hospitalconfigurationrepository-interface>
#metadata((src: "README.md", line: 4785, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4787))
#strong[Métodos:]

#metadata((src: "README.md", line: 4788))
- #raw("save(config: HospitalConfiguration): HospitalConfiguration")
- #raw("findDefault(): HospitalConfiguration?")
- #raw("update(config: HospitalConfiguration): HospitalConfiguration")

#metadata((src: "README.md", line: 4792))
#strong[Propósito:]
Define las operaciones de persistencia para la configuración del hospital.

#metadata((src: "README.md", line: 4795))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[EventPublisher (Interface)] <sec:eventpublisher-interface-3>
#metadata((src: "README.md", line: 4797, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4799))
#strong[Métodos:]

#metadata((src: "README.md", line: 4800))
- #raw("publish(event: DomainEvent)")

#metadata((src: "README.md", line: 4802))
#strong[Propósito:]
Define la interfaz para publicar eventos de dominio. La implementación concreta usa Spring Events.

#metadata((src: "README.md", line: 4805))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.5.2. Interface Layer] <sec:2-6-5-2-interface-layer>
#metadata((src: "README.md", line: 4807, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4809))
La #strong[Interface Layer] expone las funcionalidades del bounded context mediante endpoints REST.

#heading(level: 5)[ConfigurationController (REST API Controller)] <sec:configurationcontroller-rest-api-controller>
#metadata((src: "README.md", line: 4811, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4813))
#strong[Endpoints:]

#metadata((src: "README.md", line: 4814))
- #raw("GET /api/v1/config") → Obtiene la configuración actual del hospital.
- #raw("PUT /api/v1/config") → Actualiza la configuración operativa.
- #raw("GET /api/v1/config/reports") → Genera un reporte operativo en PDF\/CSV.
- #raw("GET /api/v1/config/dashboard") → Obtiene métricas operativas del hospital.

#metadata((src: "README.md", line: 4819))
#strong[Explicación:]
Este controlador gestiona las operaciones sobre el aggregate #raw("HospitalConfiguration"), incluyendo la consulta y actualización de parámetros, la generación de reportes y la visualización de métricas en el dashboard.

#metadata((src: "README.md", line: 4822))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.5.3. Application Layer] <sec:2-6-5-3-application-layer>
#metadata((src: "README.md", line: 4824, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4826))
La #strong[Application Layer] orquesta los casos de uso del dominio mediante #strong[Command Services] y #strong[Query Services]. Los #strong[Command Handlers] viven dentro de los Command Services, y los #strong[Event Handlers] en #raw("application/internal/eventhandlers/").

#heading(level: 5)[ConfigurationCommandService (Interface)] <sec:configurationcommandservice-interface>
#metadata((src: "README.md", line: 4828, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4830))
#strong[Métodos (Command Handlers):]

#metadata((src: "README.md", line: 4831))
- #raw("updateConfiguration(command: UpdateConfigurationCommand): HospitalConfiguration")

#metadata((src: "README.md", line: 4833))
#strong[Propósito:]
Define los comandos relacionados con la configuración operativa.

#metadata((src: "README.md", line: 4836))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ConfigurationQueryService (Interface)] <sec:configurationqueryservice-interface>
#metadata((src: "README.md", line: 4838, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4840))
#strong[Métodos (Query Handlers):]

#metadata((src: "README.md", line: 4841))
- #raw("getConfiguration(): HospitalConfiguration?")
- #raw("generateReport(query: GenerateReportQuery): Report")
- #raw("getDashboard(query: GetDashboardQuery): Dashboard")

#metadata((src: "README.md", line: 4845))
#strong[Propósito:]
Define las consultas relacionadas con la configuración, reportes y dashboard.

#metadata((src: "README.md", line: 4848))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ConfigurationCommandServiceImpl (Implementation)] <sec:configurationcommandserviceimpl-implementation>
#metadata((src: "README.md", line: 4850, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4852))
#strong[Responsabilidad:] Implementar los comandos de configuración.

#metadata((src: "README.md", line: 4854))
#strong[Flujo de #raw("updateConfiguration"):]

#metadata((src: "README.md", line: 4855))
+ Recibe los nuevos parámetros de configuración.
+ Valida que los parámetros sean coherentes usando el método #raw("validate()") del aggregate.
+ Actualiza la configuración en el repositorio.
+ Publica el evento #raw("ConfigurationUpdatedEvent").
+ Retorna la configuración actualizada.

#metadata((src: "README.md", line: 4861))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ConfigurationUpdatedEventHandler (Event Handler)] <sec:configurationupdatedeventhandler-event-handler>
#metadata((src: "README.md", line: 4863, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4865))
#strong[Responsabilidad:] Reaccionar al evento #raw("ConfigurationUpdatedEvent").
#strong[Flujo:]

#metadata((src: "README.md", line: 4867))
+ Escucha el evento #raw("ConfigurationUpdatedEvent").
+ Actualiza la caché local de los bounded contexts que consumen la configuración.
+ Registra la acción en el log de auditoría.

#metadata((src: "README.md", line: 4871))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.5.4. Infrastructure Layer] <sec:2-6-5-4-infrastructure-layer>
#metadata((src: "README.md", line: 4873, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4875))
La capa de #strong[Infrastructure] contiene las implementaciones concretas.

#heading(level: 5)[HospitalConfigurationRepositoryImpl] <sec:hospitalconfigurationrepositoryimpl-2>
#metadata((src: "README.md", line: 4877, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4878))
#strong[Implementa:] #raw("HospitalConfigurationRepository")
#strong[Tecnología:] Spring Data JPA + PostgreSQL
#strong[Explicación:]
Ejecuta operaciones sobre la tabla #raw("hospital_configurations"). Como es un singleton, siempre retorna el único registro existente.

#metadata((src: "README.md", line: 4883))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[ReportGeneratorAdapter] <sec:reportgeneratoradapter>
#metadata((src: "README.md", line: 4885, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4886))
#strong[Función:]
Genera reportes operativos en formato PDF y CSV a partir de los datos de atención, ausentismo y demanda.
#strong[Tecnología:] iText \/ Apache POI

#metadata((src: "README.md", line: 4890))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 5)[SpringEventPublisherImpl] <sec:springeventpublisherimpl-3>
#metadata((src: "README.md", line: 4892, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4893))
#strong[Implementa:] #raw("EventPublisher")
#strong[Función:]
Publica eventos de dominio usando Spring Events.
#strong[Tecnología:] #raw("ApplicationEventPublisher") de Spring

#metadata((src: "README.md", line: 4898))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 4)[2.6.5.5. Bounded Context Software Architecture Component Level Diagrams] <sec:2-6-5-5-bounded-context-software-architecture-component-level-diagrams>
#metadata((src: "README.md", line: 4900, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4905))
#strong[Figura 57]

#metadata((src: "README.md", line: 4907))
#emph[Diagrama de componentes — Hospital Operations & Configuration]

#metadata((src: "README.md", line: 4909, kind: "figure", img: "assets/HospitalOperations_Configuration_component_diagram.png"))
#block(breakable: false)[#fit-image("/assets/HospitalOperations_Configuration_component_diagram.png", alt: "Diagrama de componentes — Hospital Operations &amp; Configuration", width: 85%)]

#metadata((src: "README.md", line: 4911))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4914))
El diagrama de componentes del bounded context Hospital Operations & Configuration muestra la organización interna del Backend API en sus cuatro capas. En la Interface Layer, el ConfigurationController expone los endpoints REST para consultar y actualizar la configuración, generar reportes y visualizar el dashboard. En la Application Layer, los Command Services y Query Services orquestan los casos de uso, junto con el ConfigurationUpdatedEventHandler que reacciona a los cambios de configuración. En la Domain Layer, el aggregate HospitalConfiguration encapsula las reglas operativas del establecimiento, junto con la interfaz HospitalConfigurationRepository. En la Infrastructure Layer, los adapters implementan la persistencia con Spring Data JPA (HospitalConfigurationRepositoryImpl), la generación de reportes (ReportGeneratorAdapter) y la publicación de eventos con Spring Events (SpringEventPublisherImpl). La comunicación con la base de datos PostgreSQL se realiza mediante JDBC\/JPA, como se observa en la #link("#figura-57")[Figura 57].

#metadata((src: "README.md", line: 4916))
#pagebreak()

#heading(level: 4)[2.6.5.6. Bounded Context Software Architecture Code Level Diagrams] <sec:2-6-5-6-bounded-context-software-architecture-code-level-diagrams>
#metadata((src: "README.md", line: 4919, kind: "heading", level: 4))

#heading(level: 5)[2.6.5.6.1. Bounded Context Domain Layer Class Diagrams] <sec:2-6-5-6-1-bounded-context-domain-layer-class-diagrams>
#metadata((src: "README.md", line: 4921, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4926))
#strong[Figura 58]

#metadata((src: "README.md", line: 4928))
#emph[Diagrama de clases — Hospital Operations & Configuration]

#metadata((src: "README.md", line: 4930, kind: "figure", img: "assets/HospitalOperations_Configuration_class_diagram.png"))
#block(breakable: false)[#fit-image("/assets/HospitalOperations_Configuration_class_diagram.png", alt: "Diagrama de clases — Hospital Operations &amp; Configuration", width: 85%)]

#metadata((src: "README.md", line: 4932))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4935))
El diagrama de clases del dominio del bounded context Hospital Operations & Configuration representa el aggregate root HospitalConfiguration que encapsula los parámetros operativos del establecimiento, junto con el enum BookingOrderScope que define el alcance del bookingOrder, la interfaz HospitalConfigurationRepository que define el contrato de persistencia y la interfaz EventPublisher que define el contrato para publicar eventos de dominio, como se observa en la #link("#figura-58")[Figura 58].

#heading(level: 5)[2.6.5.6.2. Bounded Context Database Design Diagram] <sec:2-6-5-6-2-bounded-context-database-design-diagram>
#metadata((src: "README.md", line: 4937, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4942))
#strong[Figura 59]

#metadata((src: "README.md", line: 4944))
#emph[Diagrama de base de datos — Hospital Operations & Configuration]

#metadata((src: "README.md", line: 4946, kind: "figure", img: "assets/HospitalOperations_Configuration_database_diagram.png"))
#block(breakable: false)[#fit-image("/assets/HospitalOperations_Configuration_database_diagram.png", alt: "Diagrama de base de datos — Hospital Operations &amp; Configuration", width: 85%)]

#metadata((src: "README.md", line: 4948))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4951))
El diagrama de base de datos del bounded context Hospital Operations & Configuration muestra la tabla hospital\_configurations, que almacena los parámetros operativos del establecimiento. La tabla es un singleton, es decir, contiene un único registro que define la configuración global del hospital. Los campos incluyen la capacidad máxima por bloque horario, el alcance del bookingOrder, las tolerancias de check-in y post-llamado, el timeout de reasignación, la hora de corte para reservas, el plazo de cancelación y la visibilidad de la cola de asistencia, como se observa en la #link("#figura-59")[Figura 59].

#metadata((src: "README.md", line: 4953))
#pagebreak()

#heading(level: 1)[Capítulo III: Solution UI\/UX Design] <sec:capitulo-iii-solution-ui-ux-design>
#metadata((src: "README.md", line: 4955, kind: "heading", level: 1))

#heading(level: 2)[3.1. Product design] <sec:3-1-product-design>
#metadata((src: "README.md", line: 4957, kind: "heading", level: 2))

#heading(level: 3)[3.1.1. Style Guidelines] <sec:3-1-1-style-guidelines>
#metadata((src: "README.md", line: 4959, kind: "heading", level: 3))

#heading(level: 4)[3.1.1.1. General Style Guidelines] <sec:3-1-1-1-general-style-guidelines>
#metadata((src: "README.md", line: 4961, kind: "heading", level: 4))

#metadata((src: "README.md", line: 4963))
Las presentes guías de estilo establecen los lineamientos visuales y de comunicación que rigen la identidad de #strong[SaludYa], producto digital desarrollado por la startup #strong[RuwaLabs]. Su propósito es garantizar consistencia en todos los productos de la solución (Landing Page, aplicaciones móviles para pacientes y personal de salud, y servicios web), facilitando el trabajo colaborativo del equipo y asegurando una experiencia coherente para los usuarios.

#metadata((src: "README.md", line: 4965))
Las decisiones aquí documentadas se sustentan en los principios de diseño inclusivo, accesibilidad (a11y) e internacionalización (i18n) establecidos en el proyecto, y toman como referencia buenas prácticas de Design Systems reconocidos, adaptadas al contexto de los establecimientos públicos de salud del Perú.

#heading(level: 5)[Branding] <sec:branding>
#metadata((src: "README.md", line: 4967, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4969))
La identidad de marca de SaludYa se construye sobre los siguientes elementos:

#metadata((src: "README.md", line: 4974))
#strong[Tabla 26]

#metadata((src: "README.md", line: 4976))
#emph[Branding]

#metadata((src: "README.md", line: 4978, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Elemento], [Descripción]),
  tline,
  [Nombre], [SaludYa],
  [Startup], [RuwaLabs],
  [Logotipo], [Isotipo con icono de salud (cruz\/maleta) en color primario, acompañado del nombre "SaludYa" en tipografía sans-serif],
  [Isotipo], [Símbolo gráfico que representa el acceso ágil a la salud, usado en favicon, app icon y elementos de navegación],
  [Tagline], ["Citas médicas sin colas para el Perú"],
  [Tono de comunicación], [Formal pero cercano, empático, claro y directo],
  [Público objetivo], [Pacientes de zonas urbanas periféricas y personal asistencial\/admini​strativo de establecimientos públicos de salud],
  [Valores de marca], [Accesibilidad, transparencia, colaboración e impacto social],
  tline,
)

#metadata((src: "README.md", line: 4990))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 4993))
El logotipo se utiliza en el header y footer del Landing Page, así como en las pantallas de inicio de sesión de ambas aplicaciones móviles. Su versión reducida (#raw("--logo-height-sm")) se emplea en contextos donde el espacio es limitado, como la versión móvil del Landing Page, como se detalla en la #link("#tabla-26")[Tabla 26].

#heading(level: 5)[Typography] <sec:typography>
#metadata((src: "README.md", line: 4995, kind: "heading", level: 5))

#metadata((src: "README.md", line: 4997))
La tipografía seleccionada prioriza la legibilidad en pantallas de distintos tamaños y en contextos de baja iluminación, frecuentes en establecimientos de salud.

#heading(level: 6)[Landing Page (web)] <sec:landing-page-web>
#metadata((src: "README.md", line: 4999, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5001))
#pagebreak()

#metadata((src: "README.md", line: 5005))
#strong[Tabla 27]

#metadata((src: "README.md", line: 5007))
#emph[Typography — Landing Page (web)]

#metadata((src: "README.md", line: 5009, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Elemento], [Fuente], [Tamaño], [Peso], [Uso]),
  tline,
  [Fuente base], [Segoe UI \/ Helvetica Neue \/ Arial], [1rem], [400], [Texto general, párrafos],
  [Fuente de títulos], [Segoe UI \/ Helvetica Neue \/ Arial], [Variable], [700], [Encabezados h1–h4],
  [h1], [—], [2.5rem], [700], [Título principal del Hero],
  [h2], [—], [2rem], [700], [Títulos de sección],
  [h3], [—], [1.35rem], [700], [Títulos de tarjetas y subsecciones],
  [h4], [—], [1.1rem], [600], [Subtítulos internos],
  [Interlineado], [—], [1.6], [—], [Cuerpo de texto],
  [Interlineado títulos], [—], [1.25], [—], [Encabezados],
  tline,
)

#metadata((src: "README.md", line: 5021))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5024))
La elección de fuentes del sistema (Segoe UI, Helvetica Neue, Arial) responde a criterios de rendimiento, disponibilidad multiplataforma y familiaridad para el usuario, evitando dependencias externas que afecten la carga del Landing Page, como se detalla en la #link("#tabla-27")[Tabla 27].

#heading(level: 6)[Aplicaciones móviles (Android)] <sec:aplicaciones-moviles-android>
#metadata((src: "README.md", line: 5026, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5031))
#strong[Tabla 28]

#metadata((src: "README.md", line: 5033))
#emph[Typography — Aplicaciones móviles (Android)]

#metadata((src: "README.md", line: 5035, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Elemento], [Fuente], [Tamaño], [Peso], [Uso]),
  tline,
  [Fuente base], [Inter], [Variable], [400], [Texto general],
  [Fuente de títulos], [Inter], [Variable], [600], [Encabezados y énfasis],
  [Body Bold Large], [Inter], [18sp \/ 150% (27sp)], [600], [Cuerpo destacado, títulos de tarjeta],
  [Body Extra Small], [Inter], [12sp \/ 150% (18sp)], [400], [Texto secundario, captions],
  tline,
)

#metadata((src: "README.md", line: 5043))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5046))
En las aplicaciones móviles se utiliza la familia #strong[Inter] con #raw("letter-spacing") negativo en textos destacados (#raw("-0.18px") en Body Bold Large) y #raw("font-feature-settings: 'calt' off") para desactivar ligaduras contextuales. Los tamaños se expresan en #strong[sp] (scale-independent pixels), conforme a las guías de Material Design para Android, como se detalla en la #link("#tabla-28")[Tabla 28].

#heading(level: 5)[Colors] <sec:colors>
#metadata((src: "README.md", line: 5048, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5050))
La paleta de colores de SaludYa se inspira en el sector salud, utilizando tonos verdes que transmiten confianza, bienestar y cercanía, complementados con un acento amarillo para elementos de foco y llamadas de atención.

#heading(level: 6)[Landing Page (web)] <sec:landing-page-web-2>
#metadata((src: "README.md", line: 5052, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5055))
La paleta establece los colores de marca y los tonos utilizados en fondos, textos y estados de los componentes; estos criterios se aplican a landing page (web), como se detalla en la #link("#tabla-29")[Tabla 29].

#metadata((src: "README.md", line: 5059))
#strong[Tabla 29]

#metadata((src: "README.md", line: 5061))
#emph[Colors — Landing Page (web)]

#metadata((src: "README.md", line: 5063, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Color], [Código HEX], [Uso principal]),
  tline,
  [Primario], [#raw("#0b8f6b")], [Botones, enlaces, iconos, acentos],
  [Primario oscuro], [#raw("#076e52")], [Hover de botones, títulos de tarjetas],
  [Primario claro], [#raw("#e6f5f0")], [Fondos de sección, hover de navegación],
  [Acento], [#raw("#ffb703")], [Foco visible, detalles de marca],
  [Texto], [#raw("#1c2b2a")], [Texto principal],
  [Texto atenuado], [#raw("#56706d")], [Párrafos secundarios, roles],
  [Fondo], [#raw("#ffffff")], [Fondo base],
  [Fondo alterno], [#raw("#f4faf8")], [Secciones alternas],
  [Borde], [#raw("#d8e6e2")], [Bordes de tarjetas y separadores],
  [Peligro], [#raw("#c0392b")], [Mensajes de error (formularios)],
  [Blanco], [#raw("#ffffff")], [Texto sobre fondos oscuros],
  [Footer], [#raw("#0d2722")], [Fondo del pie de página],
  tline,
)

#metadata((src: "README.md", line: 5079))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5083))
#strong[Figura 60]

#metadata((src: "README.md", line: 5085))
#emph[Paleta de colores del Landing Page de SaludYa]

#metadata((src: "README.md", line: 5087, kind: "figure", img: "assets/paleta-colores-landing.png"))
#figure(
  fit-image("/assets/paleta-colores-landing.png", width: 100%),
  caption: [Paleta de colores del Landing Page de SaludYa],
)

#metadata((src: "README.md", line: 5089))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 6)[Aplicaciones móviles (Android)] <sec:aplicaciones-moviles-android-2>
#metadata((src: "README.md", line: 5092, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5097))
#strong[Tabla 30]

#metadata((src: "README.md", line: 5099))
#emph[Colors — Aplicaciones móviles (Android)]

#metadata((src: "README.md", line: 5101, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Token], [Código HEX], [Uso principal]),
  tline,
  [WF White], [#raw("#FFFFFF")], [Fondo base, superficies],
  [WF 100], [#raw("#F7F9FC")], [Fondo alterno muy claro],
  [WF 200], [#raw("#EDF0F7")], [Fondos de tarjetas y contenedores],
  [WF 300], [#raw("#E2E7F0")], [Separadores suaves],
  [WF 400], [#raw("#CBD2E0")], [Bordes suaves, elementos inactivos],
  [WF 600], [#raw("#717D96")], [Texto secundario],
  [WF 700], [#raw("#4A5468")], [Texto de énfasis medio],
  [WF 800], [#raw("#2D3648")], [Texto principal, bordes],
  [WF 900], [#raw("#1A202C")], [Texto de máximo contraste],
  [Negro], [#raw("#000000")], [Texto en superficies claras],
  [Gris claro], [#raw("#D9D9D9")], [Placeholders, elementos deshabilitados],
  tline,
)

#metadata((src: "README.md", line: 5116))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5119))
Los colores fueron seleccionados para cumplir con el nivel de contraste #strong[WCAG AA], garantizando legibilidad para personas con baja visión o daltonismo, como se detalla en la #link("#tabla-30")[Tabla 30].

#heading(level: 5)[Spacing] <sec:spacing>
#metadata((src: "README.md", line: 5121, kind: "heading", level: 5))

#heading(level: 6)[Landing Page (web)] <sec:landing-page-web-3>
#metadata((src: "README.md", line: 5123, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5125))
Se define una escala de espaciado consistente basada en múltiplos de 0.25rem, aplicada a márgenes, padding y separación entre elementos en el Landing Page, como se detalla en la #link("#tabla-31")[Tabla 31].

#metadata((src: "README.md", line: 5130))
#strong[Tabla 31]

#metadata((src: "README.md", line: 5132))
#emph[Spacing — Landing Page (web)]

#metadata((src: "README.md", line: 5134, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Variable], [Valor], [Uso]),
  tline,
  [#raw("--space-1")], [0.25rem], [Separaciones mínimas],
  [#raw("--space-2")], [0.5rem], [Padding interno de botones pequeños],
  [#raw("--space-3")], [0.75rem], [Separación entre elementos inline],
  [#raw("--space-4")], [1rem], [Padding estándar],
  [#raw("--space-5")], [1.5rem], [Separación entre bloques],
  [#raw("--space-6")], [2rem], [Separación entre secciones],
  tline,
)

#metadata((src: "README.md", line: 5144))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 6)[Aplicaciones móviles (Android)] <sec:aplicaciones-moviles-android-3>
#metadata((src: "README.md", line: 5147, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5152))
#strong[Tabla 32]

#metadata((src: "README.md", line: 5154))
#emph[Spacing — Aplicaciones móviles (Android)]

#metadata((src: "README.md", line: 5156, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Token], [Valor], [Uso]),
  tline,
  [#raw("--space-1")], [2dp], [Separaciones mínimas, bordes internos],
  [#raw("--space-2")], [8dp], [Gap entre íconos y texto, separación inline],
  [#raw("--space-3")], [11dp], [Padding vertical de contenedores pequeños],
  [#raw("--space-4")], [12dp], [Padding interno de botones y cards],
  [#raw("--space-5")], [28dp], [Padding horizontal de secciones],
  [#raw("--space-6")], [45dp], [Separación entre bloques principales],
  tline,
)

#metadata((src: "README.md", line: 5166))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5169))
Los valores en #strong[dp] (density-independent pixels) provienen directamente de los tokens definidos en Figma y se aplican a padding, márgenes y gaps en las aplicaciones móviles, como se detalla en la #link("#tabla-32")[Tabla 32].

#heading(level: 5)[Border Radius] <sec:border-radius>
#metadata((src: "README.md", line: 5171, kind: "heading", level: 5))

#heading(level: 6)[Landing Page (web)] <sec:landing-page-web-4>
#metadata((src: "README.md", line: 5173, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5176))
Los radios de esquina mantienen una forma consistente en botones, tarjetas y otros contenedores de la interfaz; estos criterios se aplican a landing page (web), como se detalla en la #link("#tabla-33")[Tabla 33].

#metadata((src: "README.md", line: 5180))
#strong[Tabla 33]

#metadata((src: "README.md", line: 5182))
#emph[Border Radius — Landing Page (web)]

#metadata((src: "README.md", line: 5184, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Variable], [Valor], [Uso]),
  tline,
  [#raw("--radius-sm")], [6px], [Botones pequeños, badges],
  [#raw("--radius-md")], [12px], [Botones, tarjetas],
  [#raw("--radius-lg")], [20px], [Contenedores destacados, hero],
  tline,
)

#metadata((src: "README.md", line: 5191))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 6)[Aplicaciones móviles (Android)] <sec:aplicaciones-moviles-android-4>
#metadata((src: "README.md", line: 5194, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5199))
#strong[Tabla 34]

#metadata((src: "README.md", line: 5201))
#emph[Border Radius — Aplicaciones móviles (Android)]

#metadata((src: "README.md", line: 5203, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Token], [Valor], [Uso]),
  tline,
  [#raw("--radius-sm")], [12dp], [Cards superiores (radio superior únicamente)],
  [#raw("--radius-md")], [12dp], [Botones y contenedores estándar],
  tline,
)

#metadata((src: "README.md", line: 5209))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5212))
En las aplicaciones móviles los contenedores principales utilizan un radio superior de #strong[12dp] (#raw("border-radius: 12dp 12dp 0 0")), reservado para cards ancladas a la parte inferior de la pantalla, como se detalla en la #link("#tabla-34")[Tabla 34].

#heading(level: 5)[Shadows] <sec:shadows>
#metadata((src: "README.md", line: 5214, kind: "heading", level: 5))

#heading(level: 6)[Landing Page (web)] <sec:landing-page-web-5>
#metadata((src: "README.md", line: 5216, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5219))
Las sombras distinguen las superficies y refuerzan la jerarquía visual de tarjetas y elementos elevados; estos criterios se aplican a landing page (web), como se detalla en la #link("#tabla-35")[Tabla 35].

#metadata((src: "README.md", line: 5223))
#strong[Tabla 35]

#metadata((src: "README.md", line: 5225))
#emph[Shadows — Landing Page (web)]

#metadata((src: "README.md", line: 5227, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Variable], [Valor], [Uso]),
  tline,
  [#raw("--shadow-sm")], [#raw("0 1px 3px rgba(0, 0, 0, 0.08)")], [Tarjetas en reposo],
  [#raw("--shadow-md")], [#raw("0 6px 18px rgba(11, 143, 107, 0.12)")], [Tarjetas en hover, menú móvil],
  [#raw("--shadow-lg")], [#raw("0 12px 32px rgba(11, 143, 107, 0.18)")], [Hero, elementos destacados],
  tline,
)

#metadata((src: "README.md", line: 5234))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 6)[Aplicaciones móviles (Android)] <sec:aplicaciones-moviles-android-5>
#metadata((src: "README.md", line: 5237, kind: "heading", level: 6))

#metadata((src: "README.md", line: 5239))
Las aplicaciones móviles #strong[no emplean sombras] en su diseño actual. La jerarquía visual se resuelve mediante contraste de color, bordes y espaciado, siguiendo un enfoque flat consistente con los wireframes de alta fidelidad definidos en Figma.

#heading(level: 5)[Tone of Voice] <sec:tone-of-voice>
#metadata((src: "README.md", line: 5242, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5244))
El tono de comunicación de SaludYa se define a partir de cuatro dimensiones:

#metadata((src: "README.md", line: 5249))
#strong[Tabla 36]

#metadata((src: "README.md", line: 5251))
#emph[Tone of Voice]

#metadata((src: "README.md", line: 5253, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Dimensión], [Elección], [Justificación]),
  tline,
  [Divertido \/ Serio], [Serio con toques cercanos], [El contexto de salud requiere credibilidad, pero se busca cercanía con el paciente],
  [Formal \/ Casual], [Formal], [Se comunica con usuarios de diversos niveles educativos y con personal institucional],
  [Respetuoso \/ Irreverente], [Respetuoso], [Se aborda un tema sensible como la salud pública],
  [Entusiasta \/ Sereno], [Sereno], [Se transmite confianza y estabilidad, evitando promesas exageradas],
  tline,
)

#metadata((src: "README.md", line: 5261))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5264))
El lenguaje empleado en el Landing Page y las aplicaciones evita tecnicismos innecesarios, prioriza frases cortas y utiliza un vocabulario accesible para ambos segmentos objetivo, como se detalla en la #link("#tabla-36")[Tabla 36].

#heading(level: 5)[Iconography] <sec:iconography>
#metadata((src: "README.md", line: 5266, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5268))
Se utiliza la librería #strong[Font Awesome 6.5.2] para la iconografía del Landing Page, seleccionando iconos universales y reconocibles, como se detalla en la #link("#tabla-37")[Tabla 37]:

#metadata((src: "README.md", line: 5273))
#strong[Tabla 37]

#metadata((src: "README.md", line: 5275))
#emph[Iconography]

#metadata((src: "README.md", line: 5277, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Icono], [Uso]),
  tline,
  [#raw("fa-circle-check")], [Bullets de beneficios en el Hero],
  [#raw("fa-bullseye")], [Misión en la sección Sobre nosotros],
  [#raw("fa-eye")], [Visión en la sección Sobre nosotros],
  [#raw("fa-universal-access")], [Valor de accesibilidad],
  [#raw("fa-shield-halved")], [Valor de transparencia],
  [#raw("fa-handshake")], [Valor de colaboración],
  [#raw("fa-heart-pulse")], [Valor de impacto social],
  tline,
)

#metadata((src: "README.md", line: 5288))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Design System de referencia] <sec:design-system-de-referencia>
#metadata((src: "README.md", line: 5291, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5293))
Las decisiones visuales de SaludYa toman como referencia principios de #strong[Material Design] (jerarquía, elevación, uso del color) y buenas prácticas de Design Systems accesibles, adaptadas al contexto peruano y a las restricciones técnicas del proyecto (rendimiento en redes móviles, compatibilidad con dispositivos de gama media y baja).

#heading(level: 3)[3.1.2. Information Architecture] <sec:3-1-2-information-architecture>
#metadata((src: "README.md", line: 5295, kind: "heading", level: 3))

#metadata((src: "README.md", line: 5297))
La arquitectura de información de #strong[SaludYa] define la manera en que se organiza, etiqueta, navega y busca el contenido en los productos digitales que forman parte de la solución: el Landing Page, la aplicación móvil para pacientes y la aplicación móvil para el personal de salud. Su objetivo es que los visitantes y usuarios encuentren sin esfuerzo la información o funcionalidad que necesitan, reduciendo la carga cognitiva y facilitando la adopción del producto.

#metadata((src: "README.md", line: 5299))
Las decisiones aquí documentadas se sustentan en los principios de diseño inclusivo, accesibilidad (a11y) e internacionalización (i18n), y consideran las características de ambos segmentos objetivo: pacientes de zonas urbanas periféricas y personal asistencial y administrativo de establecimientos públicos de salud.

#heading(level: 4)[3.1.2.1. Organization Systems] <sec:3-1-2-1-organization-systems>
#metadata((src: "README.md", line: 5301, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5303))
La organización del contenido en SaludYa combina distintos sistemas según el tipo de información y el objetivo del usuario en cada producto. Se aplican principios de organización visual (jerárquica, secuencial y matricial) y esquemas de categorización (alfabético, cronológico, por tópicos y según audiencia), buscando siempre reducir la carga cognitiva y facilitar el acceso a la información.

#heading(level: 5)[Landing Page] <sec:landing-page>
#metadata((src: "README.md", line: 5305, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5308))
La organización de las secciones agrupa la información según las tareas del usuario y define la jerarquía de acceso a cada función; estos criterios se aplican a landing page, como se detalla en la #link("#tabla-38")[Tabla 38].

#metadata((src: "README.md", line: 5312))
#strong[Tabla 38]

#metadata((src: "README.md", line: 5314))
#emph[Organization Systems — Landing Page]

#metadata((src: "README.md", line: 5316, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Sección], [Sistema de organización visual], [Esquema de categorización], [Justificación]),
  tline,
  [Header], [Jerárquico + matricial], [Por tópicos], [Menú horizontal con enlaces principales y selector de idioma; organización matricial por categorías de contenido],
  [Hero], [Jerárquico], [Por tópicos], [Prioriza mensaje principal, subtítulo, CTAs y beneficios en orden de importancia],
  [Problema], [Jerárquico], [Por tópicos], [Tres tarjetas con igual jerarquía, organizadas por tema],
  [Solución], [Jerárquico], [Según audiencia], [Dos bloques comparativos (paciente vs. personal) con listas de funcionalidades],
  [Videos], [Secuencial], [Cronológico], [Dos bloques secuenciales: About the Product y About the Team],
  [Modelo de negocio], [Jerárquico], [Por tópicos], [Tres tarjetas con igual jerarquía],
  [Testimonios], [Matricial], [Alfabético], [Seis tarjetas organizadas por nombre del entrevistado],
  [Sobre nosotros], [Jerárquico], [Por tópicos], [Misión, visión, valores y equipo en orden de relevancia],
  [Descarga], [Jerárquico], [Por tópicos], [Botones de tiendas como acción principal],
  [Footer], [Jerárquico], [Por tópicos], [Cuatro columnas organizadas por categoría (marca, enlaces, proyecto, contacto)],
  tline,
)

#metadata((src: "README.md", line: 5330))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para pacientes] <sec:aplicacion-movil-para-pacientes>
#metadata((src: "README.md", line: 5333, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5336))
La organización de las secciones agrupa la información según las tareas del usuario y define la jerarquía de acceso a cada función; estos criterios se aplican a aplicación móvil para pacientes, como se detalla en la #link("#tabla-39")[Tabla 39].

#metadata((src: "README.md", line: 5340))
#strong[Tabla 39]

#metadata((src: "README.md", line: 5342))
#emph[Organization Systems — Aplicación móvil para pacientes]

#metadata((src: "README.md", line: 5344, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Sección], [Sistema de organización visual], [Esquema de categorización], [Justificación]),
  tline,
  [Inicio], [Jerárquico], [Por tópicos], [Accesos rápidos a reserva, lista de espera y citas próximas],
  [Reserva de citas], [Secuencial (step-by-step)], [Cronológico], [Flujo paso a paso: especialidad → establecimiento → fecha → confirmación],
  [Lista de espera], [Secuencial], [Cronológico], [Orden por fecha de inscripción y disponibilidad],
  [Mis citas], [Jerárquico], [Cronológico], [Orden por fecha de atención],
  [Familiares a cargo], [Jerárquico], [Alfabético], [Orden por nombre del familiar],
  [Perfil], [Jerárquico], [Por tópicos], [Datos personales, notificaciones y configuración],
  tline,
)

#metadata((src: "README.md", line: 5354))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para personal de salud] <sec:aplicacion-movil-para-personal-de-salud>
#metadata((src: "README.md", line: 5357, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5360))
La organización de las secciones agrupa la información según las tareas del usuario y define la jerarquía de acceso a cada función; estos criterios se aplican a aplicación móvil para personal de salud, como se detalla en la #link("#tabla-40")[Tabla 40].

#metadata((src: "README.md", line: 5361))
#pagebreak()

#metadata((src: "README.md", line: 5365))
#strong[Tabla 40]

#metadata((src: "README.md", line: 5367))
#emph[Organization Systems — Aplicación móvil para personal de salud]

#metadata((src: "README.md", line: 5369, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Sección], [Sistema de organización visual], [Esquema de categorización], [Justificación]),
  tline,
  [Panel principal], [Jerárquico], [Por tópicos], [Resumen del flujo de atención del día],
  [Gestión de citas], [Jerárquico], [Cronológico], [Orden por hora de atención],
  [Lista de espera], [Secuencial], [Cronológico], [Orden por fecha de inscripción],
  [Cancelaciones e inasistencias], [Jerárquico], [Cronológico], [Orden por fecha del evento],
  [Pacientes], [Jerárquico], [Alfabético], [Orden por apellido],
  [Reportes], [Jerárquico], [Cronológico], [Acceso a métricas y exportación por fecha],
  tline,
)

#metadata((src: "README.md", line: 5379))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Esquemas de categorización aplicados] <sec:esquemas-de-categorizacion-aplicados>
#metadata((src: "README.md", line: 5382, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5384))
- #strong[Alfabético:] testimonios en el Landing Page, pacientes y familiares a cargo en las aplicaciones.
- #strong[Cronológico:] citas, lista de espera, cancelaciones, reportes y videos.
- #strong[Por tópicos:] secciones del Landing Page (problema, solución, modelo de negocio, equipo) y pantallas principales de las aplicaciones.
- #strong[Según audiencia:] separación entre la app para pacientes y la app para personal de salud, y bloques diferenciados en la sección Solución del Landing Page.
- #strong[Jerárquico:] estructura general de navegación en todos los productos, priorizando la información más relevante para el usuario.
- #strong[Secuencial:] flujos paso a paso en la reserva de citas y en la inscripción a la lista de espera.
- #strong[Matricial:] grid de testimonios en el Landing Page, donde el usuario puede explorar varias tarjetas sin un orden estricto.

#heading(level: 4)[3.1.2.2. Labelling Systems] <sec:3-1-2-2-labelling-systems>
#metadata((src: "README.md", line: 5392, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5394))
Las etiquetas de SaludYa buscan ser simples, claras y libres de ambigüedad, empleando el mínimo número de palabras posible y un vocabulario accesible para ambos segmentos objetivo. Se prioriza el uso de términos del dominio de la salud y de la gestión de citas, evitando tecnicismos innecesarios y anglicismos.

#heading(level: 5)[Landing Page] <sec:landing-page-2>
#metadata((src: "README.md", line: 5396, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5399))
Las etiquetas permiten reconocer las secciones y acciones mediante nombres que expresan su función dentro de la aplicación; estos criterios se aplican a landing page, como se detalla en la #link("#tabla-41")[Tabla 41].

#metadata((src: "README.md", line: 5403))
#strong[Tabla 41]

#metadata((src: "README.md", line: 5405))
#emph[Labelling Systems — Landing Page]

#metadata((src: "README.md", line: 5407, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Etiqueta], [Representa]),
  tline,
  [Producto], [Sección con el problema y la solución],
  [Videos], [Bloque con los videos About the Product y About the Team],
  [Testimonios], [Citas de entrevistados],
  [Sobre nosotros], [Información de la startup y el equipo],
  [Descargar app], [CTA principal hacia las tiendas],
  [ES \/ EN], [Selector de idioma],
  [Google Play], [Botón de descarga para Android],
  [App Store], [Botón de descarga para iOS],
  tline,
)

#metadata((src: "README.md", line: 5419))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para pacientes] <sec:aplicacion-movil-para-pacientes-2>
#metadata((src: "README.md", line: 5422, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5425))
Las etiquetas permiten reconocer las secciones y acciones mediante nombres que expresan su función dentro de la aplicación; estos criterios se aplican a aplicación móvil para pacientes, como se detalla en la #link("#tabla-42")[Tabla 42].

#metadata((src: "README.md", line: 5429))
#strong[Tabla 42]

#metadata((src: "README.md", line: 5431))
#emph[Labelling Systems — Aplicación móvil para pacientes]

#metadata((src: "README.md", line: 5433, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Etiqueta], [Representa]),
  tline,
  [Inicio], [Pantalla principal con accesos rápidos],
  [Reservar cita], [Inicio del flujo de reserva],
  [Lista de espera], [Inscripción y seguimiento de cupos],
  [Mis citas], [Citas reservadas por el paciente],
  [Familiares], [Gestión de dependientes],
  [Perfil], [Datos personales y configuración],
  [Check-in QR], [Acceso rápido el día de la cita],
  tline,
)

#metadata((src: "README.md", line: 5444))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para personal de salud] <sec:aplicacion-movil-para-personal-de-salud-2>
#metadata((src: "README.md", line: 5447, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5450))
Las etiquetas permiten reconocer las secciones y acciones mediante nombres que expresan su función dentro de la aplicación; estos criterios se aplican a aplicación móvil para personal de salud, como se detalla en la #link("#tabla-43")[Tabla 43].

#metadata((src: "README.md", line: 5454))
#strong[Tabla 43]

#metadata((src: "README.md", line: 5456))
#emph[Labelling Systems — Aplicación móvil para personal de salud]

#metadata((src: "README.md", line: 5458, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Etiqueta], [Representa]),
  tline,
  [Panel], [Resumen del día],
  [Citas], [Gestión de citas del establecimiento],
  [Lista de espera], [Pacientes en espera de cupo],
  [Cancelaciones], [Registro de cancelaciones e inasistencias],
  [Pacientes], [Búsqueda y consulta de pacientes],
  [Reportes], [Métricas y exportación],
  [Reasignar cupo], [Acción sobre cupos liberados],
  tline,
)

#metadata((src: "README.md", line: 5469))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Asociaciones entre etiquetas] <sec:asociaciones-entre-etiquetas>
#metadata((src: "README.md", line: 5472, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5474))
- #strong[Reservar cita] se asocia con #strong[Lista de espera] cuando no hay cupos disponibles.
- #strong[Mis citas] se asocia con #strong[Cancelaciones] en la app del personal.
- #strong[Familiares] se asocia con #strong[Reservar cita] para agendar a nombre de un dependiente.
- #strong[Perfil] se asocia con #strong[Notificaciones] y #strong[Configuración].
- #strong[Check-in QR] se asocia con #strong[Mis citas] el día de la atención.

#heading(level: 4)[3.1.2.3. SEO Tags and Meta Tags] <sec:3-1-2-3-seo-tags-and-meta-tags>
#metadata((src: "README.md", line: 5480, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5482))
Los SEO Tags y Meta Tags del Landing Page se definen en el #raw("<head>") del documento y buscan posicionar el sitio en buscadores para consultas relacionadas con citas médicas en establecimientos públicos de salud del Perú. Asimismo, se definen los elementos de ASO (App Store Optimization) para las aplicaciones móviles publicadas en Google Play y App Store.

#heading(level: 5)[Landing Page] <sec:landing-page-3>
#metadata((src: "README.md", line: 5484, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5487))
Los títulos, las descripciones y los metadatos identifican SaludYa y describen su propuesta de valor en buscadores y tiendas de aplicaciones; estos criterios se aplican a landing page, como se detalla en la #link("#tabla-44")[Tabla 44].

#metadata((src: "README.md", line: 5491))
#strong[Tabla 44]

#metadata((src: "README.md", line: 5493))
#emph[SEO Tags and Meta Tags — Landing Page]

#metadata((src: "README.md", line: 5495, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Tag], [Valor]),
  tline,
  [Title], [SaludYa — Citas médicas sin colas],
  [Meta Description], [SaludYa — Plataforma digital que conecta pacientes y personal de establecimientos públicos de salud en Perú. Reserva de citas, lista de espera dinámica y check-in por QR.],
  [Meta Keywords], [SaludYa, citas médicas, MINSA, SIS, salud pública Perú, reserva de citas, lista de espera, RuwaLabs],
  [Meta Author], [RuwaLabs],
  [Meta Robots], [index, follow],
  [Open Graph Title], [SaludYa — Citas médicas sin colas],
  [Open Graph Description], [Reserva tu cita, recibe avisos de cupos liberados y llega justo a tu atención. Para pacientes y personal de establecimientos públicos de salud.],
  [Open Graph Image], [#raw("assets/img/icon-saludya.png")],
  [Open Graph Type], [website],
  [Open Graph URL], [#link("https://ruwalabs.github.io/saludya-landing/")[https:\/\/ruwalabs.github.io\/saludya-landing\/]],
  [Twitter Card], [summary\_large\_image],
  [Twitter Title], [SaludYa — Citas médicas sin colas],
  [Twitter Description], [Reserva de citas, lista de espera dinámica y check-in por QR para establecimientos públicos de salud.],
  [Twitter Image], [#raw("assets/img/icon-saludya.png")],
  tline,
)

#metadata((src: "README.md", line: 5513))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[ASO (App Store Optimization)] <sec:aso-app-store-optimization>
#metadata((src: "README.md", line: 5516, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5519))
Los títulos, las descripciones y los metadatos identifican SaludYa y describen su propuesta de valor en buscadores y tiendas de aplicaciones; estos criterios se aplican a aso (app store optimization), como se detalla en la #link("#tabla-45")[Tabla 45].

#metadata((src: "README.md", line: 5520))
#pagebreak()

#metadata((src: "README.md", line: 5524))
#strong[Tabla 45]

#metadata((src: "README.md", line: 5526))
#emph[SEO Tags and Meta Tags — ASO (App Store Optimization)]

#metadata((src: "README.md", line: 5528, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Elemento], [App pacientes], [App personal de salud]),
  tline,
  [App Title], [SaludYa — Citas médicas], [SaludYa Staff — Gestión de citas],
  [App Subtitle], [Reserva sin colas], [Gestión del flujo de atención],
  [App Keywords], [citas médicas, MINSA, SIS, salud pública, reserva, lista de espera], [gestión de citas, personal de salud, MINSA, SIS, flujo de atención],
  [App Description], [Reserva tu cita en establecimientos públicos de salud, recibe avisos de cupos liberados y gestiona a tus familiares a cargo.], [Administra las citas, la lista de espera y el flujo de atención de tu establecimiento de salud en tiempo real.],
  tline,
)

#metadata((src: "README.md", line: 5536))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[3.1.2.4. Searching Systems] <sec:3-1-2-4-searching-systems>
#metadata((src: "README.md", line: 5539, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5541))
Los sistemas de búsqueda de SaludYa están diseñados para evitar que el usuario se pierda entre el volumen de información, ofreciendo filtros claros, resultados consistentes y opciones de acción directa sobre los elementos encontrados.

#heading(level: 5)[Landing Page] <sec:landing-page-4>
#metadata((src: "README.md", line: 5543, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5546))
Las opciones de búsqueda relacionan las consultas del usuario con los filtros disponibles y los resultados que ofrece cada sección; estos criterios se aplican a landing page, como se detalla en la #link("#tabla-46")[Tabla 46].

#metadata((src: "README.md", line: 5550))
#strong[Tabla 46]

#metadata((src: "README.md", line: 5552))
#emph[Searching Systems — Landing Page]

#metadata((src: "README.md", line: 5554, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Acción], [Descripción]),
  tline,
  [Navegación por anclas], [Enlaces del header que llevan a secciones específicas (Producto, Videos, Testimonios, Sobre nosotros)],
  [Selector de idioma], [Búsqueda de contenido en ES o EN],
  [Scroll suave], [Desplazamiento con compensación de altura del header],
  tline,
)

#metadata((src: "README.md", line: 5561))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para pacientes] <sec:aplicacion-movil-para-pacientes-3>
#metadata((src: "README.md", line: 5564, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5567))
Las opciones de búsqueda relacionan las consultas del usuario con los filtros disponibles y los resultados que ofrece cada sección; estos criterios se aplican a aplicación móvil para pacientes, como se detalla en la #link("#tabla-47")[Tabla 47].

#metadata((src: "README.md", line: 5571))
#strong[Tabla 47]

#metadata((src: "README.md", line: 5573))
#emph[Searching Systems — Aplicación móvil para pacientes]

#metadata((src: "README.md", line: 5575, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Búsqueda], [Filtros disponibles], [Resultado]),
  tline,
  [Buscar establecimiento], [Distrito, especialidad], [Lista de establecimientos con disponibilidad],
  [Buscar especialidad], [Establecimiento, disponibilidad], [Lista de especialidades y cupos],
  [Buscar cita], [Fecha, especialidad, establecimiento], [Lista de citas reservadas],
  [Buscar familiar], [Nombre], [Ficha del familiar a cargo],
  tline,
)

#metadata((src: "README.md", line: 5583))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para personal de salud] <sec:aplicacion-movil-para-personal-de-salud-3>
#metadata((src: "README.md", line: 5586, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5589))
Las opciones de búsqueda relacionan las consultas del usuario con los filtros disponibles y los resultados que ofrece cada sección; estos criterios se aplican a aplicación móvil para personal de salud, como se detalla en la #link("#tabla-48")[Tabla 48].

#metadata((src: "README.md", line: 5593))
#strong[Tabla 48]

#metadata((src: "README.md", line: 5595))
#emph[Searching Systems — Aplicación móvil para personal de salud]

#metadata((src: "README.md", line: 5597, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Búsqueda], [Filtros disponibles], [Resultado]),
  tline,
  [Buscar paciente], [Apellido, DNI, historia clínica], [Ficha del paciente],
  [Buscar cita], [Fecha, especialidad, estado], [Lista de citas],
  [Buscar cancelación], [Fecha, especialidad], [Registro de cancelaciones],
  [Buscar cupo liberado], [Fecha, especialidad], [Lista de cupos disponibles],
  tline,
)

#metadata((src: "README.md", line: 5605))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Visualización de resultados] <sec:visualizacion-de-resultados>
#metadata((src: "README.md", line: 5608, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5610))
Los resultados se muestran en listas ordenadas cronológica o alfabéticamente, con indicadores visuales de estado (disponible, reservado, cancelado, atendido) y opciones de acción directa (reservar, cancelar, confirmar).

#heading(level: 4)[3.1.2.5. Navigation Systems] <sec:3-1-2-5-navigation-systems>
#metadata((src: "README.md", line: 5612, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5614))
Los sistemas de navegación de SaludYa guían al usuario a través del Landing Page y las aplicaciones móviles, permitiéndole cumplir sus metas e interactuar de forma satisfactoria con el producto. Las decisiones de navegación se alinean con la arquitectura de información y los sistemas de búsqueda previamente definidos.

#heading(level: 5)[Landing Page] <sec:landing-page-5>
#metadata((src: "README.md", line: 5616, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5619))
La navegación conecta las secciones mediante accesos, menús y recorridos que permiten completar las tareas del usuario; estos criterios se aplican a landing page, como se detalla en la #link("#tabla-49")[Tabla 49].

#metadata((src: "README.md", line: 5623))
#strong[Tabla 49]

#metadata((src: "README.md", line: 5625))
#emph[Navigation Systems — Landing Page]

#metadata((src: "README.md", line: 5627, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Acción], [Descripción]),
  tline,
  [Navegación sticky], [El header permanece visible al hacer scroll],
  [Menú de anclas], [Enlaces directos a secciones],
  [Botón hamburguesa], [En vista móvil, despliega el menú verticalmente],
  [Scroll suave], [Desplazamiento con compensación del header],
  [Enlace activo], [Resaltado del enlace correspondiente a la sección visible],
  [Selector de idioma], [Cambio dinámico ES\/EN sin recargar la página],
  tline,
)

#metadata((src: "README.md", line: 5637))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para pacientes] <sec:aplicacion-movil-para-pacientes-4>
#metadata((src: "README.md", line: 5640, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5643))
La navegación conecta las secciones mediante accesos, menús y recorridos que permiten completar las tareas del usuario; estos criterios se aplican a aplicación móvil para pacientes, como se detalla en la #link("#tabla-50")[Tabla 50].

#metadata((src: "README.md", line: 5644))
#pagebreak()

#metadata((src: "README.md", line: 5648))
#strong[Tabla 50]

#metadata((src: "README.md", line: 5650))
#emph[Navigation Systems — Aplicación móvil para pacientes]

#metadata((src: "README.md", line: 5652, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Acción], [Descripción]),
  tline,
  [Barra de navegación inferior], [Accesos a Inicio, Reservar, Mis citas, Familiares y Perfil],
  [Flujo secuencial], [Reserva paso a paso con retroceso y confirmación],
  [Notificaciones push], [Avisos de cupos liberados y recordatorios],
  [Check-in por QR], [Acceso rápido a la atención el día de la cita],
  tline,
)

#metadata((src: "README.md", line: 5660))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación móvil para personal de salud] <sec:aplicacion-movil-para-personal-de-salud-4>
#metadata((src: "README.md", line: 5663, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5666))
La navegación conecta las secciones mediante accesos, menús y recorridos que permiten completar las tareas del usuario; estos criterios se aplican a aplicación móvil para personal de salud, como se detalla en la #link("#tabla-51")[Tabla 51].

#metadata((src: "README.md", line: 5670))
#strong[Tabla 51]

#metadata((src: "README.md", line: 5672))
#emph[Navigation Systems — Aplicación móvil para personal de salud]

#metadata((src: "README.md", line: 5674, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Acción], [Descripción]),
  tline,
  [Barra de navegación inferior], [Accesos a Panel, Citas, Lista de espera, Pacientes y Reportes],
  [Filtros por fecha y especialidad], [Segmentación del flujo de atención],
  [Actualización en tiempo real], [Visualización del estado de cada paciente],
  [Reasignación de cupos], [Acción directa sobre cupos liberados],
  tline,
)

#metadata((src: "README.md", line: 5682))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Recorrido del usuario] <sec:recorrido-del-usuario>
#metadata((src: "README.md", line: 5685, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5687))
+ El visitante llega al Landing Page y comprende el problema y la solución.
+ Revisa los videos y testimonios de validación.
+ Conoce el equipo y el modelo de negocio.
+ Descarga la aplicación correspondiente a su perfil.
+ En la app, navega por las secciones principales mediante la barra inferior.
+ Completa sus tareas (reservar, gestionar, consultar) con flujos claros y retroalimentación visual.

#metadata((src: "README.md", line: 5694))
#pagebreak()

#heading(level: 3)[3.1.3. Landing Page UI Design] <sec:3-1-3-landing-page-ui-design>
#metadata((src: "README.md", line: 5696, kind: "heading", level: 3))

#heading(level: 4)[3.1.3.1. Landing Page Wireframe] <sec:3-1-3-1-landing-page-wireframe>
#metadata((src: "README.md", line: 5698, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5700))
Los wireframes del Landing Page fueron elaborados en #strong[Figma] para las versiones #strong[Desktop Web Browser] y #strong[Mobile Web Browser], con el objetivo de definir previamente la estructura, distribución de contenidos, jerarquía visual y navegación de la interfaz antes de desarrollar los mock-ups de alta fidelidad.

#heading(level: 5)[Estructura general del wireframe] <sec:estructura-general-del-wireframe>
#metadata((src: "README.md", line: 5702, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5704))
La estructura del Landing Page se organizó en diez secciones principales, siguiendo un flujo orientado a presentar el problema, introducir la solución y facilitar el acceso a la aplicación:

#metadata((src: "README.md", line: 5706))
+ #strong[Header \/ Navbar:] contiene el logotipo, menú de navegación, selector de idioma ES\/EN y botón principal de descarga. En dispositivos móviles, el menú se adapta mediante un botón desplegable.
+ #strong[Hero:] presenta el mensaje principal de la solución, una descripción breve, botones de acción, beneficios principales e imagen representativa.
+ #strong[Problema:] presenta tres situaciones identificadas durante la investigación: incertidumbre al solicitar una cita, pérdida de cupos disponibles y procesos administrativos en papel.
+ #strong[Solución:] presenta las funcionalidades principales de las aplicaciones destinadas a pacientes y personal de salud.
+ #strong[Videos:] incorpora contenido audiovisual relacionado con el producto y el equipo de desarrollo.
+ #strong[Modelo de negocio:] presenta las principales modalidades de implementación y servicios asociados a la solución.
+ #strong[Testimonios:] presenta opiniones y experiencias obtenidas de los entrevistados.
+ #strong[Sobre nosotros:] presenta la misión, visión, valores y miembros del equipo de RuwaLabs.
+ #strong[Descarga:] incluye los accesos correspondientes a Google Play y App Store.
+ #strong[Footer:] contiene el logotipo, enlaces de navegación, información del proyecto, medios de contacto y derechos de autor.

#heading(level: 5)[Wireframe Desktop Web Browser] <sec:wireframe-desktop-web-browser>
#metadata((src: "README.md", line: 5717, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5720))
Las vistas del wireframe distribuyen las secciones de la landing page para su consulta desde un navegador de escritorio, como se detalla en la #link("#tabla-52")[Tabla 52].

#metadata((src: "README.md", line: 5724))
#strong[Tabla 52]

#metadata((src: "README.md", line: 5726))
#emph[Wireframe Desktop Web Browser]

#metadata((src: "README.md", line: 5728, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Vista], [Secciones destacadas]),
  tline,
  [Vista superior], [Header, Hero, Problema y Solución],
  [Vista inferior], [Videos, Modelo de negocio y Testimonios],
  tline,
)

#metadata((src: "README.md", line: 5734))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5735))
#pagebreak()

#metadata((src: "README.md", line: 5740))
#strong[Figura 61]

#metadata((src: "README.md", line: 5742))
#emph[Wireframe Desktop - Vista superior]

#metadata((src: "README.md", line: 5744, kind: "figure", img: "chapter-03/assets/landing-page/wireframes/wireframe-desktop-superior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/wireframes/wireframe-desktop-superior.png", width: 100%),
  caption: [Wireframe Desktop - Vista superior],
)

#metadata((src: "README.md", line: 5746))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5749))
La vista inferior permite revisar la distribución de las secciones finales de la landing page en escritorio, como se observa en la #link("#figura-61")[Figura 61] y la #link("#figura-62")[Figura 62].

#metadata((src: "README.md", line: 5751))
#pagebreak()

#metadata((src: "README.md", line: 5756))
#strong[Figura 62]

#metadata((src: "README.md", line: 5758))
#emph[Wireframe Desktop - Vista inferior]

#metadata((src: "README.md", line: 5760, kind: "figure", img: "chapter-03/assets/landing-page/wireframes/wireframe-desktop-inferior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/wireframes/wireframe-desktop-inferior.png", width: 100%),
  caption: [Wireframe Desktop - Vista inferior],
)

#metadata((src: "README.md", line: 5762))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Wireframe Mobile Web Browser] <sec:wireframe-mobile-web-browser>
#metadata((src: "README.md", line: 5765, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5768))
Las vistas del wireframe distribuyen las secciones de la landing page para su consulta desde un navegador móvil, como se detalla en la #link("#tabla-53")[Tabla 53].

#metadata((src: "README.md", line: 5772))
#strong[Tabla 53]

#metadata((src: "README.md", line: 5774))
#emph[Wireframe Mobile Web Browser]

#metadata((src: "README.md", line: 5776, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Vista], [Secciones destacadas]),
  tline,
  [Vista superior], [Header, Hero, Problema y Solución],
  [Vista inferior], [Videos, Modelo de negocio y Testimonios],
  tline,
)

#metadata((src: "README.md", line: 5782))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5784))
#pagebreak()

#metadata((src: "README.md", line: 5788))
#strong[Figura 63]

#metadata((src: "README.md", line: 5790))
#emph[Wireframe Mobile - Vista superior]

#metadata((src: "README.md", line: 5792, kind: "figure", img: "chapter-03/assets/landing-page/wireframes/wireframe-mobile-superior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/wireframes/wireframe-mobile-superior.png", width: 100%),
  caption: [Wireframe Mobile - Vista superior],
)

#metadata((src: "README.md", line: 5794))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5797))
La vista inferior permite revisar la distribución de las secciones finales de la landing page en móvil, como se observa en la #link("#figura-63")[Figura 63] y la #link("#figura-64")[Figura 64].

#metadata((src: "README.md", line: 5798))
#pagebreak()

#metadata((src: "README.md", line: 5802))
#strong[Figura 64]

#metadata((src: "README.md", line: 5804))
#emph[Wireframe Mobile - Vista inferior]

#metadata((src: "README.md", line: 5806, kind: "figure", img: "chapter-03/assets/landing-page/wireframes/wireframe-mobile-inferior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/wireframes/wireframe-mobile-inferior.png", width: 100%),
  caption: [Wireframe Mobile - Vista inferior],
)

#metadata((src: "README.md", line: 5808))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Principios de diseño aplicados] <sec:principios-de-diseno-aplicados>
#metadata((src: "README.md", line: 5811, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5813))
- #strong[Jerarquía visual:] se establecieron diferentes niveles tipográficos y variaciones de fondo para diferenciar títulos, contenidos y secciones.
- #strong[Diseño inclusivo:] se consideraron contraste adecuado, tipografía legible, áreas de interacción apropiadas y estados de foco visibles.
- #strong[Arquitectura de información:] la organización sigue una secuencia de problema → solución → evidencia → equipo → descarga, facilitando la comprensión progresiva del producto.
- #strong[Consistencia visual:] se mantuvieron criterios uniformes de espaciado, tamaños, radios y componentes a lo largo de la interfaz.
- #strong[Diseño responsive:] la estructura fue adaptada para mantener la legibilidad y funcionalidad tanto en pantallas de escritorio como en dispositivos móviles.

#heading(level: 4)[3.1.3.2. Landing Page Mock-up] <sec:3-1-3-2-landing-page-mock-up>
#metadata((src: "README.md", line: 5819, kind: "heading", level: 4))

#metadata((src: "README.md", line: 5821))
Los mock-ups fueron desarrollados en #strong[Figma] a partir de la estructura definida en los wireframes y aplicando el #strong[Design System de SaludYa]. Este sistema establece los criterios visuales utilizados para mantener consistencia en colores, tipografía, espaciado, componentes e interacción.

#heading(level: 5)[Design System aplicado] <sec:design-system-aplicado>
#metadata((src: "README.md", line: 5823, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5826))
El sistema de diseño reúne los colores, la tipografía y los criterios visuales utilizados para mantener una identidad consistente en la landing page, como se detalla en la #link("#tabla-54")[Tabla 54].

#metadata((src: "README.md", line: 5830))
#strong[Tabla 54]

#metadata((src: "README.md", line: 5832))
#emph[Design System aplicado]

#metadata((src: "README.md", line: 5834, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Elemento], [Valor], [Aplicación]),
  tline,
  [Color primario], [#raw("#0b8f6b")], [Botones, enlaces e iconos],
  [Color primario oscuro], [#raw("#076e52")], [Estados hover y elementos destacados],
  [Color primario claro], [#raw("#e6f5f0")], [Fondos de sección y estados hover],
  [Color de acento], [#raw("#ffb703")], [Indicadores de foco y elementos de énfasis],
  [Texto principal], [#raw("#1c2b2a")], [Títulos y contenido principal],
  [Texto secundario], [#raw("#56706d")], [Descripciones y contenido complementario],
  [Fondos], [#raw("#ffffff") \/ #raw("#f4faf8")], [Fondo principal y secciones alternas],
  [Borde], [#raw("#d8e6e2")], [Tarjetas, controles y separadores],
  [Tipografía], [Segoe UI \/ Helvetica Neue \/ Arial], [Títulos y contenido],
  [Radios], [6px \/ 12px \/ 20px], [Tarjetas, botones y contenedores],
  [Sombras], [sm \/ md \/ lg], [Jerarquía y profundidad visual],
  tline,
)

#metadata((src: "README.md", line: 5849))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Mock-up Desktop Web Browser] <sec:mock-up-desktop-web-browser>
#metadata((src: "README.md", line: 5852, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5855))
Las vistas del mockup distribuyen las secciones de la landing page para su consulta desde un navegador de escritorio, como se detalla en la #link("#tabla-55")[Tabla 55].

#metadata((src: "README.md", line: 5859))
#strong[Tabla 55]

#metadata((src: "README.md", line: 5861))
#emph[Mock-up Desktop Web Browser]

#metadata((src: "README.md", line: 5863, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Vista], [Secciones destacadas]),
  tline,
  [Vista superior], [Header, Hero, Problema y Solución],
  [Vista inferior], [Videos, Modelo de negocio y Testimonios],
  tline,
)

#metadata((src: "README.md", line: 5869))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5870))
#pagebreak()

#metadata((src: "README.md", line: 5875))
#strong[Figura 65]

#metadata((src: "README.md", line: 5877))
#emph[Mock-up Desktop - Vista superior]

#metadata((src: "README.md", line: 5879, kind: "figure", img: "chapter-03/assets/landing-page/mockups/mockup-desktop-superior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/mockups/mockup-desktop-superior.png", width: 100%),
  caption: [Mock-up Desktop - Vista superior],
)

#metadata((src: "README.md", line: 5881))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5884))
La vista inferior permite revisar la distribución de las secciones finales de la landing page en escritorio, como se observa en la #link("#figura-65")[Figura 65] y la #link("#figura-66")[Figura 66].

#metadata((src: "README.md", line: 5885))
#pagebreak()

#metadata((src: "README.md", line: 5889))
#strong[Figura 66]

#metadata((src: "README.md", line: 5891))
#emph[Mock-up Desktop - Vista inferior]

#metadata((src: "README.md", line: 5893, kind: "figure", img: "chapter-03/assets/landing-page/mockups/mockup-desktop-inferior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/mockups/mockup-desktop-inferior.png", width: 100%),
  caption: [Mock-up Desktop - Vista inferior],
)

#metadata((src: "README.md", line: 5895))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Mock-up Mobile Web Browser] <sec:mock-up-mobile-web-browser>
#metadata((src: "README.md", line: 5898, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5901))
Las vistas del mockup distribuyen las secciones de la landing page para su consulta desde un navegador móvil, como se detalla en la #link("#tabla-56")[Tabla 56].

#metadata((src: "README.md", line: 5905))
#strong[Tabla 56]

#metadata((src: "README.md", line: 5907))
#emph[Mock-up Mobile Web Browser]

#metadata((src: "README.md", line: 5909, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Vista], [Secciones destacadas]),
  tline,
  [Vista superior], [Header, Hero, Problema y Solución],
  [Vista inferior], [Videos, Modelo de negocio y Testimonios],
  tline,
)

#metadata((src: "README.md", line: 5915))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5916))
#pagebreak()

#metadata((src: "README.md", line: 5920))
#strong[Figura 67]

#metadata((src: "README.md", line: 5922))
#emph[Mock-up Mobile - Vista superior]

#metadata((src: "README.md", line: 5924, kind: "figure", img: "chapter-03/assets/landing-page/mockups/mockup-mobile-superior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/mockups/mockup-mobile-superior.png", width: 100%),
  caption: [Mock-up Mobile - Vista superior],
)

#metadata((src: "README.md", line: 5926))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 5929))
La vista inferior permite revisar la distribución de las secciones finales de la landing page en móvil, como se observa en la #link("#figura-67")[Figura 67] y la #link("#figura-68")[Figura 68].

#metadata((src: "README.md", line: 5930))
#pagebreak()

#metadata((src: "README.md", line: 5934))
#strong[Figura 68]

#metadata((src: "README.md", line: 5936))
#emph[Mock-up Mobile - Vista inferior]

#metadata((src: "README.md", line: 5938, kind: "figure", img: "chapter-03/assets/landing-page/mockups/mockup-mobile-inferior.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/mockups/mockup-mobile-inferior.png", width: 100%),
  caption: [Mock-up Mobile - Vista inferior],
)

#metadata((src: "README.md", line: 5940))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Aplicación del Design System y diseño inclusivo] <sec:aplicacion-del-design-system-y-diseno-inclusivo>
#metadata((src: "README.md", line: 5943, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5946))
Los criterios de diseño combinan la identidad visual de SaludYa con decisiones de legibilidad y accesibilidad para facilitar el uso de la interfaz, como se detalla en la #link("#tabla-57")[Tabla 57].

#metadata((src: "README.md", line: 5950))
#strong[Tabla 57]

#metadata((src: "README.md", line: 5952))
#emph[Aplicación del Design System y diseño inclusivo]

#metadata((src: "README.md", line: 5954, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Criterio], [Aplicación]),
  tline,
  [Branding], [Uso consistente del logotipo y de la paleta cromática de SaludYa],
  [Tipografía], [Jerarquía visual clara, tamaño legible e interlineado adecuado],
  [Colores], [Contraste adecuado para facilitar la lectura y diferenciación de acciones],
  [Espaciado], [Escala uniforme de márgenes, rellenos y separación entre componentes],
  [Diseño inclusivo], [Etiquetas accesibles, textos alternativos, áreas de interacción adecuadas y soporte para reducción de movimiento],
  [Internacionalización], [Selector ES\/EN para adaptar dinámicamente los contenidos],
  [Navegación], [Menú sticky y desplazamiento suave entre las diferentes secciones],
  [Responsive], [Adaptación de estructura, componentes y contenidos a diferentes tamaños de pantalla],
  tline,
)

#metadata((src: "README.md", line: 5966))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Componentes reutilizables] <sec:componentes-reutilizables>
#metadata((src: "README.md", line: 5969, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5972))
Los componentes reutilizables definen la apariencia y los estados de botones, tarjetas y controles para mantener su comportamiento consistente entre pantallas, como se detalla en la #link("#tabla-58")[Tabla 58].

#metadata((src: "README.md", line: 5976))
#strong[Tabla 58]

#metadata((src: "README.md", line: 5978))
#emph[Componentes reutilizables]

#metadata((src: "README.md", line: 5980, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Componente], [Descripción], [Estados]),
  tline,
  [Botón primario], [Botón de acción principal con fondo verde y texto blanco], [Default, hover, focus],
  [Botón secundario], [Botón con fondo transparente y borde del color primario], [Default, hover, focus],
  [Tarjeta], [Contenedor para información con borde y sombra], [Default, hover],
  [Testimonio], [Tarjeta destinada a mostrar opiniones y citas de usuarios], [Default],
  [Miembro del equipo], [Componente con fotografía, nombre y rol], [Default, hover],
  [Selector de idioma], [Control para alternar entre español e inglés], [Activo, inactivo],
  [Menú de navegación], [Control responsive para mostrar u ocultar las opciones de navegación], [Cerrado, abierto],
  tline,
)

#metadata((src: "README.md", line: 5991))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 5)[Landing Page implementado] <sec:landing-page-implementado>
#metadata((src: "README.md", line: 5994, kind: "heading", level: 5))

#metadata((src: "README.md", line: 5996))
El diseño definido en los wireframes y mock-ups fue posteriormente trasladado a una implementación funcional. Esta versión permite visualizar la aplicación de los lineamientos establecidos en el Design System y comprobar la adaptación de la interfaz a diferentes tamaños de pantalla, como se observa en la #link("#figura-69")[Figura 69].

#metadata((src: "README.md", line: 5998))
#pagebreak()

#metadata((src: "README.md", line: 6002))
#strong[Figura 69]

#metadata((src: "README.md", line: 6004))
#emph[Landing Page de SaludYa - Implementación]

#metadata((src: "README.md", line: 6006, kind: "figure", img: "chapter-03/assets/landing-page/landing-page.png"))
#figure(
  fit-image("/chapter-03/assets/landing-page/landing-page.png", width: 100%),
  caption: [Landing Page de SaludYa - Implementación],
)

#metadata((src: "README.md", line: 6008))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6011))
#strong[Landing Page de SaludYa:]

#metadata((src: "README.md", line: 6013))
#link("https://ruwalabs.github.io/saludya-landing/")[https:\/\/ruwalabs.github.io\/saludya-landing\/]

#heading(level: 5)[Conclusión de la sección] <sec:conclusion-de-la-seccion>
#metadata((src: "README.md", line: 6016, kind: "heading", level: 5))

#metadata((src: "README.md", line: 6018))
Los wireframes y mock-ups del Landing Page evidencian la aplicación coherente del Design System, los principios de diseño inclusivo y la arquitectura de información. La propuesta comunica el modelo de negocio de RuwaLabs, el problema que resuelve SaludYa y los beneficios para ambos segmentos objetivo, facilitando la conversión del visitante hacia la descarga de las aplicaciones móviles. La inclusión de internacionalización y accesibilidad garantiza una experiencia inclusiva y consistente.

#heading(level: 3)[3.1.4. Mobile Applications UX\/UI Design] <sec:3-1-4-mobile-applications-ux-ui-design>
#metadata((src: "README.md", line: 6020, kind: "heading", level: 3))

#heading(level: 4)[3.1.4.1. Mobile Applications Wireframes] <sec:3-1-4-1-mobile-applications-wireframes>
#metadata((src: "README.md", line: 6022, kind: "heading", level: 4))

#metadata((src: "README.md", line: 6024))
En esta sección se presenta la propuesta de wireframes de las aplicaciones móviles de #strong[SaludYa], elaborada en #strong[Figma]. Los wireframes son de #strong[baja fidelidad] y se construyeron con la escala de grises definida para esta etapa (de #strong[WF 900] a #strong[WF White]), de modo que la atención se concentre en la estructura, la jerarquía visual y la disposición de los elementos de cada pantalla, y no en el color ni en el acabado final. Esta decisión permite validar la organización del contenido antes de elaborar los mock-ups de alta fidelidad del apartado 3.1.4.3.

#metadata((src: "README.md", line: 6026))
La propuesta traduce las decisiones de arquitectura de información definidas en el apartado 3.1.2 (sistemas de organización, etiquetado, búsqueda y navegación) y evidencia la aplicación de principios y elementos de diseño, así como de criterios de #strong[diseño inclusivo]: contraste suficiente entre el contenido y las superficies, jerarquía tipográfica clara, áreas táctiles amplias y etiquetas simples y libres de ambigüedad. Los wireframes cubren las #strong[dos aplicaciones del alcance] (pacientes y personal de salud) y los diálogos transversales. El archivo de trabajo se encuentra disponible en #link("https://www.figma.com/design/WzyAnfvTsb6ZUsl9tUxLfd/Mobile-Application-Wireframes?node-id=0-1&p=f&t=EMPaZzmhHw9hIRHl-0")[Mobile Application Wireframes].

#heading(level: 5)[Estilo de los wireframes] <sec:estilo-de-los-wireframes>
#metadata((src: "README.md", line: 6028, kind: "heading", level: 5))

#metadata((src: "README.md", line: 6030))
Los wireframes emplean una escala de grises de baja fidelidad que permite distinguir jerarquías, superficies y estados sin depender del color, manteniendo el foco en la estructura y en la organización del contenido. La escala abarca desde el tono más oscuro (WF 900) hasta el blanco (WF White), como se observa en la #link("#figura-70")[Figura 70].

#metadata((src: "README.md", line: 6032))
#pagebreak()

#metadata((src: "README.md", line: 6036))
#strong[Figura 70]

#metadata((src: "README.md", line: 6038))
#emph[Escala de grises para wireframes]

#metadata((src: "README.md", line: 6040, kind: "figure", img: "chapter-03/assets/wireframes/color-wireframes.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/color-wireframes.png", alt: "Escala de grises para wireframes de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6042))
#emph[Nota. Elaboración propia.]

#heading(level: 5)[Aplicación móvil para pacientes] <sec:aplicacion-movil-para-pacientes-5>
#metadata((src: "README.md", line: 6044, kind: "heading", level: 5))

#metadata((src: "README.md", line: 6046))
La aplicación para pacientes se organiza en torno a la barra de navegación inferior (#strong[Inicio, Reservar cita, Asistencia y Configuración]), en línea con el sistema de navegación descrito en el apartado 3.1.2.5. Las vistas siguientes cubren el acceso, el inicio, la gestión de citas, la reserva, la asistencia, las notificaciones y la configuración.

#metadata((src: "README.md", line: 6048))
El acceso a la aplicación reúne la pantalla de bienvenida, con las acciones #strong[Iniciar Sesión] y #strong[Registrarse], y el formulario de #strong[Inicio de Sesión] con tipo y número de documento y contraseña, como se observa en la #link("#figura-71")[Figura 71].

#metadata((src: "README.md", line: 6049))
#pagebreak()

#metadata((src: "README.md", line: 6053))
#strong[Figura 71]

#metadata((src: "README.md", line: 6055))
#emph[Bienvenida e inicio de sesión]

#metadata((src: "README.md", line: 6057, kind: "figure", img: "chapter-03/assets/wireframes/iam-bienvenida-login.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/iam-bienvenida-login.png", alt: "Wireframe de bienvenida e inicio de sesión de SaludYa", width: 80%)]

#metadata((src: "README.md", line: 6059))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6061))
El registro se compone de la verificación de identidad por documento, el alta de credenciales (correo, contraseña y celular) y la verificación del DNI mediante preguntas de seguridad, como se observa en la #link("#figura-72")[Figura 72].

#metadata((src: "README.md", line: 6062))
#pagebreak()

#metadata((src: "README.md", line: 6066))
#strong[Figura 72]

#metadata((src: "README.md", line: 6068))
#emph[Registro y verificación de identidad]

#metadata((src: "README.md", line: 6070, kind: "figure", img: "chapter-03/assets/wireframes/iam-registro.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/iam-registro.png", alt: "Wireframe de registro y verificación de identidad de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6072))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6074))
La recuperación de acceso permite elegir el restablecimiento por correo, ingresar el código enviado y definir una nueva contraseña con su confirmación, como se observa en la #link("#figura-73")[Figura 73].

#metadata((src: "README.md", line: 6076))
#pagebreak()

#metadata((src: "README.md", line: 6080))
#strong[Figura 73]

#metadata((src: "README.md", line: 6082))
#emph[Recuperación y cambio de contraseña]

#metadata((src: "README.md", line: 6084, kind: "figure", img: "chapter-03/assets/wireframes/iam-recuperacion.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/iam-recuperacion.png", alt: "Wireframe de recuperación y cambio de contraseña de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6086))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6088))
El inicio del paciente saluda al usuario, presenta las citas pendientes y el historial, y ofrece el acceso a las notificaciones y a las secciones principales mediante la barra inferior, como se observa en la #link("#figura-74")[Figura 74].

#metadata((src: "README.md", line: 6090))
#pagebreak()

#metadata((src: "README.md", line: 6094))
#strong[Figura 74]

#metadata((src: "README.md", line: 6096))
#emph[Inicio del paciente]

#metadata((src: "README.md", line: 6098, kind: "figure", img: "chapter-03/assets/wireframes/paciente-home.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-home.png", alt: "Wireframe de inicio del paciente de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 6100))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6102))
La vista de citas pendientes lista las reservas activas del paciente en tarjetas, con la cabecera de retroceso y la barra de navegación inferior, como se observa en la #link("#figura-75")[Figura 75].

#metadata((src: "README.md", line: 6104))
#pagebreak()

#metadata((src: "README.md", line: 6108))
#strong[Figura 75]

#metadata((src: "README.md", line: 6110))
#emph[Citas pendientes]

#metadata((src: "README.md", line: 6112, kind: "figure", img: "chapter-03/assets/wireframes/paciente-citas-pendientes.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-citas-pendientes.png", alt: "Wireframe de citas pendientes de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 6114))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6116))
El historial presenta las atenciones pasadas y permite filtrarlas por fecha mediante un selector de calendario, como se observa en la #link("#figura-76")[Figura 76].

#metadata((src: "README.md", line: 6118))
#pagebreak()

#metadata((src: "README.md", line: 6122))
#strong[Figura 76]

#metadata((src: "README.md", line: 6124))
#emph[Historial y filtro por fecha]

#metadata((src: "README.md", line: 6126, kind: "figure", img: "chapter-03/assets/wireframes/paciente-historial.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-historial.png", alt: "Wireframe de historial y filtro por fecha de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6128))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6130))
La reserva de cita permite buscar y elegir la especialidad, seleccionar la fecha en un calendario y escoger la hora entre los bloques disponibles, como se observa en la #link("#figura-77")[Figura 77].

#metadata((src: "README.md", line: 6132))
#pagebreak()

#metadata((src: "README.md", line: 6136))
#strong[Figura 77]

#metadata((src: "README.md", line: 6138))
#emph[Reserva de cita]

#metadata((src: "README.md", line: 6140, kind: "figure", img: "chapter-03/assets/wireframes/paciente-reserva.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-reserva.png", alt: "Wireframe de reserva de cita de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6142))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6144))
Cuando el paciente reserva por profesional, la interfaz permite buscar y elegir al doctor y luego seleccionar la hora, como se observa en la #link("#figura-78")[Figura 78].

#metadata((src: "README.md", line: 6146))
#pagebreak()

#metadata((src: "README.md", line: 6150))
#strong[Figura 78]

#metadata((src: "README.md", line: 6152))
#emph[Reserva por doctor]

#metadata((src: "README.md", line: 6154, kind: "figure", img: "chapter-03/assets/wireframes/paciente-reserva-por-doctor.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-reserva-por-doctor.png", alt: "Wireframe de reserva por doctor de SaludYa", width: 80%)]

#metadata((src: "README.md", line: 6156))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6158))
La asistencia reúne el registro de llegada mediante #strong[código QR] y la consulta de la posición en la cola, junto con los diálogos de confirmación para dejar la cola y de atención finalizada, así como la cancelación de la cita, como se observa en la #link("#figura-79")[Figura 79].

#metadata((src: "README.md", line: 6160))
#pagebreak()

#metadata((src: "README.md", line: 6164))
#strong[Figura 79]

#metadata((src: "README.md", line: 6166))
#emph[Asistencia: check-in y cola]

#metadata((src: "README.md", line: 6168, kind: "figure", img: "chapter-03/assets/wireframes/paciente-checkin.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-checkin.png", alt: "Wireframe de asistencia con check-in y cola de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6170))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6172))
Las notificaciones listan los avisos del paciente, entre ellos la disponibilidad de una reasignación de horario, que se resuelve en un modal con las acciones #strong[Rechazar] y #strong[Aceptar], como se observa en la #link("#figura-80")[Figura 80].

#metadata((src: "README.md", line: 6174))
#pagebreak()

#metadata((src: "README.md", line: 6178))
#strong[Figura 80]

#metadata((src: "README.md", line: 6180))
#emph[Notificaciones y reasignación]

#metadata((src: "README.md", line: 6182, kind: "figure", img: "chapter-03/assets/wireframes/paciente-notificaciones.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-notificaciones.png", alt: "Wireframe de notificaciones y reasignación de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6184))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6186))
La configuración permite acceder a los datos personales y a los pacientes vinculados, y el cambio de correo se completa verificando el nuevo correo mediante un código, como se observa en la #link("#figura-81")[Figura 81].

#metadata((src: "README.md", line: 6188))
#pagebreak()

#metadata((src: "README.md", line: 6192))
#strong[Figura 81]

#metadata((src: "README.md", line: 6194))
#emph[Configuración y cambio de correo]

#metadata((src: "README.md", line: 6196, kind: "figure", img: "chapter-03/assets/wireframes/paciente-cambio-correo.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-cambio-correo.png", alt: "Wireframe de configuración y cambio de correo de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6198))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6200))
La gestión de pacientes vinculados permite agregar y sincronizar menores, registrar un menor verificando su documento y administrar el vínculo desde el detalle, como se observa en la #link("#figura-82")[Figura 82].

#metadata((src: "README.md", line: 6202))
#pagebreak()

#metadata((src: "README.md", line: 6206))
#strong[Figura 82]

#metadata((src: "README.md", line: 6208))
#emph[Pacientes vinculados y registro de menor]

#metadata((src: "README.md", line: 6210, kind: "figure", img: "chapter-03/assets/wireframes/paciente-menores-1.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-menores-1.png", alt: "Wireframe de pacientes vinculados y registro de menor de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6212))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6214))
El acceso al perfil de un menor incluye la verificación del vínculo, su propia vista de inicio y la opción de volver a la cuenta principal, como se observa en la #link("#figura-83")[Figura 83].

#metadata((src: "README.md", line: 6216))
#pagebreak()

#metadata((src: "README.md", line: 6220))
#strong[Figura 83]

#metadata((src: "README.md", line: 6222))
#emph[Perfil del menor vinculado]

#metadata((src: "README.md", line: 6224, kind: "figure", img: "chapter-03/assets/wireframes/paciente-menores-2.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/paciente-menores-2.png", alt: "Wireframe del perfil del menor vinculado de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6226))
#emph[Nota. Elaboración propia.]

#heading(level: 5)[Aplicación móvil del personal de salud] <sec:aplicacion-movil-del-personal-de-salud>
#metadata((src: "README.md", line: 6228, kind: "heading", level: 5))

#metadata((src: "README.md", line: 6230))
La aplicación para el personal de salud se organiza en la barra inferior #strong[Inicio, Calendario, Cita y Configuración], y prioriza la gestión operativa del establecimiento.

#metadata((src: "README.md", line: 6232))
El inicio del personal presenta el resumen del día con las citas canceladas y pendientes, junto con el acceso a la edición del perfil, como se observa en la #link("#figura-84")[Figura 84].

#metadata((src: "README.md", line: 6234))
#pagebreak()

#metadata((src: "README.md", line: 6238))
#strong[Figura 84]

#metadata((src: "README.md", line: 6240))
#emph[Inicio del personal de salud]

#metadata((src: "README.md", line: 6242, kind: "figure", img: "chapter-03/assets/wireframes/admin-home.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/admin-home.png", alt: "Wireframe de inicio del personal de salud de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 6244))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6246))
El calendario permite elegir la especialidad, la fecha y la hora para gestionar la agenda del establecimiento, como se observa en la #link("#figura-85")[Figura 85].

#metadata((src: "README.md", line: 6248))
#pagebreak()

#metadata((src: "README.md", line: 6252))
#strong[Figura 85]

#metadata((src: "README.md", line: 6254))
#emph[Calendario: especialidad, fecha y hora]

#metadata((src: "README.md", line: 6256, kind: "figure", img: "chapter-03/assets/wireframes/admin-calendario.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/admin-calendario.png", alt: "Wireframe del calendario del personal de salud de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6258))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6260))
La vista por profesional permite buscar y seleccionar al doctor y luego elegir la hora de atención, como se observa en la #link("#figura-86")[Figura 86].

#metadata((src: "README.md", line: 6262))
#pagebreak()

#metadata((src: "README.md", line: 6266))
#strong[Figura 86]

#metadata((src: "README.md", line: 6268))
#emph[Calendario por doctor]

#metadata((src: "README.md", line: 6270, kind: "figure", img: "chapter-03/assets/wireframes/admin-calendario-doctor.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/admin-calendario-doctor.png", alt: "Wireframe del calendario por doctor de SaludYa", width: 80%)]

#metadata((src: "README.md", line: 6272))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6274))
La edición de un bloque horario reúne el estado, la hora de inicio, la especialidad, el doctor y los pacientes con reserva, con la acción de editar y la confirmación de cambios, como se observa en la #link("#figura-87")[Figura 87].

#metadata((src: "README.md", line: 6276))
#pagebreak()

#metadata((src: "README.md", line: 6280))
#strong[Figura 87]

#metadata((src: "README.md", line: 6282))
#emph[Edición de bloque horario]

#metadata((src: "README.md", line: 6284, kind: "figure", img: "chapter-03/assets/wireframes/admin-edicion-bloque.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/admin-edicion-bloque.png", alt: "Wireframe de edición de bloque horario de SaludYa", width: 100%)]

#metadata((src: "README.md", line: 6286))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6288))
La configuración general permite revisar y actualizar los parámetros operativos mediante campos editables y un diálogo para ingresar el nuevo valor, como se observa en la #link("#figura-88")[Figura 88].

#metadata((src: "README.md", line: 6290))
#pagebreak()

#metadata((src: "README.md", line: 6294))
#strong[Figura 88]

#metadata((src: "README.md", line: 6296))
#emph[Configuración general]

#metadata((src: "README.md", line: 6298, kind: "figure", img: "chapter-03/assets/wireframes/admin-configuracion.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/admin-configuracion.png", alt: "Wireframe de configuración general de SaludYa", width: 70%)]

#metadata((src: "README.md", line: 6300))
#emph[Nota. Elaboración propia.]

#heading(level: 5)[Diálogos y componentes] <sec:dialogos-y-componentes>
#metadata((src: "README.md", line: 6302, kind: "heading", level: 5))

#metadata((src: "README.md", line: 6304))
Los componentes transversales normalizan la confirmación de acciones y la comunicación de estados del sistema en ambas aplicaciones.

#metadata((src: "README.md", line: 6306))
El diálogo de confirmación de cita solicita validar la reserva antes de registrarla y comunica el resultado exitoso, como se observa en la #link("#figura-89")[Figura 89].

#metadata((src: "README.md", line: 6308))
#pagebreak()

#metadata((src: "README.md", line: 6312))
#strong[Figura 89]

#metadata((src: "README.md", line: 6314))
#emph[Diálogos de confirmación de cita]

#metadata((src: "README.md", line: 6316, kind: "figure", img: "chapter-03/assets/wireframes/dialogs-cita-confirmada.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/dialogs-cita-confirmada.png", alt: "Wireframe de diálogos de confirmación de cita de SaludYa", width: 60%)]

#metadata((src: "README.md", line: 6318))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6320))
Los diálogos de configuración comunican errores de validación (código incorrecto, datos incorrectos o inconsistencia de datos) y confirmaciones de éxito, como se observa en la #link("#figura-90")[Figura 90].

#metadata((src: "README.md", line: 6322))
#pagebreak()

#metadata((src: "README.md", line: 6326))
#strong[Figura 90]

#metadata((src: "README.md", line: 6328))
#emph[Diálogos de estado y validación]

#metadata((src: "README.md", line: 6330, kind: "figure", img: "chapter-03/assets/wireframes/dialogs-configuracion.png"))
#block(breakable: false)[#fit-image("/chapter-03/assets/wireframes/dialogs-configuracion.png", alt: "Wireframe de diálogos de estado y validación de SaludYa", width: 60%)]

#metadata((src: "README.md", line: 6332))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6333))
#pagebreak()

#heading(level: 4)[3.1.4.2. Mobile Applications Wireflow Diagrams] <sec:3-1-4-2-mobile-applications-wireflow-diagrams>
#metadata((src: "README.md", line: 6336, kind: "heading", level: 4))

#metadata((src: "README.md", line: 6338))
En esta sección se presenta la propuesta de Wireflow Diagrams de las aplicaciones móviles de SaludYa, elaborada a partir de los Task Flows consensuados por el equipo. Cada Wireflow combina la secuencia de pasos de un User Goal con los wireframes de las pantallas que intervienen en el flujo; toda interacción que modifica el estado de una pantalla se representa agregando un paso con un wireframe del nuevo estado (validaciones, errores, estados vacíos y diálogos de confirmación). Se consideran las dos aplicaciones del alcance: la aplicación para pacientes (#emph[User Persona]: Kevin Huamán) y la aplicación para el personal de admisión (#emph[User Persona]: Franco Alanoca). Los wireflows se elaboraron en Figma y su orden responde a los User Goals priorizados para cada aplicación.

#heading(level: 5)[Wireflows de Pacientes] <sec:wireflows-de-pacientes>
#metadata((src: "README.md", line: 6340, kind: "heading", level: 5))

#heading(level: 6)[WF-01 · Registrarme en la aplicación] <sec:wf-01-registrarme-en-la-aplicacion>
#metadata((src: "README.md", line: 6342, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6344))
#strong[User Goal:] Como paciente, quiero crear mi cuenta para reservar y gestionar mis citas desde el celular.

#metadata((src: "README.md", line: 6348))
#strong[Figura 91]

#metadata((src: "README.md", line: 6350))
#emph[Wireflow de registro en la aplicación (paciente)]

#metadata((src: "README.md", line: 6352, kind: "figure", img: "chapter-03/assets/wireflows/wf-01-registrarme-en-la-aplicacion.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-01-registrarme-en-la-aplicacion.png", alt: "Wireflow de registro en la aplicación de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6356))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6358))
#strong[Explicación del flujo:] En la #link("#figura-91")[Figura 91] se observa que el recorrido va de Bienvenida a Registro (tipo y número de documento) y luego a Verificar DNI, con diálogos de datos incorrectos o validación exitosa. Después sigue Registro de credenciales, Verificación de celular con código (incorrecto o exitoso) y, al final, Inicio de sesión.

#heading(level: 6)[WF-02 · Iniciar sesión] <sec:wf-02-iniciar-sesion>
#metadata((src: "README.md", line: 6360, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6362))
#strong[User Goal:] Como paciente, quiero iniciar sesión para acceder a mi información y a mis citas.

#metadata((src: "README.md", line: 6366))
#strong[Figura 92]

#metadata((src: "README.md", line: 6368))
#emph[Wireflow de inicio de sesión (paciente)]

#metadata((src: "README.md", line: 6370, kind: "figure", img: "chapter-03/assets/wireflows/wf-02-iniciar-sesion.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-02-iniciar-sesion.png", alt: "Wireflow de inicio de sesión de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6374))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6376))
#strong[Explicación del flujo:] En la #link("#figura-92")[Figura 92] se aprecia que, desde Inicio de sesión, si las credenciales son inválidas aparece un diálogo de error. Si son correctas, pasa a la verificación con código (segundo factor), con diálogo de código incorrecto o exitoso, y entra al Home.

#heading(level: 6)[WF-03 · Recuperar mi contraseña] <sec:wf-03-recuperar-mi-contrasena>
#metadata((src: "README.md", line: 6378, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6380))
#strong[User Goal:] Como paciente, quiero recuperar el acceso cuando olvido mi contraseña.

#metadata((src: "README.md", line: 6384))
#strong[Figura 93]

#metadata((src: "README.md", line: 6386))
#emph[Wireflow de recuperación de contraseña (paciente)]

#metadata((src: "README.md", line: 6388, kind: "figure", img: "chapter-03/assets/wireflows/wf-03-recuperar-mi-contrasena.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-03-recuperar-mi-contrasena.png", alt: "Wireflow de recuperación de contraseña de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6392))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6394))
#strong[Explicación del flujo:] En la #link("#figura-93")[Figura 93] se muestra que, desde Inicio de sesión, se abre la elección de método (celular o correo) y se verifica el código, con camino alterno de código incorrecto. Luego se define la nueva contraseña (diálogo si no coincide o si el cambio fue exitoso) y se vuelve al Inicio de sesión.

#metadata((src: "README.md", line: 6395))
#pagebreak()

#heading(level: 6)[WF-05 · Cerrar sesión] <sec:wf-05-cerrar-sesion>
#metadata((src: "README.md", line: 6396, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6398))
#strong[User Goal:] Como paciente, quiero cerrar sesión de forma segura.

#metadata((src: "README.md", line: 6403))
#strong[Figura 94]

#metadata((src: "README.md", line: 6405))
#emph[Wireflow de cierre de sesión (paciente)]

#metadata((src: "README.md", line: 6407, kind: "figure", img: "chapter-03/assets/wireflows/wf-05-cerrar-sesion.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-05-cerrar-sesion.png", alt: "Wireflow de cierre de sesión de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6411))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6413))
#strong[Explicación del flujo:] En la #link("#figura-94")[Figura 94] se aprecia que, desde Configuración, se confirma el cierre y se vuelve al Inicio de sesión. El diálogo de confirmación aún no tiene wireframe, por eso aparece como recuadro pendiente.

#heading(level: 6)[WF-07 · Reservar una cita médica] <sec:wf-07-reservar-una-cita-medica>
#metadata((src: "README.md", line: 6415, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6417))
#strong[User Goal:] Como paciente, quiero reservar una cita eligiendo especialidad, fecha y horario.

#metadata((src: "README.md", line: 6421))
#strong[Figura 95]

#metadata((src: "README.md", line: 6423))
#emph[Wireflow de reserva de una cita médica (paciente)]

#metadata((src: "README.md", line: 6425, kind: "figure", img: "chapter-03/assets/wireflows/wf-07-reservar-una-cita-medica.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-07-reservar-una-cita-medica.png", alt: "Wireflow de reserva de una cita médica de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6429))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6431))
#strong[Explicación del flujo:] En la #link("#figura-95")[Figura 95] se observa que el flujo va de Home a Reservar cita (búsqueda de especialidad), luego Elige tu fecha, Elige la hora, Elige al doctor y la hora con ese doctor. Termina en Confirmar cita y el diálogo «Cita confirmada».

#metadata((src: "README.md", line: 6432))
#pagebreak()

#heading(level: 6)[WF-08 · Consultar mis citas y su detalle] <sec:wf-08-consultar-mis-citas-y-su-detalle>
#metadata((src: "README.md", line: 6433, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6435))
#strong[User Goal:] Como paciente, quiero ver mis próximas citas y su detalle.

#metadata((src: "README.md", line: 6440))
#strong[Figura 96]

#metadata((src: "README.md", line: 6442))
#emph[Wireflow de consulta de citas y detalle (paciente)]

#metadata((src: "README.md", line: 6444, kind: "figure", img: "chapter-03/assets/wireflows/wf-08-consultar-mis-citas-y-su-detalle.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-08-consultar-mis-citas-y-su-detalle.png", alt: "Wireflow de consulta de citas y su detalle de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6448))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6450))
#strong[Explicación del flujo:] En la #link("#figura-96")[Figura 96] se observa que, desde Home, «Ver más» abre Citas pendientes, y al seleccionar una cita se abre su detalle con las acciones disponibles.

#metadata((src: "README.md", line: 6451))
#pagebreak()

#heading(level: 6)[WF-09 · Revisar el historial de citas] <sec:wf-09-revisar-el-historial-de-citas>
#metadata((src: "README.md", line: 6452, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6454))
#strong[User Goal:] Como paciente, quiero revisar mis atenciones anteriores.

#metadata((src: "README.md", line: 6458))
#strong[Figura 97]

#metadata((src: "README.md", line: 6460))
#emph[Wireflow del historial de citas (paciente)]

#metadata((src: "README.md", line: 6462, kind: "figure", img: "chapter-03/assets/wireflows/wf-09-revisar-el-historial-de-citas.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-09-revisar-el-historial-de-citas.png", alt: "Wireflow del historial de citas de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6466))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6468))
#strong[Explicación del flujo:] En la #link("#figura-97")[Figura 97] se observa que, desde Home, se abre Historial, se despliega el calendario de filtro por fecha y se muestra el historial acotado a la fecha elegida.

#heading(level: 6)[WF-10 · Gestionar las citas de un familiar a mi cargo] <sec:wf-10-gestionar-las-citas-de-un-familiar-a-mi-cargo>
#metadata((src: "README.md", line: 6470, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6472))
#strong[User Goal:] Como paciente, quiero vincular a un familiar dependiente y gestionar sus citas desde mi cuenta.

#metadata((src: "README.md", line: 6476))
#strong[Figura 98]

#metadata((src: "README.md", line: 6478))
#emph[Wireflow de gestión de citas de un familiar a cargo (paciente)]

#metadata((src: "README.md", line: 6480, kind: "figure", img: "chapter-03/assets/wireflows/wf-10-gestionar-las-citas-de-un-familiar-a-mi-cargo.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-10-gestionar-las-citas-de-un-familiar-a-mi-cargo.png", alt: "Wireflow de gestión de citas de un familiar a cargo de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6484))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6486))
#strong[Explicación del flujo:] En la #link("#figura-98")[Figura 98] se observa que, desde Configuración, se abre Parientes vinculados y se agrega un menor (Registro de menor). Luego viene Verificar DNI, con diálogos de «No eres pariente», datos incorrectos o validación exitosa, y se abre el Home del menor, desde donde se puede volver a la cuenta principal. Como camino alterno, se abre un pariente ya vinculado para desvincularlo.

#heading(level: 6)[WF-11 · Revisar mis notificaciones] <sec:wf-11-revisar-mis-notificaciones>
#metadata((src: "README.md", line: 6488, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6490))
#strong[User Goal:] Como paciente, quiero revisar mis avisos para no perder citas ni cupos liberados.

#metadata((src: "README.md", line: 6494))
#strong[Figura 99]

#metadata((src: "README.md", line: 6496))
#emph[Wireflow de revisión de notificaciones (paciente)]

#metadata((src: "README.md", line: 6498, kind: "figure", img: "chapter-03/assets/wireflows/wf-11-revisar-mis-notificaciones.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-11-revisar-mis-notificaciones.png", alt: "Wireflow de revisión de notificaciones de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6502))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6504))
#strong[Explicación del flujo:] En la #link("#figura-99")[Figura 99] se observa que, desde el ícono de campana del Home, se abre el buzón de Notificaciones y, al seleccionar un aviso, se abre su detalle (por ejemplo, la oferta de reasignación).

#metadata((src: "README.md", line: 6505))
#pagebreak()

#heading(level: 6)[WF-12 · Registrar mi llegada y seguir mi turno] <sec:wf-12-registrar-mi-llegada-y-seguir-mi-turno>
#metadata((src: "README.md", line: 6506, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6508))
#strong[User Goal:] Como paciente, quiero registrar mi llegada y saber cuándo me atenderán sin hacer cola.

#metadata((src: "README.md", line: 6512))
#strong[Figura 100]

#metadata((src: "README.md", line: 6514))
#emph[Wireflow de registro de llegada y seguimiento del turno (paciente)]

#metadata((src: "README.md", line: 6516, kind: "figure", img: "chapter-03/assets/wireflows/wf-12-registrar-mi-llegada-y-seguir-mi-turno.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-12-registrar-mi-llegada-y-seguir-mi-turno.png", alt: "Wireflow de registro de llegada y seguimiento del turno de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6520))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6522))
#strong[Explicación del flujo:] En la #link("#figura-100")[Figura 100] se observa que, desde Asistencia, se elige la reserva y se registra con el código QR. Luego se muestra la Posición en la cola y se llega al aviso «Has sido atendido». Como camino alterno, se puede dejar la cola con un diálogo de confirmación.

#heading(level: 6)[WF-13 · Aceptar o rechazar un cupo liberado] <sec:wf-13-aceptar-o-rechazar-un-cupo-liberado>
#metadata((src: "README.md", line: 6524, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6526))
#strong[User Goal:] Como paciente, quiero aprovechar un cupo liberado por una cancelación.

#metadata((src: "README.md", line: 6530))
#strong[Figura 101]

#metadata((src: "README.md", line: 6532))
#emph[Wireflow de aceptación o rechazo de un cupo liberado (paciente)]

#metadata((src: "README.md", line: 6534, kind: "figure", img: "chapter-03/assets/wireflows/wf-13-aceptar-o-rechazar-un-cupo-liberado.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-13-aceptar-o-rechazar-un-cupo-liberado.png", alt: "Wireflow de aceptación o rechazo de un cupo liberado de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6538))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6540))
#strong[Explicación del flujo:] En la #link("#figura-101")[Figura 101] se observa que, desde la notificación, se abre el detalle de la oferta. Si acepta, aparece «Reasignación exitosa». Si rechaza, aparece un diálogo de confirmación del rechazo.

#heading(level: 6)[WF-14 · Actualizar mis datos de contacto] <sec:wf-14-actualizar-mis-datos-de-contacto>
#metadata((src: "README.md", line: 6542, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6544))
#strong[User Goal:] Como paciente, quiero mantener actualizados mi celular y mi correo.

#metadata((src: "README.md", line: 6548))
#strong[Figura 102]

#metadata((src: "README.md", line: 6550))
#emph[Wireflow de actualización de datos de contacto (paciente)]

#metadata((src: "README.md", line: 6552, kind: "figure", img: "chapter-03/assets/wireflows/wf-14-actualizar-mis-datos-de-contacto.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/wf-14-actualizar-mis-datos-de-contacto.png", alt: "Wireflow de actualización de datos de contacto de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6556))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6558))
#strong[Explicación del flujo:] En la #link("#figura-102")[Figura 102] se observa que, desde Configuración, se abre Mis datos y se elige cambiar celular o correo. Se edita el dato y se verifica con código en el nuevo contacto (con camino alterno de código incorrecto), y el cambio queda confirmado con un diálogo de éxito.

#metadata((src: "README.md", line: 6559))
#pagebreak()

#heading(level: 5)[Wireflows de Healthcare Administrators] <sec:wireflows-de-healthcare-administrators>
#metadata((src: "README.md", line: 6560, kind: "heading", level: 5))

#heading(level: 6)[S01 · Registrarme como personal de admisión] <sec:s01-registrarme-como-personal-de-admision>
#metadata((src: "README.md", line: 6562, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6564))
#strong[User Goal:] Como personal de admisión, quiero que se habilite mi cuenta con el correo corporativo y definir mi contraseña.

#metadata((src: "README.md", line: 6568))
#strong[Figura 103]

#metadata((src: "README.md", line: 6570))
#emph[Wireflow de registro del personal de admisión]

#metadata((src: "README.md", line: 6572, kind: "figure", img: "chapter-03/assets/wireflows/s01-registrarme-como-personal-de-admision.png"))
#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s01-registrarme-como-personal-de-admision.png", alt: "Wireflow de registro del personal de admisión de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 6576))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6578))
#strong[Explicación del flujo:] En la #link("#figura-103")[Figura 103] se observa que el administrador crea la cuenta y envía una invitación (paso pendiente de wireframe). El personal abre el enlace, define su contraseña (diálogo si no coincide o si fue exitoso) y pasa al Inicio de sesión.

#heading(level: 6)[S02 · Iniciar sesión como personal] <sec:s02-iniciar-sesion-como-personal>
#metadata((src: "README.md", line: 6580, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6582))
#strong[User Goal:] Como personal de admisión, quiero iniciar sesión para acceder a la gestión de citas y a la sala de espera.

#metadata((src: "README.md", line: 6586))
#strong[Figura 104]

#metadata((src: "README.md", line: 6588))
#emph[Wireflow de inicio de sesión del personal de admisión]

#metadata((src: "README.md", line: 6590, kind: "figure", img: "chapter-03/assets/wireflows/s02-iniciar-sesion-como-personal.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s02-iniciar-sesion-como-personal.png", alt: "Wireflow de inicio de sesión del personal de admisión de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6594))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6596))
#strong[Explicación del flujo:] En la #link("#figura-104")[Figura 104] se observa que va de Inicio de sesión (diálogo único si las credenciales son inválidas) a la verificación con código (diálogo de código incorrecto o exitoso) y entra al Home del administrador.

#heading(level: 6)[S03 · Registrar un bloque de cita] <sec:s03-registrar-un-bloque-de-cita>
#metadata((src: "README.md", line: 6598, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6600))
#strong[User Goal:] Como personal de admisión, quiero registrar bloques de cita con doctor, fecha, horario y capacidad.

#metadata((src: "README.md", line: 6604))
#strong[Figura 105]

#metadata((src: "README.md", line: 6606))
#emph[Wireflow de registro de un bloque de cita]

#metadata((src: "README.md", line: 6608, kind: "figure", img: "chapter-03/assets/wireflows/s03-registrar-un-bloque-de-cita.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s03-registrar-un-bloque-de-cita.png", alt: "Wireflow de registro de un bloque de cita de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6612))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6614))
#strong[Explicación del flujo:] En la #link("#figura-105")[Figura 105] se observa que, desde el Home, se elige la especialidad, la fecha, la hora y el doctor, y se termina en el diálogo «Confirmar bloque de cita».

#heading(level: 6)[S04 · Editar un bloque de cita] <sec:s04-editar-un-bloque-de-cita>
#metadata((src: "README.md", line: 6616, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6618))
#strong[User Goal:] Como personal de admisión, quiero ajustar bloques existentes para corregir la programación.

#metadata((src: "README.md", line: 6622))
#strong[Figura 106]

#metadata((src: "README.md", line: 6624))
#emph[Wireflow de edición de un bloque de cita]

#metadata((src: "README.md", line: 6626, kind: "figure", img: "chapter-03/assets/wireflows/s04-editar-un-bloque-de-cita.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s04-editar-un-bloque-de-cita.png", alt: "Wireflow de edición de un bloque de cita de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6630))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6632))
#strong[Explicación del flujo:] En la #link("#figura-106")[Figura 106] se observa que se llega al bloque por especialidad, fecha y hora, se abre su detalle y se pasa a la pantalla de edición con «Confirmar cambios».

#metadata((src: "README.md", line: 6633))
#pagebreak()

#heading(level: 6)[S05 · Consultar la disponibilidad de cupos] <sec:s05-consultar-la-disponibilidad-de-cupos>
#metadata((src: "README.md", line: 6634, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6636))
#strong[User Goal:] Como personal de admisión, quiero consultar los cupos por especialidad, doctor y fecha.

#metadata((src: "README.md", line: 6640))
#strong[Figura 107]

#metadata((src: "README.md", line: 6642))
#emph[Wireflow de consulta de disponibilidad de cupos]

#metadata((src: "README.md", line: 6644, kind: "figure", img: "chapter-03/assets/wireflows/s05-consultar-la-disponibilidad-de-cupos.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s05-consultar-la-disponibilidad-de-cupos.png", alt: "Wireflow de consulta de disponibilidad de cupos de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6648))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6650))
#strong[Explicación del flujo:] En la #link("#figura-107")[Figura 107] se observa que, tras elegir especialidad y fecha, el flujo se bifurca en una vista por especialidad y otra por doctor, y ambas llegan al detalle del bloque con su capacidad.

#metadata((src: "README.md", line: 6651))
#pagebreak()

#heading(level: 6)[S06 · Consultar las citas pendientes] <sec:s06-consultar-las-citas-pendientes>
#metadata((src: "README.md", line: 6652, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6654))
#strong[User Goal:] Como personal de admisión, quiero ver las citas pendientes para organizar la agenda del día.

#metadata((src: "README.md", line: 6658))
#strong[Figura 108]

#metadata((src: "README.md", line: 6660))
#emph[Wireflow de consulta de citas pendientes]

#metadata((src: "README.md", line: 6662, kind: "figure", img: "chapter-03/assets/wireflows/s06-consultar-las-citas-pendientes.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s06-consultar-las-citas-pendientes.png", alt: "Wireflow de consulta de citas pendientes de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6666))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6668))
#strong[Explicación del flujo:] En la #link("#figura-108")[Figura 108] se observa que, desde la tarjeta «Citas pendientes» del Home, se abre el detalle con los pacientes con reserva.

#metadata((src: "README.md", line: 6669))
#pagebreak()

#heading(level: 6)[S07 · Consultar las citas atendidas] <sec:s07-consultar-las-citas-atendidas>
#metadata((src: "README.md", line: 6670, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6672))
#strong[User Goal:] Como personal de admisión, quiero consultar las citas ya atendidas y generar reportes por rango de fechas.

#metadata((src: "README.md", line: 6676))
#strong[Figura 109]

#metadata((src: "README.md", line: 6678))
#emph[Wireflow de consulta de citas atendidas]

#metadata((src: "README.md", line: 6680, kind: "figure", img: "chapter-03/assets/wireflows/s07-consultar-las-citas-atendidas.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s07-consultar-las-citas-atendidas.png", alt: "Wireflow de consulta de citas atendidas de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6684))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6686))
#strong[Explicación del flujo:] En la #link("#figura-109")[Figura 109] se observa que el flujo parte del Home; las pantallas de listado y reporte están marcadas como pendientes de wireframe.

#metadata((src: "README.md", line: 6687))
#pagebreak()

#heading(level: 6)[S08 · Registrar la llegada del paciente (check-in)] <sec:s08-registrar-la-llegada-del-paciente-check-in>
#metadata((src: "README.md", line: 6688, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6690))
#strong[User Goal:] Como personal de admisión, quiero registrar la llegada escaneando el QR o ingresando el código de reserva.

#metadata((src: "README.md", line: 6694))
#strong[Figura 110]

#metadata((src: "README.md", line: 6696))
#emph[Wireflow de registro de llegada del paciente (check-in)]

#metadata((src: "README.md", line: 6698, kind: "figure", img: "chapter-03/assets/wireflows/s08-registrar-la-llegada-del-paciente-check-in.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s08-registrar-la-llegada-del-paciente-check-in.png", alt: "Wireflow de registro de llegada del paciente de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6702))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6704))
#strong[Explicación del flujo:] En la #link("#figura-110")[Figura 110] se observa que el flujo parte del Home; las pantallas de escaneo y alta en la cola están marcadas como pendientes de wireframe.

#metadata((src: "README.md", line: 6705))
#pagebreak()

#heading(level: 6)[S09 · Gestionar la cola de asistencia] <sec:s09-gestionar-la-cola-de-asistencia>
#metadata((src: "README.md", line: 6706, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6708))
#strong[User Goal:] Como personal de admisión, quiero manejar la cola de la sala de espera.

#metadata((src: "README.md", line: 6712))
#strong[Figura 111]

#metadata((src: "README.md", line: 6714))
#emph[Wireflow de gestión de la cola de asistencia]

#metadata((src: "README.md", line: 6716, kind: "figure", img: "chapter-03/assets/wireflows/s09-gestionar-la-cola-de-asistencia.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s09-gestionar-la-cola-de-asistencia.png", alt: "Wireflow de gestión de la cola de asistencia de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6720))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6722))
#strong[Explicación del flujo:] En la #link("#figura-111")[Figura 111] se observa que, desde el Home, se elige la especialidad y se abre la lista «Hoy», donde se atiende y se finaliza cada cita en orden.

#heading(level: 6)[S10 · Configurar los parámetros del establecimiento] <sec:s10-configurar-los-parametros-del-establecimiento>
#metadata((src: "README.md", line: 6724, kind: "heading", level: 6))

#metadata((src: "README.md", line: 6726))
#strong[User Goal:] Como personal de admisión, quiero configurar los parámetros operativos del centro.

#metadata((src: "README.md", line: 6730))
#strong[Figura 112]

#metadata((src: "README.md", line: 6732))
#emph[Wireflow de configuración de los parámetros del establecimiento]

#metadata((src: "README.md", line: 6734, kind: "figure", img: "chapter-03/assets/wireflows/s10-configurar-los-parametros-del-establecimiento.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/wireflows/s10-configurar-los-parametros-del-establecimiento.png", alt: "Wireflow de configuración de los parámetros del establecimiento de SaludYa", width: 100%)]]]

#metadata((src: "README.md", line: 6738))
#emph[Nota. Elaboración propia.]

#metadata((src: "README.md", line: 6740))
#strong[Explicación del flujo:] En la #link("#figura-112")[Figura 112] se observa que, desde Configuración general, se edita un parámetro, que se actualiza con el diálogo «Ingrese el nuevo valor».

#heading(level: 4)[3.1.4.3. Mobile Applications Mock-ups] <sec:3-1-4-3-mobile-applications-mock-ups>
#metadata((src: "README.md", line: 6742, kind: "heading", level: 4))

#metadata((src: "README.md", line: 6744))
En este entregable se presentan los mock-ups de alta fidelidad de la aplicación móvil de SaludYa para el paciente, incluyendo la gestión de citas de menores a su cargo. El diseño parte de los wireframes del equipo y las historias de usuario del reporte. Los recorridos del personal de admisión, Super Admin, configuración operativa y exportación de reportes quedan pendientes para una entrega posterior.

#metadata((src: "README.md", line: 6746))
La identidad visual utiliza el verde primario #raw("#0B8F6B"), fondos claros y tipografía Inter. Las pantallas tienen un tamaño de referencia de 375 × 812 píxeles; los botones principales, una altura de 48 píxeles y esquinas de 12 píxeles. Se incluyen estados de confirmación, error y ausencia de información. Los datos son ficticios y las imágenes representan el diseño de la experiencia.

#metadata((src: "README.md", line: 6748))
#pagebreak()

#metadata((src: "README.md", line: 6750))
#strong[Sección Autenticación y Registro — Identity & Access Management]

#metadata((src: "README.md", line: 6757))
#strong[Figura 113]

#metadata((src: "README.md", line: 6759))
#emph[Bienvenida y registro del paciente]

#metadata((src: "README.md", line: 6761, kind: "figure", img: "chapter-03/assets/mockups/iam-registro.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/iam-registro.png", alt: "Bienvenida y registro del paciente", width: 100%)]]]

#metadata((src: "README.md", line: 6765))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6768))
Presenta la bienvenida, el ingreso del DNI, la verificación de datos personales y el registro del correo, contraseña y celular. Los botones de acceso y registro se agrupan en la bienvenida. La cuenta se verifica mediante un código enviado al correo electrónico registrado. El celular se conserva como dato de contacto; no se utiliza verificación por SMS, como se observa en la #link("#figura-113")[Figura 113].

#metadata((src: "README.md", line: 6770))
#pagebreak()

#metadata((src: "README.md", line: 6774))
#strong[Figura 114]

#metadata((src: "README.md", line: 6776))
#emph[Acceso y recuperación de la cuenta del paciente]

#metadata((src: "README.md", line: 6778, kind: "figure", img: "chapter-03/assets/mockups/iam-acceso-recuperacion.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/iam-acceso-recuperacion.png", alt: "Acceso y recuperación de la cuenta del paciente", width: 100%)]]]

#metadata((src: "README.md", line: 6782))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6785))
El paciente inicia sesión con su correo y contraseña. El rol de este recorrido es Paciente y no se ofrece un selector de perfiles administrativos. La recuperación envía un enlace al correo registrado, con vigencia de 15 minutos; se muestran la solicitud enviada, el enlace vencido, la nueva contraseña y los errores de acceso, como se observa en la #link("#figura-114")[Figura 114].

#metadata((src: "README.md", line: 6787))
#pagebreak()

#metadata((src: "README.md", line: 6789))
#strong[Sección Dashboard del Paciente]

#metadata((src: "README.md", line: 6796))
#strong[Figura 115]

#metadata((src: "README.md", line: 6798))
#emph[Inicio, citas pendientes e historial del paciente]

#metadata((src: "README.md", line: 6800, kind: "figure", img: "chapter-03/assets/mockups/dashboard.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/dashboard.png", alt: "Inicio, citas pendientes e historial del paciente", width: 100%)]]]

#metadata((src: "README.md", line: 6804))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6807))
El inicio reúne las citas pendientes, el acceso al historial y la reserva de una nueva cita. La campana de notificaciones se ubica en el extremo derecho de la cabecera. Las tarjetas identifican al beneficiario, la especialidad, el profesional, la fecha y el estado de la cita. Se incluyen el filtro por fecha, el detalle de la reserva y los estados sin citas o con error de carga, como se observa en la #link("#figura-115")[Figura 115].

#metadata((src: "README.md", line: 6809))
#pagebreak()

#metadata((src: "README.md", line: 6811))
#strong[Sección Reserva de Citas]

#metadata((src: "README.md", line: 6816))
#strong[Figura 116]

#metadata((src: "README.md", line: 6818))
#emph[Selección de especialidad, beneficiario, fecha, profesional y horario]

#metadata((src: "README.md", line: 6820, kind: "figure", img: "chapter-03/assets/mockups/reservas-seleccion.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/reservas-seleccion.png", alt: "Selección de especialidad, beneficiario, fecha, profesional y horario", width: 100%)]]]

#metadata((src: "README.md", line: 6824))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6827))
El paciente selecciona la especialidad, al titular o menor vinculado y una fecha disponible. Puede elegir primero al profesional o consultar directamente los horarios mediante la opción ubicada antes de la lista. Los horarios sin cupos se distinguen con texto y color de estado y no permiten selección, como se observa en la #link("#figura-116")[Figura 116].

#metadata((src: "README.md", line: 6829))
#pagebreak()

#metadata((src: "README.md", line: 6833))
#strong[Figura 117]

#metadata((src: "README.md", line: 6835))
#emph[Resumen, confirmación y estados de la reserva]

#metadata((src: "README.md", line: 6837, kind: "figure", img: "chapter-03/assets/mockups/reservas-confirmacion.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/reservas-confirmacion.png", alt: "Resumen, confirmación y estados de la reserva", width: 100%)]]]

#metadata((src: "README.md", line: 6841))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6844))
El resumen permite revisar los datos antes de confirmar la cita. La reserva confirmada muestra su código identificador y los detalles de atención. Los estados alternativos contemplan cupos ocupados, cruces de horarios, falta de disponibilidad y restricciones de cancelación. Un fallo en el envío del comprobante no anula la reserva, como se observa en la #link("#figura-117")[Figura 117].

#metadata((src: "README.md", line: 6846))
#pagebreak()

#metadata((src: "README.md", line: 6848))
#strong[Sección Check-in y Atención del Paciente]

#metadata((src: "README.md", line: 6854))
#strong[Figura 118]

#metadata((src: "README.md", line: 6856))
#emph[Registro de llegada, escaneo del QR del establecimiento, ticket y cola]

#metadata((src: "README.md", line: 6858, kind: "figure", img: "chapter-03/assets/mockups/check-in-atencion.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/check-in-atencion.png", alt: "Registro de llegada, escaneo del QR del establecimiento, ticket y cola", width: 100%)]]]

#metadata((src: "README.md", line: 6862))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6865))
Para registrar su llegada, el paciente selecciona una reserva y escanea el QR ubicado en el establecimiento, conforme a US-12. La aplicación valida la cita y la ventana de tolerancia antes de confirmar la presencia. Este recorrido no solicita presentar un QR personal generado al reservar, como se observa en la #link("#figura-118")[Figura 118].

#metadata((src: "README.md", line: 6867))
Después del check-in se habilitan el ticket digital y la posición en la cola, ordenada por llegada presencial. Para los menores se identifica al beneficiario y a su representante. Se muestran el llamado a consultorio, la atención finalizada, la ausencia y los errores de QR o de horario. La variante que ocultaba la posición de la cola queda fuera de este entregable.

#metadata((src: "README.md", line: 6869))
#pagebreak()

#metadata((src: "README.md", line: 6871))
#strong[Sección Configuración y Perfil del Paciente]

#metadata((src: "README.md", line: 6877))
#strong[Figura 119]

#metadata((src: "README.md", line: 6879))
#emph[Configuración, datos personales y actualización del contacto]

#metadata((src: "README.md", line: 6881, kind: "figure", img: "chapter-03/assets/mockups/configuracion-perfil.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/configuracion-perfil.png", alt: "Configuración, datos personales y actualización del contacto", width: 100%)]]]

#metadata((src: "README.md", line: 6885))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6888))
El paciente consulta sus datos y actualiza su celular o correo. El nuevo correo se verifica con un código enviado a esa dirección. Para cambiar el celular, confirma la operación mediante un código enviado al correo registrado; el número se mantiene como dato de contacto. Se presentan los estados de actualización, código incorrecto o vencido y datos inválidos. La identidad verificada permanece como información de consulta, como se observa en la #link("#figura-119")[Figura 119].

#metadata((src: "README.md", line: 6890))
#pagebreak()

#metadata((src: "README.md", line: 6892))
#strong[Sección Gestión de Menores Vinculados]

#metadata((src: "README.md", line: 6898))
#strong[Figura 120]

#metadata((src: "README.md", line: 6900))
#emph[Vinculación, verificación y gestión de menores a cargo]

#metadata((src: "README.md", line: 6902, kind: "figure", img: "chapter-03/assets/mockups/configuracion-menores.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/configuracion-menores.png", alt: "Vinculación, verificación y gestión de menores a cargo", width: 100%)]]]

#metadata((src: "README.md", line: 6906))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6909))
El titular consulta sus menores vinculados, registra un menor y verifica sus datos para gestionar sus citas. Se incluyen el detalle del menor, el inicio del representado, la lista vacía, las restricciones de vinculación y la confirmación de desvinculación, como se observa en la #link("#figura-120")[Figura 120].

#metadata((src: "README.md", line: 6911))
#pagebreak()

#metadata((src: "README.md", line: 6913))
#strong[Sección Notificaciones y Reasignación de Citas]

#metadata((src: "README.md", line: 6918))
#strong[Figura 121]

#metadata((src: "README.md", line: 6920))
#emph[Notificaciones y ofertas de reasignación de citas]

#metadata((src: "README.md", line: 6922, kind: "figure", img: "chapter-03/assets/mockups/notificaciones.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mockups/notificaciones.png", alt: "Notificaciones y ofertas de reasignación de citas", width: 100%)]]]

#metadata((src: "README.md", line: 6926))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6929))
Las notificaciones informan sobre reservas, llamados y propuestas de adelanto. El paciente compara el horario actual con el ofrecido y acepta o rechaza la propuesta dentro del plazo. El rechazo, el vencimiento de la oferta o la ocupación del cupo conservan la reserva original, como se observa en la #link("#figura-121")[Figura 121].

#metadata((src: "README.md", line: 6931))
#strong[Archivo de diseño]

#metadata((src: "README.md", line: 6933))
#link("https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=2-2")[Mobile Application Mockups — SaludYa]

#heading(level: 4)[3.1.4.4. Mobile Applications User Flow Diagrams] <sec:3-1-4-4-mobile-applications-user-flow-diagrams>
#metadata((src: "README.md", line: 6935, kind: "heading", level: 4))

#metadata((src: "README.md", line: 6937))
Los user flow diagrams describen los recorridos del paciente y del titular que gestiona citas de menores a su cargo. Se elaboraron a partir de los mock-ups corregidos y las historias de usuario del reporte, manteniendo el alcance de este entregable.

#metadata((src: "README.md", line: 6939))
Se presentan 15 objetivos mediante 30 diagramas. Cada objetivo incluye un #strong[Happy Path], correspondiente al recorrido esperado, y sus #strong[Unhappy Paths], con errores, restricciones y decisiones alternativas. La lectura es de izquierda a derecha: los extremos redondeados representan inicio o resultado, los rectángulos indican pantallas o acciones, los rombos muestran decisiones y las flechas enlazan los pasos.

#metadata((src: "README.md", line: 6941))
Los recorridos comprenden registro, acceso, recuperación, perfil, menores, citas, reasignación, llegada, ticket, cola y sesión. No se incluyen los flujos del personal de admisión ni de administración.

#metadata((src: "README.md", line: 6943))
- #strong[User Goal 1:] Registrarse como paciente.

#metadata((src: "README.md", line: 6945))
#strong[Happy Path]

#metadata((src: "README.md", line: 6947))
El paciente accede a Bienvenida, selecciona Registrarse e ingresa su DNI y datos personales. Tras validar su identidad, completa los datos de acceso y verifica su correo mediante el código recibido por email. El recorrido finaliza con la cuenta creada, como se observa en la #link("#figura-122")[Figura 122].

#metadata((src: "README.md", line: 6952))
#strong[Figura 122]

#metadata((src: "README.md", line: 6954))
#emph[Registrarse como paciente — recorrido esperado]

#metadata((src: "README.md", line: 6956, kind: "figure", img: "chapter-03/assets/userflows/user-goal-01-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-01-happy.png", alt: "Registrarse como paciente — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 6960))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6963))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 6965))
Se consideran datos de identidad no coincidentes, correo registrado, código incorrecto e indisponibilidad del servicio de identidad. El paciente corrige sus datos o reintenta la validación antes de crear la cuenta, como se observa en la #link("#figura-123")[Figura 123].

#metadata((src: "README.md", line: 6970))
#strong[Figura 123]

#metadata((src: "README.md", line: 6972))
#emph[Registrarse como paciente — errores y alternativas]

#metadata((src: "README.md", line: 6974, kind: "figure", img: "chapter-03/assets/userflows/user-goal-01-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-01-unhappy.png", alt: "Registrarse como paciente — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 6978))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 6981))
- #strong[User Goal 2:] Iniciar sesión como paciente.

#metadata((src: "README.md", line: 6983))
#strong[Happy Path]

#metadata((src: "README.md", line: 6985))
El paciente ingresa su correo y contraseña. Si la cuenta está activa y las credenciales son válidas, accede a Inicio. El recorrido corresponde exclusivamente al paciente, sin selección de perfiles administrativos, como se observa en la #link("#figura-124")[Figura 124].

#metadata((src: "README.md", line: 6990))
#strong[Figura 124]

#metadata((src: "README.md", line: 6992))
#emph[Iniciar sesión como paciente — recorrido esperado]

#metadata((src: "README.md", line: 6994, kind: "figure", img: "chapter-03/assets/userflows/user-goal-02-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-02-happy.png", alt: "Iniciar sesión como paciente — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 6998))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7001))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7003))
Las credenciales incorrectas mantienen al paciente en el acceso. Para una cuenta inactiva se indica la consulta con admisión. El acceso se realiza por correo y contraseña, sin verificación por SMS, como se observa en la #link("#figura-125")[Figura 125].

#metadata((src: "README.md", line: 7008))
#strong[Figura 125]

#metadata((src: "README.md", line: 7010))
#emph[Iniciar sesión como paciente — errores y alternativas]

#metadata((src: "README.md", line: 7012, kind: "figure", img: "chapter-03/assets/userflows/user-goal-02-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-02-unhappy.png", alt: "Iniciar sesión como paciente — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7016))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7019))
- #strong[User Goal 3:] Recuperar la contraseña.

#metadata((src: "README.md", line: 7021))
#strong[Happy Path]

#metadata((src: "README.md", line: 7023))
El paciente solicita la recuperación con su correo registrado. La aplicación muestra una confirmación genérica; el enlace recibido permite definir una nueva contraseña durante sus 15 minutos de vigencia, como se observa en la #link("#figura-126")[Figura 126].

#metadata((src: "README.md", line: 7028))
#strong[Figura 126]

#metadata((src: "README.md", line: 7030))
#emph[Recuperar la contraseña — recorrido esperado]

#metadata((src: "README.md", line: 7032, kind: "figure", img: "chapter-03/assets/userflows/user-goal-03-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-03-happy.png", alt: "Recuperar la contraseña — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7036))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7039))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7041))
Se presentan enlaces vencidos o inválidos, contraseñas diferentes y pérdida de acceso al correo. Un correo no registrado recibe una respuesta genérica y no genera token. La recuperación asistida requiere verificar la identidad del paciente, como se observa en la #link("#figura-127")[Figura 127].

#metadata((src: "README.md", line: 7046))
#strong[Figura 127]

#metadata((src: "README.md", line: 7048))
#emph[Recuperar la contraseña — errores y alternativas]

#metadata((src: "README.md", line: 7050, kind: "figure", img: "chapter-03/assets/userflows/user-goal-03-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-03-unhappy.png", alt: "Recuperar la contraseña — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7054))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7056))
#pagebreak()

#metadata((src: "README.md", line: 7058))
- #strong[User Goal 4:] Vincular o desvincular a un menor.

#metadata((src: "README.md", line: 7060))
#strong[Happy Path]

#metadata((src: "README.md", line: 7062))
El titular ingresa los datos del menor y confirma su vinculación después de verificar identidad y filiación. Desde el detalle puede consultar sus citas o confirmar la desvinculación, como se observa en la #link("#figura-128")[Figura 128].

#metadata((src: "README.md", line: 7067))
#strong[Figura 128]

#metadata((src: "README.md", line: 7069))
#emph[Vincular o desvincular a un menor — recorrido esperado]

#metadata((src: "README.md", line: 7071, kind: "figure", img: "chapter-03/assets/userflows/user-goal-04-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-04-happy.png", alt: "Vincular o desvincular a un menor — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7075))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7078))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7080))
Se representan vínculos existentes, datos o edad inválidos y cancelación de la desvinculación. Cuando se requiere revisión de tutela, el titular consulta con admisión, como se observa en la #link("#figura-129")[Figura 129].

#metadata((src: "README.md", line: 7085))
#strong[Figura 129]

#metadata((src: "README.md", line: 7087))
#emph[Vincular o desvincular a un menor — errores y alternativas]

#metadata((src: "README.md", line: 7089, kind: "figure", img: "chapter-03/assets/userflows/user-goal-04-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-04-unhappy.png", alt: "Vincular o desvincular a un menor — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7093))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7096))
- #strong[User Goal 5:] Actualizar el correo o celular del perfil.

#metadata((src: "README.md", line: 7098))
#strong[Happy Path]

#metadata((src: "README.md", line: 7100))
El paciente consulta sus datos y modifica su correo o celular. Si cambia el correo, verifica la nueva dirección; si cambia el celular, confirma la operación con un código enviado al correo registrado. El recorrido finaliza con la actualización y su confirmación, como se observa en la #link("#figura-130")[Figura 130].

#metadata((src: "README.md", line: 7105))
#strong[Figura 130]

#metadata((src: "README.md", line: 7107))
#emph[Actualizar el correo o celular del perfil — recorrido esperado]

#metadata((src: "README.md", line: 7109, kind: "figure", img: "chapter-03/assets/userflows/user-goal-05-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-05-happy.png", alt: "Actualizar el correo o celular del perfil — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7113))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7116))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7118))
Se consideran formatos inválidos, correo duplicado y códigos incorrectos o vencidos. El paciente corrige el dato o solicita un nuevo código por correo. Los datos de identidad permanecen de consulta, como se observa en la #link("#figura-131")[Figura 131].

#metadata((src: "README.md", line: 7123))
#strong[Figura 131]

#metadata((src: "README.md", line: 7125))
#emph[Actualizar el correo o celular del perfil — errores y alternativas]

#metadata((src: "README.md", line: 7127, kind: "figure", img: "chapter-03/assets/userflows/user-goal-05-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-05-unhappy.png", alt: "Actualizar el correo o celular del perfil — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7131))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7134))
- #strong[User Goal 6:] Consultar disponibilidad de citas.

#metadata((src: "README.md", line: 7136))
#strong[Happy Path]

#metadata((src: "README.md", line: 7138))
El paciente selecciona una especialidad y una fecha. Consulta profesionales y horarios disponibles; la alternativa de elegir por horario se encuentra antes de la lista de profesionales, como se observa en la #link("#figura-132")[Figura 132].

#metadata((src: "README.md", line: 7143))
#strong[Figura 132]

#metadata((src: "README.md", line: 7145))
#emph[Consultar disponibilidad de citas — recorrido esperado]

#metadata((src: "README.md", line: 7147, kind: "figure", img: "chapter-03/assets/userflows/user-goal-06-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-06-happy.png", alt: "Consultar disponibilidad de citas — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7151))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7154))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7156))
Una búsqueda sin resultados permite cambiar el texto. Si no hay cupos para el día, el paciente vuelve al calendario y elige otra fecha. Los horarios sin cupos no se seleccionan, como se observa en la #link("#figura-133")[Figura 133].

#metadata((src: "README.md", line: 7161))
#strong[Figura 133]

#metadata((src: "README.md", line: 7163))
#emph[Consultar disponibilidad de citas — errores y alternativas]

#metadata((src: "README.md", line: 7165, kind: "figure", img: "chapter-03/assets/userflows/user-goal-06-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-06-unhappy.png", alt: "Consultar disponibilidad de citas — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7169))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7172))
- #strong[User Goal 7:] Reservar una cita y recibir confirmación.

#metadata((src: "README.md", line: 7174))
#strong[Happy Path]

#metadata((src: "README.md", line: 7176))
El titular indica el beneficiario, elige fecha, profesional y horario y revisa el resumen. Al confirmar, recibe el código de reserva y el comprobante de la cita, como se observa en la #link("#figura-134")[Figura 134].

#metadata((src: "README.md", line: 7181))
#strong[Figura 134]

#metadata((src: "README.md", line: 7183))
#emph[Reservar una cita y recibir confirmación — recorrido esperado]

#metadata((src: "README.md", line: 7185, kind: "figure", img: "chapter-03/assets/userflows/user-goal-07-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-07-happy.png", alt: "Reservar una cita y recibir confirmación — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7189))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7192))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7194))
Se contemplan un cupo tomado, una cita coincidente, cancelación de la confirmación y fallo en el envío del comprobante. Si el correo queda pendiente, la reserva continúa confirmada, como se observa en la #link("#figura-135")[Figura 135].

#metadata((src: "README.md", line: 7199))
#strong[Figura 135]

#metadata((src: "README.md", line: 7201))
#emph[Reservar una cita y recibir confirmación — errores y alternativas]

#metadata((src: "README.md", line: 7203, kind: "figure", img: "chapter-03/assets/userflows/user-goal-07-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-07-unhappy.png", alt: "Reservar una cita y recibir confirmación — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7207))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7210))
- #strong[User Goal 8:] Consultar citas, detalles e historial.

#metadata((src: "README.md", line: 7212))
#strong[Happy Path]

#metadata((src: "README.md", line: 7214))
Desde Inicio, el paciente consulta citas pendientes o historial, aplica un filtro por fecha y abre el detalle de una cita propia o de un menor, como se observa en la #link("#figura-136")[Figura 136].

#metadata((src: "README.md", line: 7219))
#strong[Figura 136]

#metadata((src: "README.md", line: 7221))
#emph[Consultar citas, detalles e historial — recorrido esperado]

#metadata((src: "README.md", line: 7223, kind: "figure", img: "chapter-03/assets/userflows/user-goal-08-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-08-happy.png", alt: "Consultar citas, detalles e historial — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7227))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7230))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7232))
Se presentan ausencia de citas, error de carga y necesidad de seleccionar al menor representado. El paciente puede reservar, reintentar la consulta o cambiar de beneficiario, como se observa en la #link("#figura-137")[Figura 137].

#metadata((src: "README.md", line: 7237))
#strong[Figura 137]

#metadata((src: "README.md", line: 7239))
#emph[Consultar citas, detalles e historial — errores y alternativas]

#metadata((src: "README.md", line: 7241, kind: "figure", img: "chapter-03/assets/userflows/user-goal-08-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-08-unhappy.png", alt: "Consultar citas, detalles e historial — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7245))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7248))
- #strong[User Goal 9:] Cancelar una reserva dentro del plazo.

#metadata((src: "README.md", line: 7250))
#strong[Happy Path]

#metadata((src: "README.md", line: 7252))
El paciente abre el detalle de una reserva y solicita cancelarla. Dentro del plazo permitido, confirma la operación y consulta el estado Cancelada, como se observa en la #link("#figura-138")[Figura 138].

#metadata((src: "README.md", line: 7257))
#strong[Figura 138]

#metadata((src: "README.md", line: 7259))
#emph[Cancelar una reserva dentro del plazo — recorrido esperado]

#metadata((src: "README.md", line: 7261, kind: "figure", img: "chapter-03/assets/userflows/user-goal-09-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-09-happy.png", alt: "Cancelar una reserva dentro del plazo — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7265))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7268))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7270))
Fuera del plazo, la reserva sigue activa y se indica la consulta con admisión. Si cancela la confirmación, conserva la cita. Cancelar una reserva se distingue de dejar la cola presencial, como se observa en la #link("#figura-139")[Figura 139].

#metadata((src: "README.md", line: 7275))
#strong[Figura 139]

#metadata((src: "README.md", line: 7277))
#emph[Cancelar una reserva dentro del plazo — errores y alternativas]

#metadata((src: "README.md", line: 7279, kind: "figure", img: "chapter-03/assets/userflows/user-goal-09-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-09-unhappy.png", alt: "Cancelar una reserva dentro del plazo — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7283))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7286))
- #strong[User Goal 10:] Responder a una oferta de adelanto.

#metadata((src: "README.md", line: 7288))
#strong[Happy Path]

#metadata((src: "README.md", line: 7290))
El paciente recibe una oferta de adelanto, compara ambos horarios y acepta mientras la oferta y el cupo siguen vigentes. El nuevo horario reemplaza al anterior, como se observa en la #link("#figura-140")[Figura 140].

#metadata((src: "README.md", line: 7295))
#strong[Figura 140]

#metadata((src: "README.md", line: 7297))
#emph[Responder a una oferta de adelanto — recorrido esperado]

#metadata((src: "README.md", line: 7299, kind: "figure", img: "chapter-03/assets/userflows/user-goal-10-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-10-happy.png", alt: "Responder a una oferta de adelanto — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7303))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7306))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7308))
El rechazo, el vencimiento o un cupo ya tomado conservan la cita original. Cada estado permite volver a consultar la reserva actual, como se observa en la #link("#figura-141")[Figura 141].

#metadata((src: "README.md", line: 7313))
#strong[Figura 141]

#metadata((src: "README.md", line: 7315))
#emph[Responder a una oferta de adelanto — errores y alternativas]

#metadata((src: "README.md", line: 7317, kind: "figure", img: "chapter-03/assets/userflows/user-goal-10-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-10-unhappy.png", alt: "Responder a una oferta de adelanto — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7321))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7324))
- #strong[User Goal 11:] Registrar llegada presencial mediante QR.

#metadata((src: "README.md", line: 7326))
#strong[Happy Path]

#metadata((src: "README.md", line: 7328))
Al llegar al establecimiento, el titular selecciona su reserva o la del menor y escanea el QR del establecimiento. Si la cita y la ventana horaria son válidas, se confirma la presencia, se ingresa a la cola y se habilita el ticket, como se observa en la #link("#figura-142")[Figura 142].

#metadata((src: "README.md", line: 7333))
#strong[Figura 142]

#metadata((src: "README.md", line: 7335))
#emph[Registrar llegada presencial mediante QR — recorrido esperado]

#metadata((src: "README.md", line: 7337, kind: "figure", img: "chapter-03/assets/userflows/user-goal-11-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-11-happy.png", alt: "Registrar llegada presencial mediante QR — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7341))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7343))
#pagebreak()

#metadata((src: "README.md", line: 7345))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7347))
Un QR inválido o una reserva inactiva impiden registrar la llegada. Una llegada anticipada requiere esperar la ventana; una llegada fuera de tolerancia registra la inasistencia y activa la liberación del cupo, como se observa en la #link("#figura-143")[Figura 143].

#metadata((src: "README.md", line: 7352))
#strong[Figura 143]

#metadata((src: "README.md", line: 7354))
#emph[Registrar llegada presencial mediante QR — errores y alternativas]

#metadata((src: "README.md", line: 7356, kind: "figure", img: "chapter-03/assets/userflows/user-goal-11-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-11-unhappy.png", alt: "Registrar llegada presencial mediante QR — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7360))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7363))
- #strong[User Goal 12:] Obtener el ticket digital de atención.

#metadata((src: "README.md", line: 7365))
#strong[Happy Path]

#metadata((src: "README.md", line: 7367))
Después del check-in, el paciente obtiene su código de turno y consulta el ticket con los datos del beneficiario, profesional, sala y consultorio, como se observa en la #link("#figura-144")[Figura 144].

#metadata((src: "README.md", line: 7372))
#strong[Figura 144]

#metadata((src: "README.md", line: 7374))
#emph[Obtener el ticket digital de atención — recorrido esperado]

#metadata((src: "README.md", line: 7376, kind: "figure", img: "chapter-03/assets/userflows/user-goal-12-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-12-happy.png", alt: "Obtener el ticket digital de atención — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7380))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7383))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7385))
Sin presencia confirmada debe registrar primero la llegada. Si el turno ya finalizó o fue declarado ausente, consulta el estado correspondiente, como se observa en la #link("#figura-145")[Figura 145].

#metadata((src: "README.md", line: 7390))
#strong[Figura 145]

#metadata((src: "README.md", line: 7392))
#emph[Obtener el ticket digital de atención — errores y alternativas]

#metadata((src: "README.md", line: 7394, kind: "figure", img: "chapter-03/assets/userflows/user-goal-12-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-12-unhappy.png", alt: "Obtener el ticket digital de atención — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7398))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7401))
- #strong[User Goal 13:] Consultar posición o dejar la cola.

#metadata((src: "README.md", line: 7403))
#pagebreak()

#metadata((src: "README.md", line: 7404))
#strong[Happy Path]

#metadata((src: "README.md", line: 7406))
El paciente con check-in confirmado y turno activo consulta su posición y el total de pacientes, ordenados por llegada presencial. También puede confirmar que deja la cola, como se observa en la #link("#figura-146")[Figura 146].

#metadata((src: "README.md", line: 7411))
#strong[Figura 146]

#metadata((src: "README.md", line: 7413))
#emph[Consultar posición o dejar la cola — recorrido esperado]

#metadata((src: "README.md", line: 7415, kind: "figure", img: "chapter-03/assets/userflows/user-goal-13-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-13-happy.png", alt: "Consultar posición o dejar la cola — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7419))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7422))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7424))
Sin check-in se solicita registrar la llegada. Un turno atendido o ausente muestra su estado final; cancelar la salida conserva al paciente en espera. No se incluye la variante de cola oculta, como se observa en la #link("#figura-147")[Figura 147].

#metadata((src: "README.md", line: 7429))
#strong[Figura 147]

#metadata((src: "README.md", line: 7431))
#emph[Consultar posición o dejar la cola — errores y alternativas]

#metadata((src: "README.md", line: 7433, kind: "figure", img: "chapter-03/assets/userflows/user-goal-13-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-13-unhappy.png", alt: "Consultar posición o dejar la cola — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7437))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7440))
- #strong[User Goal 14:] Recibir el llamado y acudir al consultorio.

#metadata((src: "README.md", line: 7442))
#strong[Happy Path]

#metadata((src: "README.md", line: 7444))
El paciente recibe el llamado, consulta el ticket y se dirige al consultorio dentro del margen establecido para su atención, como se observa en la #link("#figura-148")[Figura 148].

#metadata((src: "README.md", line: 7449))
#strong[Figura 148]

#metadata((src: "README.md", line: 7451))
#emph[Recibir el llamado y acudir al consultorio — recorrido esperado]

#metadata((src: "README.md", line: 7453, kind: "figure", img: "chapter-03/assets/userflows/user-goal-14-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-14-happy.png", alt: "Recibir el llamado y acudir al consultorio — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7457))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7460))
#pagebreak()

#metadata((src: "README.md", line: 7461))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7463))
Se contemplan turno aún no llamado, vencimiento del plazo posterior al llamado y falta de respuesta. La aplicación muestra el estado y orienta al paciente sobre el siguiente paso, como se observa en la #link("#figura-149")[Figura 149].

#metadata((src: "README.md", line: 7468))
#strong[Figura 149]

#metadata((src: "README.md", line: 7470))
#emph[Recibir el llamado y acudir al consultorio — errores y alternativas]

#metadata((src: "README.md", line: 7472, kind: "figure", img: "chapter-03/assets/userflows/user-goal-14-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-14-unhappy.png", alt: "Recibir el llamado y acudir al consultorio — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7476))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7479))
- #strong[User Goal 15:] Cerrar sesión o recuperar acceso a una sesión.

#metadata((src: "README.md", line: 7481))
#strong[Happy Path]

#metadata((src: "README.md", line: 7483))
El paciente abre su perfil, solicita cerrar sesión y confirma. La aplicación finaliza la sesión y vuelve a Bienvenida, como se observa en la #link("#figura-150")[Figura 150].

#metadata((src: "README.md", line: 7488))
#strong[Figura 150]

#metadata((src: "README.md", line: 7490))
#emph[Cerrar sesión o recuperar acceso a una sesión — recorrido esperado]

#metadata((src: "README.md", line: 7492, kind: "figure", img: "chapter-03/assets/userflows/user-goal-15-happy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-15-happy.png", alt: "Cerrar sesión o recuperar acceso a una sesión — recorrido esperado", width: 100%)]]]

#metadata((src: "README.md", line: 7496))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7499))
#strong[Unhappy Paths]

#metadata((src: "README.md", line: 7501))
Cancelar el cierre conserva la sesión activa. Una sesión expirada requiere volver a ingresar con las credenciales del paciente, como se observa en la #link("#figura-151")[Figura 151].

#metadata((src: "README.md", line: 7506))
#strong[Figura 151]

#metadata((src: "README.md", line: 7508))
#emph[Cerrar sesión o recuperar acceso a una sesión — errores y alternativas]

#metadata((src: "README.md", line: 7510, kind: "figure", img: "chapter-03/assets/userflows/user-goal-15-unhappy.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/userflows/user-goal-15-unhappy.png", alt: "Cerrar sesión o recuperar acceso a una sesión — errores y alternativas", width: 100%)]]]

#metadata((src: "README.md", line: 7514))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7517))
#strong[Archivo de diagramas]

#metadata((src: "README.md", line: 7519))
#link("https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=0-1")[Mobile Applications User Flow Diagrams — SaludYa]

#heading(level: 4)[3.1.4.5. Mobile Applications Prototyping] <sec:3-1-4-5-mobile-applications-prototyping>
#metadata((src: "README.md", line: 7521, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7523))
En esta sección se presenta el prótotipo interactivo desarrollado en Figma para la aplicación móvil. El diseño y los flujos de navegación están alineados con la arquitectura de información y los user flow diagrams definidos.

#metadata((src: "README.md", line: 7526))
A continuación, se adjunta el enlace al video de demostración, como se observa en la #link("#figura-152")[Figura 152].

#metadata((src: "README.md", line: 7531))
#strong[Figura 152]

#metadata((src: "README.md", line: 7533))
#emph[Mobile applications prototyping]

#metadata((src: "README.md", line: 7535, kind: "figure", img: "chapter-03/assets/mobile-application-prototyping.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-03/assets/mobile-application-prototyping.png", alt: "Mobile applications prototyping", width: 100%)]]]

#metadata((src: "README.md", line: 7539))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7542))
#link("https://l1nq.com/u85pwhp")[Video Mobile Applications Prototyping]

#metadata((src: "README.md", line: 7544))
#pagebreak()

#heading(level: 1)[Capítulo IV: Product Implementation & Validation] <sec:capitulo-iv-product-implementation-validation>
#metadata((src: "README.md", line: 7546, kind: "heading", level: 1))

#heading(level: 2)[4. Product Implementation & Validation] <sec:4-product-implementation-validation>
#metadata((src: "README.md", line: 7548, kind: "heading", level: 2))

#heading(level: 2)[4.1. Software Configuration Management] <sec:4-1-software-configuration-management>
#metadata((src: "README.md", line: 7550, kind: "heading", level: 2))

#heading(level: 3)[4.1.1. Software Development Environment Configuration] <sec:4-1-1-software-development-environment-configuration>
#metadata((src: "README.md", line: 7552, kind: "heading", level: 3))

#metadata((src: "README.md", line: 7554))
En esta sección se especifican los productos de software que el equipo #strong[RuwaLabs] utilizó para colaborar en el ciclo de vida de #strong[SaludYa], abarcando las actividades de #strong[gestión del proyecto], #strong[gestión de requisitos], #strong[diseño UX\/UI], #strong[desarrollo], #strong[despliegue] y #strong[documentación]. Para cada producto se indica su #strong[propósito de uso en el proyecto] y su #strong[ruta de referencia] (cuando es software basado en modelos SaaS) o #strong[ruta de descarga] (cuando es software que se ejecuta en el equipo de los integrantes), como se detalla en la #link("#tabla-59")[Tabla 59].

#metadata((src: "README.md", line: 7558))
#strong[Tabla 59]

#metadata((src: "README.md", line: 7560))
#emph[Software Development Environment Configuration]

#metadata((src: "README.md", line: 7562, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Actividad], [Producto], [Propósito de uso en el proyecto], [Ruta de referencia \/ descarga]),
  tline,
  [Project Management], [Jira], [Planificación y seguimiento del proyecto, organización del backlog y de los sprints], [#link("https://ruwalabs-salud-ya.atlassian.net/")[https:\/\/ruwalabs-salud-ya.atlassian.net\/]],
  [Project Management], [Jitsi Meet], [Reuniones de coordinación del equipo (sprint planning, dailies y revisiones)], [#link("https://meet.jit.si/")[https:\/\/meet.jit.si\/]],
  [Project Management], [Discord], [Comunicación diaria y coordinación del equipo], [#link("https://discord.com/download")[https:\/\/discord.com\/download]],
  [Requirements Management], [Jira], [Registro, priorización y seguimiento de épicas, user stories y product backlog], [#link("https://ruwalabs-salud-ya.atlassian.net/")[https:\/\/ruwalabs-salud-ya.atlassian.net\/]],
  [Requirements Management], [Miro], [EventStorming y modelado colaborativo del dominio], [#link("https://miro.com/")[https:\/\/miro.com\/]],
  [Product UX\/UI Design], [Figma], [Diseño de wireframes, mock-ups, user flows y prototipado], [#link("https://www.figma.com/")[https:\/\/www.figma.com\/]],
  [Software Development], [Android Studio], [IDE para el desarrollo de la aplicación Android (Kotlin y Jetpack Compose)], [#link("https://developer.android.com/studio")[https:\/\/developer.android.com\/studio]],
  [Software Development], [IntelliJ IDEA], [IDE para el desarrollo del backend (Spring Boot)], [#link("https://www.jetbrains.com/idea/download/")[https:\/\/www.jetbrains.com\/idea\/download\/]],
  [Software Development], [Kotlin], [Lenguaje de programación de las aplicaciones móviles], [#link("https://kotlinlang.org/")[https:\/\/kotlinlang.org\/]],
  [Software Development], [Java (JDK)], [Lenguaje de programación del backend], [#link("https://adoptium.net/")[https:\/\/adoptium.net\/]],
  [Software Development], [Spring Boot], [Framework para la construcción de los servicios web REST], [#link("https://spring.io/projects/spring-boot")[https:\/\/spring.io\/projects\/spring-boot]],
  [Software Development], [Maven], [Gestión de dependencias y construcción del backend], [#link("https://maven.apache.org/download.cgi")[https:\/\/maven.apache.org\/download.cgi]],
  [Software Development], [Gradle], [Construcción de la aplicación Android], [#link("https://gradle.org/")[https:\/\/gradle.org\/]],
  [Software Development], [PostgreSQL], [Base de datos relacional del sistema], [#link("https://www.postgresql.org/download/")[https:\/\/www.postgresql.org\/download\/]],
  [Software Development], [Git \/ GitHub], [Control de versiones y hospedaje de los repositorios del proyecto], [#link("https://git-scm.com/downloads")[https:\/\/git-scm.com\/downloads] · #link("https://github.com/RuwaLabs")[https:\/\/github.com\/RuwaLabs]],
  [Software Development], [Postman], [Pruebas manuales de los endpoints de los servicios web], [#link("https://www.postman.com/downloads/")[https:\/\/www.postman.com\/downloads\/]],
  [Software Development], [springdoc-openapi (Swagger UI)], [Generación de la documentación de la API (OpenAPI)], [#link("https://springdoc.org/")[https:\/\/springdoc.org\/]],
  [Software Deployment], [GitHub Pages], [Publicación del Landing Page], [#link("https://pages.github.com/")[https:\/\/pages.github.com\/]],
  [Software Deployment], [AWS (EC2)], [Despliegue de los servicios web (Spring Boot) y de la base de datos PostgreSQL], [#link("https://aws.amazon.com/ec2/")[https:\/\/aws.amazon.com\/ec2\/]],
  [Software Documentation], [Obsidian], [Redacción y edición del informe en formato Markdown], [#link("https://obsidian.md/download")[https:\/\/obsidian.md\/download]],
  [Software Documentation], [GitHub (Markdown)], [Versionado y publicación de la documentación del proyecto], [#link("https://github.com/RuwaLabs")[https:\/\/github.com\/RuwaLabs]],
  [Software Documentation], [PlantUML \/ diagrams.net], [Elaboración de diagramas UML y del modelo C4], [#link("https://plantuml.com/")[https:\/\/plantuml.com\/] · #link("https://app.diagrams.net/")[https:\/\/app.diagrams.net\/]],
  tline,
)

#metadata((src: "README.md", line: 7587))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 3)[4.1.2. Source Code Management] <sec:4-1-2-source-code-management>
#metadata((src: "README.md", line: 7589, kind: "heading", level: 3))

#metadata((src: "README.md", line: 7591))
En esta sección se establecen los medios y el esquema de organización que el equipo #strong[RuwaLabs] aplica para el seguimiento de modificaciones a lo largo del ciclo de vida de #strong[SaludYa]. Como plataforma y sistema de control de versiones se utiliza #strong[GitHub], sobre el cual se aplica #strong[GitFlow] como modelo de ramificación, #strong[Conventional Commits] para los mensajes de commit y #strong[Semantic Versioning] para nombrar las releases.

#metadata((src: "README.md", line: 7593))
Cada producto de la solución cuenta con su propio repositorio, como se detalla en la #link("#tabla-60")[Tabla 60].

#metadata((src: "README.md", line: 7597))
#strong[Tabla 60]

#metadata((src: "README.md", line: 7599))
#emph[Repositorios de GitHub por producto]

#metadata((src: "README.md", line: 7601, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Producto], [Repositorio de GitHub]),
  tline,
  [Landing Page], [#link("https://github.com/RuwaLabs/saludya-landing")[https:\/\/github.com\/RuwaLabs\/saludya-landing]],
  [Web Services], [#link("https://github.com/RuwaLabs/backend-saludya")[https:\/\/github.com\/RuwaLabs\/backend-saludya]],
  [Mobile Applications], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[https:\/\/github.com\/RuwaLabs\/frontend-kotlin-saludya]],
  [Project Report], [#link("https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report")[https:\/\/github.com\/RuwaLabs\/upc-pre-202620-1acc0238-4945-RuwaLabs-report]],
  tline,
)

#metadata((src: "README.md", line: 7608))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7610))
Para el control de versiones se adopta #strong[GitFlow]. Sobre la rama principal #raw("main") se crea la rama de integración #raw("develop"); cada funcionalidad o bounded context se desarrolla en su propia rama (#emph[feature branch]), que se integra a #raw("develop") mediante #emph[pull requests]. Al cierre de un sprint, #raw("develop") se integra a #raw("main") mediante una rama de release, y las correcciones urgentes sobre producción se realizan mediante ramas de hotfix. Las convenciones de ramas se detallan en la #link("#tabla-61")[Tabla 61].

#metadata((src: "README.md", line: 7614))
#strong[Tabla 61]

#metadata((src: "README.md", line: 7616))
#emph[Convenciones de ramas (GitFlow)]

#metadata((src: "README.md", line: 7618, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Rama], [Propósito], [Convención \/ ramas utilizadas en el proyecto]),
  tline,
  [#raw("main")], [Versión estable en producción], [#raw("main")],
  [#raw("develop")], [Rama de integración del equipo], [#raw("develop")],
  [Feature], [Desarrollo de una funcionalidad o bounded context], [Nombre del aspecto en kebab-case: #raw("iam"), #raw("booking"), #raw("reassignment"), #raw("arrival"), #raw("hospitalconfig") (Web Services); #raw("iam"), #raw("patient-reservations"), #raw("patient-check-in"), #raw("patient-configuration"), #raw("patient-dashboard"), #raw("notifications-reassignment") (Mobile Applications)],
  [Release], [Preparación de una versión estable], [#raw("release/<MAJOR.MINOR.PATCH>")],
  [Hotfix], [Corrección urgente sobre producción], [#raw("hotfix/<aspecto>")],
  tline,
)

#metadata((src: "README.md", line: 7626))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7628))
Las releases se nombran aplicando #strong[Semantic Versioning] (#raw("MAJOR.MINOR.PATCH")), por ejemplo #raw("v1.0.0").

#metadata((src: "README.md", line: 7630))
Finalmente, los mensajes de commit siguen #strong[Conventional Commits], como se detalla en la #link("#tabla-62")[Tabla 62].

#metadata((src: "README.md", line: 7634))
#strong[Tabla 62]

#metadata((src: "README.md", line: 7636))
#emph[Convenciones de commits (Conventional Commits)]

#metadata((src: "README.md", line: 7638, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Tipo], [Uso]),
  tline,
  [#raw("feat")], [Nueva funcionalidad],
  [#raw("fix")], [Corrección de error],
  [#raw("docs")], [Cambios en documentación],
  [#raw("style")], [Formato sin cambios de lógica],
  [#raw("refactor")], [Reestructuración sin cambiar comportamiento],
  [#raw("test")], [Añadir o modificar pruebas],
  [#raw("chore")], [Tareas de mantenimiento],
  tline,
)

#metadata((src: "README.md", line: 7648))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 3)[4.1.3. Source Code Style Guide & Conventions] <sec:4-1-3-source-code-style-guide-conventions>
#metadata((src: "README.md", line: 7650, kind: "heading", level: 3))

#metadata((src: "README.md", line: 7652))
En esta sección se establecen las convenciones de estilo y nomenclatura que el equipo #strong[RuwaLabs] adopta para el desarrollo de la solución #strong[SaludYa], compuesta por el Landing Page, las aplicaciones móviles (pacientes y personal de salud) y los servicios web. El objetivo es garantizar la legibilidad, mantenibilidad y consistencia del código a lo largo del ciclo de vida del proyecto, así como facilitar la colaboración entre los miembros del equipo.

#metadata((src: "README.md", line: 7654))
Todas las convenciones se aplican en #strong[inglés] para nombres de archivos, variables, funciones, clases y comentarios, siguiendo las buenas prácticas de la industria y las guías oficiales de cada tecnología.

#heading(level: 4)[Landing Page] <sec:landing-page-6>
#metadata((src: "README.md", line: 7656, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7658))
El Landing Page se desarrolla con #strong[HTML5, CSS3 y JavaScript (ES6+)], aplicando las siguientes convenciones:

#metadata((src: "README.md", line: 7663))
#strong[Tabla 63]

#metadata((src: "README.md", line: 7665))
#emph[Source Code Style Guide & Conventions — Landing Page]

#metadata((src: "README.md", line: 7667, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Elemento], [Convención], [Ejemplo]),
  tline,
  [Archivos HTML], [kebab-case], [#raw("index.html")],
  [Archivos CSS], [kebab-case], [#raw("styles.css"), #raw("responsive.css")],
  [Archivos JS], [kebab-case], [#raw("i18n.js"), #raw("main.js")],
  [Carpetas], [kebab-case], [#raw("assets/css/"), #raw("assets/img/"), #raw("assets/locales/")],
  [Variables CSS], [kebab-case con prefijo #raw("--")], [#raw("--color-primary"), #raw("--space-4")],
  [Clases CSS], [BEM simplificado (bloque\_\_elemento-​-modificador)], [#raw(".hero__title"), #raw(".card--active")],
  [IDs HTML], [kebab-case], [#raw("#primary-nav"), #raw("#hero-title")],
  [Variables JS], [camelCase], [#raw("currentLang"), #raw("headerHeight")],
  [Constantes JS], [UPPER\_SNAKE\_CASE], [#raw("DEFAULT_LANG"), #raw("STORAGE_KEY")],
  [Funciones JS], [camelCase], [#raw("detectInitialLang()"), #raw("applyTranslations()")],
  [Atributos #raw("data-*")], [kebab-case], [#raw("data-i18n"), #raw("data-i18n-attr"), #raw("data-lang")],
  tline,
)

#metadata((src: "README.md", line: 7682))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7685))
Se adoptan las guías #strong[Google HTML\/CSS Style Guide] y #strong[HTML Style Guide and Coding Conventions] (W3Schools), con las siguientes reglas adicionales, como se detalla en la #link("#tabla-63")[Tabla 63]:

#metadata((src: "README.md", line: 7687))
- Indentación de 2 espacios.
- Uso de comillas dobles en HTML y comillas simples en JavaScript.
- Punto y coma obligatorio al final de cada sentencia en JavaScript.
- Declaración de variables con #raw("const") por defecto y #raw("let") cuando sea necesario; se evita #raw("var").
- Uso de #raw("\"use strict\"") en cada archivo JavaScript.
- Comentarios en inglés con formato #raw("/* ... */") para bloques y #raw("// ...") para líneas.
- Separación de responsabilidades: estructura (HTML), presentación (CSS) y comportamiento (JS).
- Uso de #raw("aria-*") y roles semánticos para accesibilidad.

#heading(level: 4)[Aplicaciones móviles] <sec:aplicaciones-moviles>
#metadata((src: "README.md", line: 7696, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7698))
Las aplicaciones móviles se desarrollan con #strong[Kotlin] (Android nativo) y #strong[Kotlin Multiplatform (KMP)] para la lógica compartida con iOS, siguiendo las convenciones oficiales del lenguaje:

#metadata((src: "README.md", line: 7703))
#strong[Tabla 64]

#metadata((src: "README.md", line: 7705))
#emph[Source Code Style Guide & Conventions — Aplicaciones móviles]

#metadata((src: "README.md", line: 7707, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Elemento], [Convención], [Ejemplo]),
  tline,
  [Clases], [PascalCase], [#raw("AppointmentRepository"), #raw("PatientViewModel")],
  [Interfaces], [PascalCase con prefijo descriptivo], [#raw("AppointmentRepository")],
  [Funciones], [camelCase], [#raw("getAvailableSlots()")],
  [Variables], [camelCase], [#raw("availableSlots"), #raw("patientId")],
  [Constantes], [UPPER\_SNAKE\_CASE], [#raw("MAX_WAITING_LIST_SIZE")],
  [Paquetes], [minúsculas separadas por punto], [#raw("pe.edu.upc.saludya.appointments")],
  [Archivos Kotlin], [PascalCase], [#raw("AppointmentViewModel.kt")],
  [Recursos XML], [snake\_case], [#raw("activity_main.xml"), #raw("ic_check_in.xml")],
  [Strings], [snake\_case], [#raw("app_name"), #raw("btn_reserve")],
  tline,
)

#metadata((src: "README.md", line: 7720))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7723))
Se adoptan las guías #strong[Android Kotlin Style Guide] y #strong[Kotlin Coding Conventions], con las siguientes reglas adicionales, como se detalla en la #link("#tabla-64")[Tabla 64]:

#metadata((src: "README.md", line: 7725))
- Indentación de 4 espacios.
- Longitud máxima de línea: 100 caracteres.
- Uso de #raw("val") por defecto y #raw("var") solo cuando sea necesario.
- Uso de #raw("data class") para modelos de dominio.
- Uso de #raw("sealed class") para estados de UI.
- Uso de corrutinas para operaciones asíncronas.
- Nomenclatura en inglés para todos los identificadores.
- Comentarios KDoc para clases y funciones públicas.

#heading(level: 4)[Servicios web] <sec:servicios-web>
#metadata((src: "README.md", line: 7734, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7736))
Los servicios web se desarrollan con #strong[Spring Boot] (Java) y #strong[OpenAPI Specification] para la documentación, siguiendo las convenciones oficiales:

#metadata((src: "README.md", line: 7741))
#strong[Tabla 65]

#metadata((src: "README.md", line: 7743))
#emph[Source Code Style Guide & Conventions — Servicios web]

#metadata((src: "README.md", line: 7745, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Elemento], [Convención], [Ejemplo]),
  tline,
  [Clases], [PascalCase], [#raw("AppointmentController"), #raw("PatientService")],
  [Métodos], [camelCase], [#raw("createAppointment()"), #raw("findPatientById()")],
  [Variables], [camelCase], [#raw("appointmentId"), #raw("patientName")],
  [Constantes], [UPPER\_SNAKE\_CASE], [#raw("MAX_APPOINTMENTS_PER_DAY")],
  [Paquetes], [minúsculas separadas por punto], [#raw("pe.edu.upc.saludya.appointments")],
  [Endpoints REST], [kebab-case en plural], [#raw("/api/v1/appointments"), #raw("/api/v1/patients")],
  [Archivos #raw(".feature") (Gherkin)], [kebab-case], [#raw("reserve-appointment.feature")],
  [Tablas de base de datos], [snake\_case en plural], [#raw("appointments"), #raw("patients")],
  [Columnas de base de datos], [snake\_case], [#raw("created_at"), #raw("patient_id")],
  tline,
)

#metadata((src: "README.md", line: 7758))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7761))
Se adoptan las guías #strong[Google Java Style Guide], #strong[Spring Boot Features] y #strong[Gherkin Conventions for Readable Specifications] (para los archivos #raw(".feature")), con las siguientes reglas adicionales, como se detalla en la #link("#tabla-65")[Tabla 65]:

#metadata((src: "README.md", line: 7763))
- Indentación de 4 espacios.
- Uso de anotaciones de Spring (#raw("@RestController"), #raw("@Service"), #raw("@Repository")).
- Uso de DTOs para la transferencia de datos entre capas.
- Uso de #raw("Optional") para valores que pueden ser nulos.
- Documentación de endpoints con #strong[OpenAPI] y #strong[Swagger UI].
- Criterios de aceptación en #strong[Gherkin] con estructura Given-When-Then.

#heading(level: 3)[4.1.4. Software Deployment Configuration] <sec:4-1-4-software-deployment-configuration>
#metadata((src: "README.md", line: 7770, kind: "heading", level: 3))

#metadata((src: "README.md", line: 7772))
En esta sección se describe la configuración de despliegue de la solución #strong[SaludYa], incluyendo los pasos necesarios para publicar cada uno de los productos digitales que la componen: el Landing Page, las aplicaciones móviles (pacientes y personal de salud) y los servicios web. Asimismo, se presenta el #strong[Deployment Diagram] del modelo C4, que ilustra la distribución física de los componentes de software sobre la infraestructura de hardware y servicios en la nube.

#heading(level: 4)[Landing Page] <sec:landing-page-7>
#metadata((src: "README.md", line: 7774, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7776))
El Landing Page se despliega como un sitio estático alojado en #strong[GitHub Pages], aprovechando la integración directa con el repositorio de GitHub del equipo.

#metadata((src: "README.md", line: 7781))
#strong[Tabla 66]

#metadata((src: "README.md", line: 7783))
#emph[Software Deployment Configuration — Landing Page]

#metadata((src: "README.md", line: 7785, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Paso], [Acción]),
  tline,
  [1], [Asegurar que el archivo #raw("index.html") se encuentre en la raíz del repositorio #raw("saludya-landing")],
  [2], [Acceder a #strong[Settings → Pages] en el repositorio de GitHub],
  [3], [Seleccionar la rama #raw("main") y la carpeta #raw("/ (root)") como fuente],
  [4], [Guardar la configuración y esperar la publicación],
  [5], [Verificar el despliegue en la URL generada: #raw("https://ruwalabs.github.io/saludya-landing/")],
  [6], [(Opcional) Configurar un dominio personalizado #raw("saludya.pe") mediante registros CNAME],
  tline,
)

#metadata((src: "README.md", line: 7795))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7798))
#strong[Tecnologías involucradas:] HTML5, CSS3, JavaScript (ES6+), Font Awesome 6.5.2, como se detalla en la #link("#tabla-66")[Tabla 66].

#heading(level: 4)[Aplicaciones móviles] <sec:aplicaciones-moviles-2>
#metadata((src: "README.md", line: 7800, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7802))
Las aplicaciones móviles se distribuyen mediante #strong[Firebase App Distribution] para las pruebas con usuarios de validación, y se publican en #strong[Google Play Store] y #strong[App Store] para la versión final.

#metadata((src: "README.md", line: 7807))
#strong[Tabla 67]

#metadata((src: "README.md", line: 7809))
#emph[Software Deployment Configuration — Aplicaciones móviles]

#metadata((src: "README.md", line: 7811, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Paso], [Acción]),
  tline,
  [1], [Generar el APK\/AAB firmado desde Android Studio (Android) o el archivo IPA desde Xcode (iOS)],
  [2], [Crear un proyecto en #strong[Firebase Console] y habilitar #strong[App Distribution]],
  [3], [Subir el APK\/AAB o IPA a Firebase App Distribution],
  [4], [Invitar a los testers mediante correo electrónico o enlace público],
  [5], [Recopilar feedback de los usuarios de validación],
  [6], [Publicar la versión final en #strong[Google Play Console] y #strong[App Store Connect]],
  tline,
)

#metadata((src: "README.md", line: 7821))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7824))
#strong[Tecnologías involucradas:] Kotlin, Kotlin Multiplatform (KMP), Android Studio, Xcode, Firebase App Distribution, como se detalla en la #link("#tabla-67")[Tabla 67].

#heading(level: 4)[Servicios web] <sec:servicios-web-2>
#metadata((src: "README.md", line: 7826, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7828))
Los servicios web se despliegan en #strong[AWS EC2], con base de datos #strong[PostgreSQL] desplegada en la misma infraestructura.

#metadata((src: "README.md", line: 7833))
#strong[Tabla 68]

#metadata((src: "README.md", line: 7835))
#emph[Software Deployment Configuration — Servicios web]

#metadata((src: "README.md", line: 7837, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Paso], [Acción]),
  tline,
  [1], [Crear una cuenta en #strong[AWS] y aprovisionar una instancia #strong[EC2]],
  [2], [Conectar el repositorio de GitHub del backend (#raw("saludya-web-services"))],
  [3], [Configurar las variables de entorno (credenciales de base de datos, claves JWT, etc.)],
  [4], [Instalar y configurar la base de datos PostgreSQL en la instancia EC2],
  [5], [Configurar el comando de build y el comando de inicio (#raw("./mvnw spring-boot:run") o #raw("java -jar app.jar"))],
  [6], [Desplegar y verificar la URL pública del servicio],
  [7], [Acceder a la documentación OpenAPI en #raw("/swagger-ui.html")],
  tline,
)

#metadata((src: "README.md", line: 7848))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7851))
#strong[Tecnologías involucradas:] Spring Boot, Java, PostgreSQL, OpenAPI, Swagger UI, AWS EC2, como se detalla en la #link("#tabla-68")[Tabla 68].

#heading(level: 4)[Deployment Diagram (C4 Model)] <sec:deployment-diagram-c4-model>
#metadata((src: "README.md", line: 7853, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7855))
El #strong[Deployment Diagram] ilustra la distribución física de los componentes de SaludYa sobre la infraestructura de hardware y servicios en la nube, como se detalla en la #link("#tabla-69")[Tabla 69]:

#metadata((src: "README.md", line: 7860))
#strong[Tabla 69]

#metadata((src: "README.md", line: 7862))
#emph[Deployment Diagram (C4 Model)]

#metadata((src: "README.md", line: 7864, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Nodo], [Tipo], [Componentes desplegados]),
  tline,
  [Dispositivo del paciente], [Hardware (móvil)], [App pacientes (Kotlin\/KMP)],
  [Dispositivo del personal de salud], [Hardware (móvil)], [App personal de salud (Kotlin\/KMP)],
  [Navegador del visitante], [Hardware (PC\/móvil)], [Landing Page (HTML\/CSS\/JS)],
  [GitHub Pages], [Cloud (static hosting)], [Landing Page],
  [Firebase App Distribution], [Cloud (distribución)], [APK\/AAB\/IPA de las apps],
  [AWS EC2], [Cloud (IaaS)], [Servicios web (Spring Boot)],
  [PostgreSQL (AWS EC2)], [Cloud (IaaS)], [Base de datos relacional],
  [Firebase Cloud Messaging], [Cloud (push)], [Notificaciones push a las apps],
  tline,
)

#metadata((src: "README.md", line: 7876))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7879))
#strong[Relaciones entre nodos:]

#metadata((src: "README.md", line: 7881))
- El navegador del visitante accede al Landing Page alojado en GitHub Pages vía HTTPS.
- Los dispositivos móviles descargan las apps desde Firebase App Distribution (pruebas) o las tiendas oficiales (producción).
- Las apps se comunican con los servicios web desplegados en AWS EC2 mediante HTTPS\/REST.
- Los servicios web acceden a PostgreSQL para la persistencia de datos.
- Los servicios web envían notificaciones push a las apps a través de Firebase Cloud Messaging.

#metadata((src: "README.md", line: 7887))
#pagebreak()

#heading(level: 2)[4.2. Landing Page & Mobile Application Implementation] <sec:4-2-landing-page-mobile-application-implementation>
#metadata((src: "README.md", line: 7890, kind: "heading", level: 2))

#heading(level: 3)[4.2.1. Sprint 1] <sec:4-2-1-sprint-1>
#metadata((src: "README.md", line: 7892, kind: "heading", level: 3))

#heading(level: 4)[4.2.1.1. Sprint Planning 1] <sec:4-2-1-1-sprint-planning-1>
#metadata((src: "README.md", line: 7894, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7896))
A continuación se presentan los aspectos principales de la reunión de planificación del Sprint 1 de #strong[SaludYa]. En esta reunión el equipo #strong[RuwaLabs] definió el Sprint Goal, el alcance de user stories enfocado en el paciente y la capacidad de trabajo del primer sprint, como se detalla en la #link("#tabla-70")[Tabla 70].

#metadata((src: "README.md", line: 7900))
#strong[Tabla 70]

#metadata((src: "README.md", line: 7902))
#emph[Sprint Planning 1 — resumen de la reunión]

#metadata((src: "README.md", line: 7904, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Valor]),
  tline,
  [Sprint \#], [Sprint 1],
  [#strong[Sprint Planning Background]], [],
  [Date], [2026-09-26],
  [Time], [7:00 PM],
  [Location], [Reunión virtual mediante Jitsi Meet],
  [Prepared By], [Montoya Nina, Paula Fernanda],
  [Attendees (to planning meeting)], [Aguilar Untiveros, Rodrigo Fabrizio \/ Meza Solórzano, Didier Sebastian \/ Montoya Nina, Paula Fernanda \/ Ramos Mera, Neo Daniel \/ Torres Juárez, Alisee Muriel],
  [Sprint 1 – 1 Review Summary], [No aplica (primer sprint del proyecto).],
  [Sprint 1 – 1 Retrospective Summary], [No aplica (primer sprint del proyecto).],
  [#strong[Sprint Goal & User Stories]], [],
  [Sprint 1 Goal], [Habilitar el registro y la reserva de citas médicas del paciente en la aplicación móvil y publicar el Landing Page con la propuesta de valor de SaludYa.],
  [Sprint 1 Velocity], [99 story points],
  [Sum of Story Points], [99],
  tline,
)

#metadata((src: "README.md", line: 7920))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 7922))
El #strong[Sprint Goal] se redactó siguiendo el enfoque propuesto por Scrum.org, priorizando el resultado (Outcome), el impacto (Impact) y la validación (Event):

#metadata((src: "README.md", line: 7924))
#quote(block: true)[
  #metadata((src: "README.md", line: 7924))
  #strong[Sprint 1 Goal:] #emph[Nuestro #strong[focus] está en habilitar el registro y la reserva de citas médicas del paciente desde la aplicación móvil y en presentar la propuesta de valor de SaludYa en el Landing Page.]
  
  #metadata((src: "README.md", line: 7926))
  #emph[Creemos que esto #strong[delivers] un acceso rápido, sin colas e informado a los pacientes de establecimientos públicos de salud.]
  
  #metadata((src: "README.md", line: 7928))
  #emph[Esto se confirmará (#strong[confirmed]) cuando un paciente pueda verificar su identidad, registrar su cuenta, iniciar sesión, reservar, consultar y cancelar una cita desde la aplicación, y cuando un visitante pueda comprender la propuesta de valor y acceder a la descarga desde el Landing Page publicado.]
]

#metadata((src: "README.md", line: 7930))
La #strong[velocity] del Sprint 1 se estableció en #strong[99 story points], equivalente a la suma de la estimación de las 30 user stories comprometidas (US-00 a US-29) del Product Backlog (#link("#tabla-22")[Tabla 22]). Al tratarse del primer sprint del proyecto, el equipo no cuenta con una velocity histórica, por lo que se toma como referencia el total comprometido; este valor se ajustará en los siguientes sprints en función de la velocidad real observada.

#metadata((src: "README.md", line: 7932))
El alcance del Sprint 1 se compone de las user stories orientadas al paciente y al Landing Page, agrupadas por épica, como se detalla en la #link("#tabla-71")[Tabla 71].

#metadata((src: "README.md", line: 7936))
#strong[Tabla 71]

#metadata((src: "README.md", line: 7938))
#emph[Alcance del Sprint 1 por épica]

#metadata((src: "README.md", line: 7940, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Épica], [User Stories], [Story Points]),
  tline,
  [EP0: Plataforma de Presentación y Captación], [US-00], [2],
  [EP1: Authentication & Identity Management], [US-01, US-02, US-03, US-04, US-15, US-17, US-18, US-19, US-23, US-24, US-25, US-26, US-27, US-28, US-29], [49],
  [EP2: Appointments & Booking Engine], [US-05, US-06, US-07, US-08, US-09, US-10, US-16], [34],
  [EP3: Reassignment Protocol], [US-20, US-21], [8],
  [EP4: Arrival & QR Check-in System], [US-11, US-12, US-13, US-14, US-22], [14],
  [#strong[Total]], [#strong[30 user stories]], [#strong[99]],
  tline,
)

#metadata((src: "README.md", line: 7949))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#heading(level: 4)[4.2.1.2. Aspect Leaders and Collaborators] <sec:4-2-1-2-aspect-leaders-and-collaborators>
#metadata((src: "README.md", line: 7951, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7953))
En el Sprint 1 el equipo organizó el trabajo en función de los productos y bounded contexts incluidos en el alcance: el #strong[Landing Page] y la aplicación móvil del paciente, compuesta por #strong[Identity & Access Management (IAM)], #strong[Appointments & Booking], #strong[Dynamic Waitlist & Reassignment], #strong[Arrival & QR Check-in] y #strong[Hospital Operations & Configuration], junto con los servicios web que los soportan. La siguiente matriz LACX (Leadership-and-Collaboration Matrix) indica, para cada aspecto, quién asume el rol de #strong[líder (L)] y quién de #strong[colaborador (C)], como se detalla en la #link("#tabla-72")[Tabla 72]. Esta organización guarda relación con la posterior asignación de tasks en el Sprint Backlog.

#metadata((src: "README.md", line: 7957))
#strong[Tabla 72]

#metadata((src: "README.md", line: 7959))
#emph[Leadership-and-Collaboration Matrix (LACX) — Sprint 1]

#metadata((src: "README.md", line: 7961, kind: "table"))
#table(
  columns: 8,
  align: (left, left, center, center, center, center, center, center),
  table.header([Team Member (Last Name, First Name)], [GitHub Username], table.cell(align: center)[Landing Page], table.cell(align: center)[IAM], table.cell(align: center)[Appointments & Booking], table.cell(align: center)[Dynamic Waitlist & Reassignment], table.cell(align: center)[Arrival & QR Check-in], table.cell(align: center)[Hospital Operations & Configuration]),
  tline,
  [Aguilar Untiveros, Rodrigo Fabrizio], [Rodri2712], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L],
  [Meza Solórzano, Didier Sebastian], [DidierSebas], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C],
  [Montoya Nina, Paula Fernanda], [SeviNyO], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C],
  [Ramos Mera, Neo Daniel], [norahccccc], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C],
  [Torres Juárez, Alisee Muriel], [lLisee1], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C],
  tline,
)

#metadata((src: "README.md", line: 7969))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa. L = Leader, C = Collaborator.]

#heading(level: 4)[4.2.1.3. Sprint Backlog 1] <sec:4-2-1-3-sprint-backlog-1>
#metadata((src: "README.md", line: 7971, kind: "heading", level: 4))

#metadata((src: "README.md", line: 7973))
El Sprint 1 tiene como objetivo habilitar el registro, la reserva y el seguimiento de las citas del paciente en la aplicación móvil, así como publicar el Landing Page con la propuesta de valor de SaludYa. Para su gestión, el equipo utilizó #strong[Jira] como herramienta de control; el tablero del backlog del proyecto se puede revisar en el siguiente enlace y en la #link("#figura-153")[Figura 153].

#metadata((src: "README.md", line: 7975))
- Link Jira: #link("https://ruwalabs-salud-ya.atlassian.net/")[https:\/\/ruwalabs-salud-ya.atlassian.net\/]

#metadata((src: "README.md", line: 7979))
#strong[Figura 153]

#metadata((src: "README.md", line: 7981))
#emph[Backlog del proyecto SaludYa en Jira]

#metadata((src: "README.md", line: 7983, kind: "figure", img: "assets/execution/sprint-1/jira-backlog.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/jira-backlog.png", alt: "Backlog del proyecto SaludYa en Jira", width: 100%)]

#metadata((src: "README.md", line: 7985))
#emph[Nota. Captura del tablero Backlog del proyecto SaludYa en Jira.]

#metadata((src: "README.md", line: 7987))
A partir de las user stories comprometidas, el equipo descompuso el trabajo en las siguientes tasks (work-items), con su estimación en horas, responsable y estado, como se detalla en la #link("#tabla-73")[Tabla 73].

#metadata((src: "README.md", line: 7991))
#strong[Tabla 73]

#metadata((src: "README.md", line: 7993))
#emph[Sprint Backlog 1]

#metadata((src: "README.md", line: 7995, kind: "table"))
#table(
  columns: 6,
  align: (left, left, left, left, left, left),
  table.header([\#], [User Story], [Work-Item \/ Task], [Estimation (Hours)], [Assigned To], [Status]),
  tline,
  [1], [US-00 · Visualización de Propuesta de Valor en Landing Page], [T-01 · Diseño del Landing Page (Figma)], [6], [Rodrigo], [Done],
  [2], [US-00 · Visualización de Propuesta de Valor en Landing Page], [T-02 · Desarrollo frontend del Landing Page], [12], [Rodrigo], [Done],
  [3], [US-00 · Visualización de Propuesta de Valor en Landing Page], [T-03 · Despliegue del Landing Page (GitHub Pages)], [4], [Rodrigo], [Done],
  [4], [US-01 · Verificación de Identidad por DNI], [T-04 · Backend: validación de identidad por DNI], [8], [Didier], [Done],
  [5], [US-01 · Verificación de Identidad por DNI], [T-05 · Frontend: pantalla de verificación de identidad], [6], [Didier], [Done],
  [6], [US-02 · Registro de Credenciales de Acceso], [T-06 · Backend: registro de credenciales y verificación por correo], [8], [Didier], [Done],
  [7], [US-02 · Registro de Credenciales de Acceso], [T-07 · Frontend: formulario de credenciales de acceso], [6], [Didier], [Done],
  [8], [US-03 · Verificación de Celular y Creación de Cuenta], [T-08 · Backend: verificación de contacto y creación de cuenta], [6], [Didier], [Done],
  [9], [US-03 · Verificación de Celular y Creación de Cuenta], [T-09 · Frontend: pantalla de verificación por correo], [6], [Didier], [Done],
  [10], [US-04 · Inicio de Sesión del Paciente], [T-10 · Backend: autenticación y emisión de sesión], [6], [Didier], [Done],
  [11], [US-04 · Inicio de Sesión del Paciente], [T-11 · Frontend: pantalla de inicio de sesión], [5], [Didier], [Done],
  [12], [US-05 · Selección de Especialidad Médica], [T-12 · Frontend: pantalla de selección de especialidad], [5], [Paula], [Done],
  [13], [US-06 · Consulta de Horarios Disponibles], [T-13 · Backend: consulta de horarios disponibles], [8], [Paula], [Done],
  [14], [US-06 · Consulta de Horarios Disponibles], [T-14 · Frontend: pantalla de calendario y horarios], [6], [Paula], [Done],
  [15], [US-07 · Reserva de Cita para el Paciente], [T-15 · Backend: registro de reserva de cita], [10], [Paula], [Done],
  [16], [US-07 · Reserva de Cita para el Paciente], [T-16 · Frontend: flujo de reserva (fecha, hora y confirmación)], [10], [Paula], [Done],
  [17], [US-08 · Recepción de Confirmación de Cita por Correo], [T-17 · Backend: envío de confirmación de cita por correo], [6], [Paula], [Done],
  [18], [US-09 · Consulta de Citas Agendadas], [T-18 · Backend: consulta de citas agendadas], [6], [Paula], [Done],
  [19], [US-09 · Consulta de Citas Agendadas], [T-19 · Frontend: pantalla de citas pendientes], [6], [Neo], [Done],
  [20], [US-10 · Cancelación de Cita], [T-20 · Backend: cancelación de cita], [6], [Paula], [Done],
  [21], [US-10 · Cancelación de Cita], [T-21 · Frontend: acción de cancelación de cita], [5], [Paula], [Done],
  [22], [US-11 · Consulta del Código QR de la Reserva], [T-22 · Backend: generación del código QR de la reserva], [6], [Alise], [Done],
  [23], [US-11 · Consulta del Código QR de la Reserva], [T-23 · Frontend: pantalla del código QR de la reserva], [5], [Alise], [Done],
  [24], [US-12 · Consulta del Ticket Digital de Atención], [T-24 · Backend: consulta del ticket digital de atención], [6], [Alise], [Done],
  [25], [US-12 · Consulta del Ticket Digital de Atención], [T-25 · Frontend: pantalla del ticket de atención], [5], [Alise], [Done],
  [26], [US-13 · Consulta de Posición en la Cola de Atención], [T-26 · Backend: consulta de posición en la cola de atención], [6], [Alise], [Done],
  [27], [US-13 · Consulta de Posición en la Cola de Atención], [T-27 · Frontend: pantalla de posición en la cola], [5], [Alise], [Done],
  [28], [US-14 · Recepción de Notificación de Llamado a Consultorio], [T-28 · Backend: notificación de llamado a consultorio], [6], [Alise], [Done],
  [29], [US-14 · Recepción de Notificación de Llamado a Consultorio], [T-29 · Frontend: aviso de llamado en la aplicación], [5], [Neo], [Done],
  [30], [US-15 · Vinculación de un Menor de Edad], [T-30 · Backend: vinculación de un menor de edad], [8], [Didier], [Done],
  [31], [US-15 · Vinculación de un Menor de Edad], [T-31 · Frontend: pantalla de registro de menor], [6], [Rodrigo], [Done],
  [32], [US-16 · Reserva de Cita para un Menor Vinculado], [T-32 · Backend: reserva de cita para un menor vinculado], [8], [Paula], [Done],
  [33], [US-16 · Reserva de Cita para un Menor Vinculado], [T-33 · Frontend: selección de menor en el flujo de reserva], [6], [Paula], [Done],
  [34], [US-17 · Consulta de Menores Vinculados], [T-34 · Frontend: pantalla de menores vinculados], [5], [Rodrigo], [Done],
  [35], [US-18 · Consulta del Perfil de un Menor], [T-35 · Frontend: pantalla del perfil de un menor], [5], [Rodrigo], [Done],
  [36], [US-19 · Desvinculación de un Menor de Edad], [T-36 · Backend: desvinculación de un menor de edad], [5], [Didier], [Done],
  [37], [US-19 · Desvinculación de un Menor de Edad], [T-37 · Frontend: acción de desvinculación de menor], [5], [Rodrigo], [Done],
  [38], [US-20 · Aceptación de Adelanto de Cita], [T-38 · Backend: reasignación de cupos y oferta de adelanto], [10], [Neo], [Done],
  [39], [US-20 · Aceptación de Adelanto de Cita], [T-39 · Frontend: pantalla de aceptación de reasignación], [6], [Neo], [Done],
  [40], [US-21 · Rechazo de Adelanto de Cita], [T-40 · Frontend: acción de rechazo de reasignación], [5], [Neo], [Done],
  [41], [US-22 · Salida Voluntaria de la Cola de Atención], [T-41 · Backend: salida voluntaria de la cola de atención], [5], [Alise], [Done],
  [42], [US-22 · Salida Voluntaria de la Cola de Atención], [T-42 · Frontend: acción de dejar la cola], [5], [Alise], [Done],
  [43], [US-23 · Solicitud de Enlace de Recuperación de Contraseña], [T-43 · Backend: generación del enlace de recuperación], [6], [Didier], [Done],
  [44], [US-23 · Solicitud de Enlace de Recuperación de Contraseña], [T-44 · Frontend: pantalla de solicitud de recuperación], [5], [Didier], [Done],
  [45], [US-24 · Restablecimiento de Contraseña], [T-45 · Backend: restablecimiento de contraseña], [6], [Didier], [Done],
  [46], [US-24 · Restablecimiento de Contraseña], [T-46 · Frontend: pantalla de nueva contraseña], [5], [Didier], [Done],
  [47], [US-25 · Solicitud de Ayuda por Pérdida de Acceso a la Cuenta], [T-47 · Backend: registro de solicitud de ayuda de acceso], [5], [Didier], [Done],
  [48], [US-25 · Solicitud de Ayuda por Pérdida de Acceso a la Cuenta], [T-48 · Frontend: pantalla de solicitud de ayuda], [5], [Didier], [Done],
  [49], [US-26 · Consulta del Perfil del Paciente], [T-49 · Backend: consulta del perfil del paciente], [5], [Didier], [Done],
  [50], [US-26 · Consulta del Perfil del Paciente], [T-50 · Frontend: pantalla del perfil del paciente], [5], [Rodrigo], [Done],
  [51], [US-27 · Edición de Datos de Contacto], [T-51 · Backend: actualización de datos de contacto], [6], [Didier], [Done],
  [52], [US-27 · Edición de Datos de Contacto], [T-52 · Frontend: pantalla de edición de datos de contacto], [5], [Rodrigo], [Done],
  [53], [US-28 · Cierre de Sesión del Paciente], [T-53 · Backend: cierre de sesión], [4], [Didier], [Done],
  [54], [US-28 · Cierre de Sesión del Paciente], [T-54 · Frontend: acción de cierre de sesión], [4], [Didier], [Done],
  [55], [US-29 · Aviso de Sesión Expirada], [T-55 · Frontend: aviso de sesión expirada], [4], [Didier], [Done],
  [56], [— (Task transversal)], [T-56 · Backend: despliegue de los servicios web], [8], [Neo], [Done],
  tline,
)

#metadata((src: "README.md", line: 8054))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa. El estado de las tasks corresponde al avance real del Sprint 1.]

#heading(level: 4)[4.2.1.4. Development Evidence for Sprint Review] <sec:4-2-1-4-development-evidence-for-sprint-review>
#metadata((src: "README.md", line: 8056, kind: "heading", level: 4))

#metadata((src: "README.md", line: 8058))
Durante el Sprint 1 se avanzó en la implementación del backend, la aplicación móvil para pacientes y la landing page de SaludYa. El trabajo se distribuyó en ramas por funcionalidad, con commits que registran la construcción de los módulos y sus ajustes de integración.

#metadata((src: "README.md", line: 8060))
En el backend, desarrollado con Java y Spring Boot, se implementaron las API de identidad y acceso, las reservas y la configuración operativa. La rama #raw("develop") incorpora la integración de IAM con el registro de llegada, los ajustes de reasignación según la tolerancia de check-in y la verificación por correo mediante SMTP. Este último cambio reemplaza el envío de códigos por SMS. También se registraron avances en la recuperación de cuenta y la configuración de despliegue en AWS EC2.

#metadata((src: "README.md", line: 8062))
En la aplicación Android, desarrollada con Kotlin y Jetpack Compose, se implementaron los recorridos de recuperación de acceso, la presentación y las capas de reservas, la consulta del QR de reserva, el ticket y la cola de atención. El módulo de configuración incorpora la validación y desvinculación de menores. Las ramas de dashboard y notificaciones registran avances en navegación y presentación; estos commits documentan ese alcance, sin implicar que todos sus recorridos estén integrados de extremo a extremo.

#metadata((src: "README.md", line: 8064))
La landing page reúne la presentación del producto y recibió ajustes en la imagen principal y los vídeos. Su repositorio también contiene el flujo de publicación con GitHub Pages. Los avances de implementación se respaldan con los commits seleccionados de los tres repositorios, como se detalla en la #link("#tabla-74")[Tabla 74].

#metadata((src: "README.md", line: 8068))
#strong[Tabla 74]

#metadata((src: "README.md", line: 8070))
#emph[Commits de implementación de SaludYa para la revisión del Sprint 1]

#metadata((src: "README.md", line: 8072, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Repository], [Branch], [Commit Id], [Commit Message], [Committed On]),
  tline,
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/d6101f67c169deea633099c9c4995b2396e156aa")[d6101f67c169deea633099c9c4995b2396e156aa]], [feat(iam): expose authorized REST APIs and context facade], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("booking")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/f5823addf79daa1c7bbd51820a0052df428a21ed")[f5823addf79daa1c7bbd51820a0052df428a21ed]], [feat: Booking DDD Complete], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("reassignment")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/d4daffc364ace3799c677c91c16b51b61f29e8e4")[d4daffc364ace3799c677c91c16b51b61f29e8e4]], [feat: ddd without acl impl], [26\/09\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("hospitalconfig")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/89934b6cd4f503e9b406cfc58ce2762f17f63d19")[89934b6cd4f503e9b406cfc58ce2762f17f63d19]], [feat(config): add configuration rest controller], [26\/09\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/4fb041aac3b5912de3a32eac353fedc3b9947efe")[4fb041aac3b5912de3a32eac353fedc3b9947efe]], [feat: integrate IAM and Arrival with cross-context ACLs; complete patient\/admin flows], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/89c4529678231739c7ec2f1e5199a7fc3c7d54ab")[89c4529678231739c7ec2f1e5199a7fc3c7d54ab]], [feat: reassignment arrival by slot check-in tolerance and fix chain candidate selection], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/8965e195d438b3c658b2ededa38bb76021b3e8ed")[8965e195d438b3c658b2ededa38bb76021b3e8ed]], [fix: auth smtp done, sms removed, flow reworked], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/50e5453fe97c7f48229455812255f9ffed194bd4")[50e5453fe97c7f48229455812255f9ffed194bd4]], [feat: recovery account audition], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/6a747f8b711abe3e697877f6ef362725e13de83f")[6a747f8b711abe3e697877f6ef362725e13de83f]], [chore: add Render deployment], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/ca1cb00eceb91035cf759530d02c4d30b6ad8398")[ca1cb00eceb91035cf759530d02c4d30b6ad8398]], [feat(iam): add recovery screens and session confirmation flows], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/9c5a3199d760155e0f2bbb52588253cf49c38ae6")[9c5a3199d760155e0f2bbb52588253cf49c38ae6]], [feat(iam): validate recovery links and reset patient passwords], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/71074b8f6a4328ec18753c76f97beb2c2b1ec7ca")[71074b8f6a4328ec18753c76f97beb2c2b1ec7ca]], [feat(iam): register assisted account recovery requests], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-reservations")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/a91f61d5996836674e200ea6d181233f87bbd1de")[a91f61d5996836674e200ea6d181233f87bbd1de]], [feat(patient-reser​vations): add domain, use cases and REST infrastructure], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-reservations")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/10161af7987f2c04f8879d5c9577e667575f4991")[10161af7987f2c04f8879d5c9577e667575f4991]], [feat(patient-reser​vations): alinear presentacion con patrones del proyecto], [09\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-check-in")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/a07e6693820126151bc35a96a0109aaecbbfb036")[a07e6693820126151bc35a96a0109aaecbbfb036]], [feat(CheckIn): add Reservation QR code Lookup, Digital Service Ticket Inquiry, Service Queue, Call to the Consulting Room], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-check-in")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/93f0b140cf2af30ef0257d7f58ba89620494a8e5")[93f0b140cf2af30ef0257d7f58ba89620494a8e5]], [fix(checkin): update us qr code, ticket, attention queue], [09\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/c52be13f80184c69761f8471499056cedd29997a")[c52be13f80184c69761f8471499056cedd29997a]], [feat(configuration): validate minor identity against admission records], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/8cd77e9d6a86af270b1cf71945069eb2819ca412")[8cd77e9d6a86af270b1cf71945069eb2819ca412]], [feat(configuration): add confirm dialog and unlink flow to linked minor], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-dashboard")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/b0a5ab82c4aae6a7ba8ce5a5e6730db90c72fd11")[b0a5ab82c4aae6a7ba8ce5a5e6730db90c72fd11]], [feat(designsystem): add BottomNavigationBar and bottom nav icons], [04\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("notifications-reassignment")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/e4edf27e77712c18bb9a2c521764654ac9a172a4")[e4edf27e77712c18bb9a2c521764654ac9a172a4]], [feat: ui composables done, presentation almost done. Dashboard needs other bounded contexts], [09\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/8b721c467ba0c0e0c854bf45210a16e465c93488")[8b721c467ba0c0e0c854bf45210a16e465c93488]], [feat(main): custom tab indicator covering icon and label], [09\/10\/2026],
  [#link("https://github.com/RuwaLabs/saludya-landing")[RuwaLabs\/saludya-landing]], [#raw("main")], [#link("https://github.com/RuwaLabs/saludya-landing/commit/28d248984503e0e8f18fa50ea1d00ea1bc05959b")[28d248984503e0e8f18fa50ea1d00ea1bc05959b]], [chore: initial commit - SaludYa landing page], [28\/09\/2026],
  [#link("https://github.com/RuwaLabs/saludya-landing")[RuwaLabs\/saludya-landing]], [#raw("main")], [#link("https://github.com/RuwaLabs/saludya-landing/commit/4c1a8378572855facb6d824d2755e21adceaa909")[4c1a8378572855facb6d824d2755e21adceaa909]], [feat(hero): update hero img with best practices], [28\/09\/2026],
  [#link("https://github.com/RuwaLabs/saludya-landing")[RuwaLabs\/saludya-landing]], [#raw("main")], [#link("https://github.com/RuwaLabs/saludya-landing/commit/e722cfdec71da9c8db4bee9d561988928ba72cce")[e722cfdec71da9c8db4bee9d561988928ba72cce]], [ci: add GitHub Pages deployment workflow], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/saludya-landing")[RuwaLabs\/saludya-landing]], [#raw("main")], [#link("https://github.com/RuwaLabs/saludya-landing/commit/d90b6f674b999ef94eba3b2b920cb9cf59622049")[d90b6f674b999ef94eba3b2b920cb9cf59622049]], [feat: default videos updated], [09\/10\/2026],
  tline,
)

#metadata((src: "README.md", line: 8100))
#emph[Nota. Elaboración del equipo RuwaLabs a partir del historial de Git de los repositorios de SaludYa, consultado el 9 de octubre de 2026. Los mensajes se conservan tal como fueron registrados y las fechas corresponden a la fecha de commit. La columna Branch identifica una rama que contiene el commit; no atribuye su creación original a esa rama. Se presentan commits representativos de implementación, sin incluir los commits de edición del reporte.]

#heading(level: 4)[4.2.1.5. Testing Suite Evidence for Sprint Review] <sec:4-2-1-5-testing-suite-evidence-for-sprint-review>
#metadata((src: "README.md", line: 8102, kind: "heading", level: 4))

#metadata((src: "README.md", line: 8104))
Las pruebas del Sprint 1 verifican las reglas de identidad y acceso, los servicios REST y la protección de los recursos del paciente. En el backend de SaludYa se utiliza JUnit Jupiter con AssertJ para comprobar los componentes de seguridad y validación. Las pruebas de integración emplean Spring Boot Test y MockMvc para ejecutar solicitudes a los endpoints, revisar sus respuestas y comprobar los cambios en la persistencia con el perfil #raw("test").

#metadata((src: "README.md", line: 8106))
La suite de IAM cubre el registro, la verificación por correo, el inicio de sesión, la recuperación de contraseña, el cierre y la expiración de sesión, y la vinculación de menores. Incluye casos de datos inválidos, correos duplicados, credenciales incorrectas, enlaces vencidos y acceso a información de otro paciente. La protección de recursos también se verifica para reservas, check-in y propuestas de reasignación.

#metadata((src: "README.md", line: 8108))
El archivo #raw("iam.feature") expresa escenarios de aceptación en Gherkin. Su cobertura automatizada se implementa en las clases JUnit de integración y seguridad; el archivo funciona como especificación de aceptación y no cuenta con un ejecutor Cucumber configurado en el proyecto. Algunos de sus escenarios contemplan roles internos, mientras que el alcance móvil de este entregable corresponde al paciente.

#metadata((src: "README.md", line: 8110))
En Android se utilizan JUnit, pruebas de corrutinas y MockWebServer para validar formularios, ViewModels y repositorios HTTP. Las pruebas instrumentadas con Compose UI Test comprueban las pantallas de identidad, registro, acceso, recuperación y sesión. Los commits que incorporan o modifican estas pruebas se presentan con su repositorio, rama, identificador, mensaje original y fecha, como se detalla en la #link("#tabla-75")[Tabla 75].

#metadata((src: "README.md", line: 8112))
Repositorio de pruebas del backend y especificación BDD: #link("https://github.com/RuwaLabs/backend-saludya/tree/develop/saludya/src/test")[RuwaLabs\/backend-saludya].

#metadata((src: "README.md", line: 8114))
Repositorio de pruebas Android: #link("https://github.com/RuwaLabs/frontend-kotlin-saludya/tree/iam/app/src")[RuwaLabs\/frontend-kotlin-saludya].

#metadata((src: "README.md", line: 8118))
#strong[Tabla 75]

#metadata((src: "README.md", line: 8120))
#emph[Commits relacionados con la suite de pruebas del Sprint 1]

#metadata((src: "README.md", line: 8122, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Repository], [Branch], [Commit Id], [Commit Message], [Committed On]),
  tline,
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/38265f3ed2efd7b08c5dd8e28bfcd47b458a85e2")[38265f3ed2efd7b08c5dd8e28bfcd47b458a85e2]], [test(iam): cover report scenarios on H2 and PostgreSQL], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/4fb041aac3b5912de3a32eac353fedc3b9947efe")[4fb041aac3b5912de3a32eac353fedc3b9947efe]], [feat: integrate IAM and Arrival with cross-context ACLs; complete patient\/admin flows], [03\/10\/2026],
  [#link("https://github.com/RuwaLabs/backend-saludya")[RuwaLabs\/backend-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/backend-saludya/commit/8965e195d438b3c658b2ededa38bb76021b3e8ed")[8965e195d438b3c658b2ededa38bb76021b3e8ed]], [fix: auth smtp done, sms removed, flow reworked], [06\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/0c6ffdd50e27eafe346187c75956185f9f49766d")[0c6ffdd50e27eafe346187c75956185f9f49766d]], [feat(iam): validate patient registration credentials], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/9c5a3199d760155e0f2bbb52588253cf49c38ae6")[9c5a3199d760155e0f2bbb52588253cf49c38ae6]], [feat(iam): validate recovery links and reset patient passwords], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/71074b8f6a4328ec18753c76f97beb2c2b1ec7ca")[71074b8f6a4328ec18753c76f97beb2c2b1ec7ca]], [feat(iam): register assisted account recovery requests], [07\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("iam")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/ca1cb00eceb91035cf759530d02c4d30b6ad8398")[ca1cb00eceb91035cf759530d02c4d30b6ad8398]], [feat(iam): add recovery screens and session confirmation flows], [07\/10\/2026],
  tline,
)

#metadata((src: "README.md", line: 8132))
#emph[Nota. Elaboración del equipo RuwaLabs a partir del historial de Git, consultado el 9 de octubre de 2026. Se verificaron los archivos de prueba modificados por cada commit. Los mensajes y fechas se conservan del repositorio; la rama indicada contiene el commit. Esta sección presenta la suite implementada; las capturas de los componentes publicados y las referencias visuales de la aplicación se presentan en el apartado 4.2.1.6.]

#metadata((src: "README.md", line: 8134))
Los archivos de prueba y su alcance se organizan por componente y tipo de testing, como se detalla en la #link("#tabla-76")[Tabla 76].

#metadata((src: "README.md", line: 8138))
#strong[Tabla 76]

#metadata((src: "README.md", line: 8140))
#emph[Suite de pruebas y escenarios de aceptación de SaludYa para el Sprint 1]

#metadata((src: "README.md", line: 8142, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Componente], [Tipo de prueba], [Archivos], [Alcance relacionado]),
  tline,
  [Backend IAM], [Unitarias y de componentes], [#link("https://github.com/RuwaLabs/backend-saludya/blob/develop/saludya/src/test/java/com/ruwalabs/saludya/iam/IamSecurityTests.java")[IamSecurityTests.java]], [DNI e identidad, indisponibilidad del proveedor, normalización de nombres, BCrypt, cifrado de notificaciones y límites de solicitudes.],
  [Backend IAM], [Integración REST y persistencia], [#link("https://github.com/RuwaLabs/backend-saludya/blob/develop/saludya/src/test/java/com/ruwalabs/saludya/iam/IamIntegrationTests.java")[IamIntegrationTests.java]], [Registro y acceso (US-01 a US-04), menores (US-15 y US-17 a US-19), contacto (US-27), recuperación (US-23 a US-25) y sesión (US-28 y US-29).],
  [Backend, recursos del paciente], [Integración y autorización], [#link("https://github.com/RuwaLabs/backend-saludya/blob/develop/saludya/src/test/java/com/ruwalabs/saludya/security/ResourceOwnershipSecurityTests.java")[ResourceOwnershipSecurityTests.java]], [Impedir consultas o acciones sobre reservas, check-in y ofertas de reasignación de otro paciente; rechazo de QR sin reserva válida.],
  [Backend IAM], [Especificación de aceptación en Gherkin], [#link("https://github.com/RuwaLabs/backend-saludya/blob/develop/saludya/src/test/resources/features/iam.feature")[iam.feature]], [Escenarios Given\/When\/Then de registro, menores, recuperación y permisos; cobertura ejecutable en JUnit.],
  [Android IAM], [Unitarias de validación y estado], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/tree/iam/app/src/test/java/pe/edu/upc/saludya/iam")[Pruebas JVM de IAM]], [#raw("IdentityValidatorTest"), #raw("CredentialsValidatorTest"), #raw("IdentityViewModelTest") y #raw("RegistrationViewModelTest"): datos de identidad y credenciales (US-01 y US-02).],
  [Android IAM], [Repositorios HTTP, acceso y recuperación], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/tree/iam/app/src/test/java/pe/edu/upc/saludya/iam")[Pruebas JVM de IAM]], [Repositorios remotos, #raw("AccessViewModelsTest"), #raw("PasswordResetLinkTest"), #raw("RecoveryActionsRepositoryTest") y #raw("RecoveryAndSessionViewModelsTest"): verificación por correo, acceso, recuperación y sesión.],
  [Android IAM], [Interfaz instrumentada], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/tree/iam/app/src/androidTest/java/pe/edu/upc/saludya/iam")[Pruebas de pantallas IAM]], [#raw("IdentityScreenTest"), #raw("RegistrationScreenTest"), #raw("AccessScreensTest") y #raw("RecoveryAndSessionScreensTest"): formularios, mensajes y navegación de los recorridos de IAM.],
  tline,
)

#metadata((src: "README.md", line: 8152))
#emph[Nota. Elaboración del equipo RuwaLabs a partir de los archivos de prueba del backend y la aplicación Android. La verificación de registro y acceso se realiza por correo, de acuerdo con el cambio implementado en IAM.]

#heading(level: 4)[4.2.1.6. Execution Evidence for Sprint Review] <sec:4-2-1-6-execution-evidence-for-sprint-review>
#metadata((src: "README.md", line: 8154, kind: "heading", level: 4))

#metadata((src: "README.md", line: 8156))
En esta sección se presentan las vistas publicadas de la Landing Page y la documentación del backend de SaludYa, junto con las pantallas del paciente diseñadas para la aplicación Android. Las capturas permiten revisar la presentación de la solución, los contratos disponibles en Swagger y los recorridos previstos para el paciente durante el Sprint 1.

#heading(level: 5)[Landing Page] <sec:landing-page-8>
#metadata((src: "README.md", line: 8158, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8160))
La Landing Page se encuentra publicada en GitHub Pages y presenta el problema, la propuesta de SaludYa y la información del equipo RuwaLabs. Las siguientes capturas corresponden a su visualización en un navegador de escritorio.

#metadata((src: "README.md", line: 8162))
Enlace de despliegue: #link("https://ruwalabs.github.io/saludya-landing/")[Landing Page de SaludYa].

#heading(level: 6)[Inicio de la Landing Page] <sec:inicio-de-la-landing-page>
#metadata((src: "README.md", line: 8164, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8166))
La vista inicial presenta el mensaje «Citas médicas sin colas, sin madrugar, sin incertidumbre», la imagen principal y los accesos para conocer el producto y consultar su disponibilidad, como se observa en la #link("#figura-154")[Figura 154].

#metadata((src: "README.md", line: 8168))
#pagebreak()

#metadata((src: "README.md", line: 8172))
#strong[Figura 154]

#metadata((src: "README.md", line: 8174))
#emph[Inicio de la Landing Page — SaludYa]

#metadata((src: "README.md", line: 8176, kind: "figure", img: "assets/execution/sprint-1/landing-home.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-home.jpg", alt: "Inicio de la Landing Page de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8178))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Problema identificado] <sec:problema-identificado>
#metadata((src: "README.md", line: 8180, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8182))
La sección describe la incertidumbre al buscar una cita y la pérdida de cupos por cancelaciones e inasistencias, como se observa en la #link("#figura-155")[Figura 155].

#metadata((src: "README.md", line: 8184))
#pagebreak()

#metadata((src: "README.md", line: 8188))
#strong[Figura 155]

#metadata((src: "README.md", line: 8190))
#emph[Problema identificado — SaludYa]

#metadata((src: "README.md", line: 8192, kind: "figure", img: "assets/execution/sprint-1/landing-problem.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-problem.jpg", alt: "Problema identificado de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8194))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Propuesta de solución] <sec:propuesta-de-solucion>
#metadata((src: "README.md", line: 8196, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8198))
La sección reúne las funciones propuestas para el paciente, entre ellas la reserva de citas, la lista de espera, las notificaciones y el registro de llegada mediante QR; también presenta la aplicación para el personal de salud, como se observa en la #link("#figura-156")[Figura 156].

#metadata((src: "README.md", line: 8200))
#pagebreak()

#metadata((src: "README.md", line: 8204))
#strong[Figura 156]

#metadata((src: "README.md", line: 8206))
#emph[Propuesta de solución — SaludYa]

#metadata((src: "README.md", line: 8208, kind: "figure", img: "assets/execution/sprint-1/landing-solution.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-solution.jpg", alt: "Propuesta de solución de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8210))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Modelo de negocio] <sec:modelo-de-negocio>
#metadata((src: "README.md", line: 8212, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8214))
La página presenta el modelo propuesto de implementación institucional, convenios con redes de salud y soporte. Estos contenidos describen la propuesta comercial del proyecto, como se observa en la #link("#figura-157")[Figura 157].

#metadata((src: "README.md", line: 8216))
#pagebreak()

#metadata((src: "README.md", line: 8220))
#strong[Figura 157]

#metadata((src: "README.md", line: 8222))
#emph[Modelo de negocio — SaludYa]

#metadata((src: "README.md", line: 8224, kind: "figure", img: "assets/execution/sprint-1/landing-business.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-business.jpg", alt: "Modelo de negocio de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8226))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Testimonios] <sec:testimonios>
#metadata((src: "README.md", line: 8228, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8230))
Los testimonios publicados recogen opiniones sobre la disponibilidad de citas y la digitalización del registro, obtenidas durante las entrevistas de validación, como se observa en la #link("#figura-158")[Figura 158].

#metadata((src: "README.md", line: 8232))
#pagebreak()

#metadata((src: "README.md", line: 8236))
#strong[Figura 158]

#metadata((src: "README.md", line: 8238))
#emph[Testimonios — SaludYa]

#metadata((src: "README.md", line: 8240, kind: "figure", img: "assets/execution/sprint-1/landing-testimonials.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-testimonials.jpg", alt: "Testimonios de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8242))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Presentación de RuwaLabs] <sec:presentacion-de-ruwalabs>
#metadata((src: "README.md", line: 8244, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8246))
La sección explica el propósito del equipo y presenta la misión y visión de SaludYa, como se observa en la #link("#figura-159")[Figura 159].

#metadata((src: "README.md", line: 8248))
#pagebreak()

#metadata((src: "README.md", line: 8252))
#strong[Figura 159]

#metadata((src: "README.md", line: 8254))
#emph[Presentación de RuwaLabs — SaludYa]

#metadata((src: "README.md", line: 8256, kind: "figure", img: "assets/execution/sprint-1/landing-about.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-about.jpg", alt: "Presentación de RuwaLabs de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8258))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Disponibilidad de la aplicación] <sec:disponibilidad-de-la-aplicacion>
#metadata((src: "README.md", line: 8260, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8262))
La sección anuncia la próxima disponibilidad para Android e iOS y muestra los botones de las tiendas. En esta captura, estos accesos todavía corresponden al anuncio de disponibilidad futura, como se observa en la #link("#figura-160")[Figura 160].

#metadata((src: "README.md", line: 8264))
#pagebreak()

#metadata((src: "README.md", line: 8268))
#strong[Figura 160]

#metadata((src: "README.md", line: 8270))
#emph[Disponibilidad de la aplicación — SaludYa]

#metadata((src: "README.md", line: 8272, kind: "figure", img: "assets/execution/sprint-1/landing-download.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/landing-download.jpg", alt: "Disponibilidad de la aplicación de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8274))
#emph[Nota. Captura de la Landing Page publicada en GitHub Pages, tomada el 9 de octubre de 2026.]

#heading(level: 5)[Aplicación Android] <sec:aplicacion-android>
#metadata((src: "README.md", line: 8276, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8278))
La aplicación Android de SaludYa se distribuye mediante un APK de prueba generado a partir de la rama #raw("develop") del repositorio Kotlin, commit #raw("74a4b7f"). La compilación finalizó correctamente y se verificó la firma del paquete. Esta versión requiere Android 7.0 o superior y utiliza el backend publicado en #raw("http://3.129.217.49:8080/").

#metadata((src: "README.md", line: 8280))
Enlace de despliegue: #link("https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/raw/refs/heads/develop/assets/downloads/SaludYa-develop-debug.apk")[Descargar APK de SaludYa para Android].

#metadata((src: "README.md", line: 8282))
Las imágenes siguientes presentan las pantallas del paciente. Las notas de cada figura identifican su origen.

#metadata((src: "README.md", line: 8284))
Archivo de interfaz: #link("https://www.figma.com/design/9Or15PiTxTluzSQouONYqH/Mobile-Application-Mockups?node-id=2-2")[SaludYa en Figma].

#heading(level: 6)[Bienvenida] <sec:bienvenida>
#metadata((src: "README.md", line: 8286, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8288))
La pantalla presenta la identidad visual de SaludYa y los accesos para iniciar sesión o crear una cuenta, como se observa en la #link("#figura-161")[Figura 161].

#metadata((src: "README.md", line: 8290))
#pagebreak()

#metadata((src: "README.md", line: 8294))
#strong[Figura 161]

#metadata((src: "README.md", line: 8296))
#emph[Bienvenida — SaludYa]

#metadata((src: "README.md", line: 8298, kind: "figure", img: "assets/execution/sprint-1/android-bienvenida.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-bienvenida.png", alt: "Bienvenida de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8300))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Verificación de identidad] <sec:verificacion-de-identidad>
#metadata((src: "README.md", line: 8302, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8304))
El formulario solicita los datos de identidad del paciente antes de continuar con la creación de su cuenta, como se observa en la #link("#figura-162")[Figura 162].

#metadata((src: "README.md", line: 8306))
#pagebreak()

#metadata((src: "README.md", line: 8310))
#strong[Figura 162]

#metadata((src: "README.md", line: 8312))
#emph[Verificación de identidad — SaludYa]

#metadata((src: "README.md", line: 8314, kind: "figure", img: "assets/execution/sprint-1/android-identidad.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-identidad.png", alt: "Verificación de identidad de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8316))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Registro de credenciales] <sec:registro-de-credenciales>
#metadata((src: "README.md", line: 8318, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8320))
El paciente registra su correo, contraseña y datos de contacto después de verificar su identidad, como se observa en la #link("#figura-163")[Figura 163].

#metadata((src: "README.md", line: 8322))
#pagebreak()

#metadata((src: "README.md", line: 8326))
#strong[Figura 163]

#metadata((src: "README.md", line: 8328))
#emph[Registro de credenciales — SaludYa]

#metadata((src: "README.md", line: 8330, kind: "figure", img: "assets/execution/sprint-1/android-credenciales.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-credenciales.png", alt: "Registro de credenciales de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8332))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Verificación por correo] <sec:verificacion-por-correo>
#metadata((src: "README.md", line: 8334, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8336))
La pantalla solicita el código de verificación enviado al correo del paciente y permite reenviarlo, como se observa en la #link("#figura-164")[Figura 164].

#metadata((src: "README.md", line: 8338))
#pagebreak()

#metadata((src: "README.md", line: 8342))
#strong[Figura 164]

#metadata((src: "README.md", line: 8344))
#emph[Verificación por correo — SaludYa]

#metadata((src: "README.md", line: 8346, kind: "figure", img: "assets/execution/sprint-1/android-verificar-correo.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-verificar-correo.png", alt: "Verificación por correo de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8348))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Inicio de sesión] <sec:inicio-de-sesion>
#metadata((src: "README.md", line: 8350, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8352))
El paciente ingresa su correo y contraseña para acceder a su cuenta, como se observa en la #link("#figura-165")[Figura 165].

#metadata((src: "README.md", line: 8354))
#pagebreak()

#metadata((src: "README.md", line: 8358))
#strong[Figura 165]

#metadata((src: "README.md", line: 8360))
#emph[Inicio de sesión — SaludYa]

#metadata((src: "README.md", line: 8362, kind: "figure", img: "assets/execution/sprint-1/android-login.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-login.png", alt: "Inicio de sesión de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8364))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Recuperación de acceso] <sec:recuperacion-de-acceso>
#metadata((src: "README.md", line: 8366, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8368))
El formulario permite solicitar un enlace de recuperación al correo registrado, como se observa en la #link("#figura-166")[Figura 166].

#metadata((src: "README.md", line: 8370))
#pagebreak()

#metadata((src: "README.md", line: 8374))
#strong[Figura 166]

#metadata((src: "README.md", line: 8376))
#emph[Recuperación de acceso — SaludYa]

#metadata((src: "README.md", line: 8378, kind: "figure", img: "assets/execution/sprint-1/android-recuperacion.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-recuperacion.png", alt: "Recuperación de acceso de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8380))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Restablecimiento de contraseña] <sec:restablecimiento-de-contrasena>
#metadata((src: "README.md", line: 8382, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8384))
El paciente define y confirma una nueva contraseña mediante el recorrido de recuperación, como se observa en la #link("#figura-167")[Figura 167].

#metadata((src: "README.md", line: 8386))
#pagebreak()

#metadata((src: "README.md", line: 8390))
#strong[Figura 167]

#metadata((src: "README.md", line: 8392))
#emph[Restablecimiento de contraseña — SaludYa]

#metadata((src: "README.md", line: 8394, kind: "figure", img: "assets/execution/sprint-1/android-nueva-contrasena.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-nueva-contrasena.png", alt: "Restablecimiento de contraseña de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8396))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Inicio del paciente] <sec:inicio-del-paciente>
#metadata((src: "README.md", line: 8398, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8400))
La vista principal reúne las citas pendientes y los accesos al historial y a la reserva de una nueva cita, como se observa en la #link("#figura-168")[Figura 168].

#metadata((src: "README.md", line: 8402))
#pagebreak()

#metadata((src: "README.md", line: 8406))
#strong[Figura 168]

#metadata((src: "README.md", line: 8408))
#emph[Inicio del paciente — SaludYa]

#metadata((src: "README.md", line: 8410, kind: "figure", img: "assets/execution/sprint-1/android-inicio.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-inicio.png", alt: "Inicio del paciente de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8412))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Reserva de cita] <sec:reserva-de-cita>
#metadata((src: "README.md", line: 8414, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8416))
El recorrido de reserva presenta las opciones necesarias para elegir una cita según la disponibilidad del establecimiento, como se observa en la #link("#figura-169")[Figura 169].

#metadata((src: "README.md", line: 8418))
#pagebreak()

#metadata((src: "README.md", line: 8422))
#strong[Figura 169]

#metadata((src: "README.md", line: 8424))
#emph[Reserva de cita — SaludYa]

#metadata((src: "README.md", line: 8426, kind: "figure", img: "assets/execution/sprint-1/android-reserva.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-reserva.png", alt: "Reserva de cita de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8428))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Confirmación de reserva] <sec:confirmacion-de-reserva>
#metadata((src: "README.md", line: 8430, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8432))
La pantalla presenta la confirmación y los datos de la cita seleccionada, como se observa en la #link("#figura-170")[Figura 170].

#metadata((src: "README.md", line: 8434))
#pagebreak()

#metadata((src: "README.md", line: 8438))
#strong[Figura 170]

#metadata((src: "README.md", line: 8440))
#emph[Confirmación de reserva — SaludYa]

#metadata((src: "README.md", line: 8442, kind: "figure", img: "assets/execution/sprint-1/android-confirmacion.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-confirmacion.png", alt: "Confirmación de reserva de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8444))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Registro de llegada] <sec:registro-de-llegada>
#metadata((src: "README.md", line: 8446, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8448))
La interfaz indica al paciente que debe escanear el QR del establecimiento para registrar su llegada y confirmar su presencia, como se observa en la #link("#figura-171")[Figura 171].

#metadata((src: "README.md", line: 8450))
#pagebreak()

#metadata((src: "README.md", line: 8454))
#strong[Figura 171]

#metadata((src: "README.md", line: 8456))
#emph[Registro de llegada — SaludYa]

#metadata((src: "README.md", line: 8458, kind: "figure", img: "assets/execution/sprint-1/android-llegada.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-llegada.png", alt: "Registro de llegada de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8460))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Ticket de atención] <sec:ticket-de-atencion>
#metadata((src: "README.md", line: 8462, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8464))
La pantalla presenta el ticket del paciente como parte del seguimiento de su turno de atención, como se observa en la #link("#figura-172")[Figura 172].

#metadata((src: "README.md", line: 8466))
#pagebreak()

#metadata((src: "README.md", line: 8470))
#strong[Figura 172]

#metadata((src: "README.md", line: 8472))
#emph[Ticket de atención — SaludYa]

#metadata((src: "README.md", line: 8474, kind: "figure", img: "assets/execution/sprint-1/android-ticket.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-ticket.png", alt: "Ticket de atención de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8476))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Perfil del paciente] <sec:perfil-del-paciente>
#metadata((src: "README.md", line: 8478, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8480))
El perfil reúne los datos personales y de contacto, junto con las acciones disponibles para la cuenta, como se observa en la #link("#figura-173")[Figura 173].

#metadata((src: "README.md", line: 8482))
#pagebreak()

#metadata((src: "README.md", line: 8486))
#strong[Figura 173]

#metadata((src: "README.md", line: 8488))
#emph[Perfil del paciente — SaludYa]

#metadata((src: "README.md", line: 8490, kind: "figure", img: "assets/execution/sprint-1/android-perfil.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-perfil.png", alt: "Perfil del paciente de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8492))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Menores vinculados] <sec:menores-vinculados>
#metadata((src: "README.md", line: 8494, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8496))
La vista permite consultar los menores vinculados al paciente y acceder a las acciones de gestión del vínculo, como se observa en la #link("#figura-174")[Figura 174].

#metadata((src: "README.md", line: 8498))
#pagebreak()

#metadata((src: "README.md", line: 8502))
#strong[Figura 174]

#metadata((src: "README.md", line: 8504))
#emph[Menores vinculados — SaludYa]

#metadata((src: "README.md", line: 8506, kind: "figure", img: "assets/execution/sprint-1/android-menores.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-menores.png", alt: "Menores vinculados de SaludYa", width: 240pt)]

#metadata((src: "README.md", line: 8508))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 6)[Notificaciones del paciente] <sec:notificaciones-del-paciente>
#metadata((src: "README.md", line: 8510, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8512))
La pantalla reúne los avisos dirigidos al paciente para consultar los cambios y novedades relacionados con sus citas, como se observa en la #link("#figura-175")[Figura 175].

#metadata((src: "README.md", line: 8514))
#pagebreak()

#metadata((src: "README.md", line: 8518))
#strong[Figura 175]

#metadata((src: "README.md", line: 8520))
#emph[Notificaciones del paciente — SaludYa]

#metadata((src: "README.md", line: 8522, kind: "figure", img: "assets/execution/sprint-1/android-notificaciones.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-notificaciones.png", alt: "Notificaciones del paciente de SaludYa", width: 50%)]]

#metadata((src: "README.md", line: 8526))
#emph[Nota. Interfaz del paciente exportada de Figma; referencia visual, no captura de ejecución del APK.]

#heading(level: 5)[Backend: documentación publicada en Swagger] <sec:backend-documentacion-publicada-en-swagger>
#metadata((src: "README.md", line: 8528, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8530))
El backend dispone de una interfaz Swagger UI que presenta los endpoints y sus contratos HTTP. Las capturas muestran la documentación accesible del servicio desplegado; no constituyen resultados de pruebas ni acreditan por sí solas la ejecución exitosa de las operaciones de negocio.

#metadata((src: "README.md", line: 8532))
Enlace de despliegue: #link("http://3.129.217.49:8080/swagger-ui/index.html#/")[Swagger UI de SaludYa].

#heading(level: 6)[Vista general de Swagger] <sec:vista-general-de-swagger>
#metadata((src: "README.md", line: 8534, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8536))
La interfaz identifica el servicio como SaludYa API y presenta el servidor y los grupos de endpoints publicados, como se observa en la #link("#figura-176")[Figura 176].

#metadata((src: "README.md", line: 8538))
#pagebreak()

#metadata((src: "README.md", line: 8542))
#strong[Figura 176]

#metadata((src: "README.md", line: 8544))
#emph[Vista general de Swagger — SaludYa]

#metadata((src: "README.md", line: 8546, kind: "figure", img: "assets/execution/sprint-1/swagger-overview.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-overview.jpg", alt: "Vista general de Swagger de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8548))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Verificación de identidad en el backend] <sec:verificacion-de-identidad-en-el-backend>
#metadata((src: "README.md", line: 8550, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8552))
El grupo IAM - Identity verification documenta las operaciones para verificar la identidad y consultar la existencia de un DNI, como se observa en la #link("#figura-177")[Figura 177].

#metadata((src: "README.md", line: 8554))
#pagebreak()

#metadata((src: "README.md", line: 8558))
#strong[Figura 177]

#metadata((src: "README.md", line: 8560))
#emph[Verificación de identidad en el backend — SaludYa]

#metadata((src: "README.md", line: 8562, kind: "figure", img: "assets/execution/sprint-1/swagger-identity.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-identity.jpg", alt: "Verificación de identidad en el backend de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8564))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Cuentas y credenciales] <sec:cuentas-y-credenciales>
#metadata((src: "README.md", line: 8566, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8568))
El grupo IAM - User accounts presenta los contratos de cuentas, registro y recuperación de acceso, como se observa en la #link("#figura-178")[Figura 178].

#metadata((src: "README.md", line: 8570))
#pagebreak()

#metadata((src: "README.md", line: 8574))
#strong[Figura 178]

#metadata((src: "README.md", line: 8576))
#emph[Cuentas y credenciales — SaludYa]

#metadata((src: "README.md", line: 8578, kind: "figure", img: "assets/execution/sprint-1/swagger-accounts.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-accounts.jpg", alt: "Cuentas y credenciales de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8580))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Perfil del paciente] <sec:perfil-del-paciente-2>
#metadata((src: "README.md", line: 8582, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8584))
El grupo IAM - Patients documenta la consulta y actualización del perfil y la consulta de menores vinculados, como se observa en la #link("#figura-179")[Figura 179].

#metadata((src: "README.md", line: 8586))
#pagebreak()

#metadata((src: "README.md", line: 8590))
#strong[Figura 179]

#metadata((src: "README.md", line: 8592))
#emph[Perfil del paciente — SaludYa]

#metadata((src: "README.md", line: 8594, kind: "figure", img: "assets/execution/sprint-1/swagger-patients.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-patients.jpg", alt: "Perfil del paciente de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8596))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Vinculación de menores] <sec:vinculacion-de-menores>
#metadata((src: "README.md", line: 8598, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8600))
El grupo IAM - Linked minors presenta los contratos para crear, consultar y eliminar el vínculo con un menor, como se observa en la #link("#figura-180")[Figura 180].

#metadata((src: "README.md", line: 8602))
#pagebreak()

#metadata((src: "README.md", line: 8606))
#strong[Figura 180]

#metadata((src: "README.md", line: 8608))
#emph[Vinculación de menores — SaludYa]

#metadata((src: "README.md", line: 8610, kind: "figure", img: "assets/execution/sprint-1/swagger-minors.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-minors.jpg", alt: "Vinculación de menores de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8612))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Reservas de citas] <sec:reservas-de-citas>
#metadata((src: "README.md", line: 8614, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8616))
El grupo Appointments presenta las operaciones para registrar y consultar reservas, cancelarlas y consultar las citas de un paciente, como se observa en la #link("#figura-181")[Figura 181].

#metadata((src: "README.md", line: 8618))
#pagebreak()

#metadata((src: "README.md", line: 8622))
#strong[Figura 181]

#metadata((src: "README.md", line: 8624))
#emph[Reservas de citas — SaludYa]

#metadata((src: "README.md", line: 8626, kind: "figure", img: "assets/execution/sprint-1/swagger-appointments.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-appointments.jpg", alt: "Reservas de citas de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8628))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Disponibilidad de horarios] <sec:disponibilidad-de-horarios>
#metadata((src: "README.md", line: 8630, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8632))
El grupo Time Slots documenta la consulta de intervalos y disponibilidad para la reserva de citas, como se observa en la #link("#figura-182")[Figura 182].

#metadata((src: "README.md", line: 8634))
#pagebreak()

#metadata((src: "README.md", line: 8638))
#strong[Figura 182]

#metadata((src: "README.md", line: 8640))
#emph[Disponibilidad de horarios — SaludYa]

#metadata((src: "README.md", line: 8642, kind: "figure", img: "assets/execution/sprint-1/swagger-time-slots.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-time-slots.jpg", alt: "Disponibilidad de horarios de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8644))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Registro de asistencia] <sec:registro-de-asistencia>
#metadata((src: "README.md", line: 8646, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8648))
El grupo Check-ins presenta los contratos de registro de llegada por QR o código y las consultas relacionadas con el estado de asistencia, como se observa en la #link("#figura-183")[Figura 183].

#metadata((src: "README.md", line: 8650))
#pagebreak()

#metadata((src: "README.md", line: 8654))
#strong[Figura 183]

#metadata((src: "README.md", line: 8656))
#emph[Registro de asistencia — SaludYa]

#metadata((src: "README.md", line: 8658, kind: "figure", img: "assets/execution/sprint-1/swagger-check-in.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-check-in.jpg", alt: "Registro de asistencia de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8660))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Cola de atención] <sec:cola-de-atencion>
#metadata((src: "README.md", line: 8662, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8664))
El grupo Attendance Queues documenta las consultas de cola, posición y pacientes en espera, junto con la operación de llamado, como se observa en la #link("#figura-184")[Figura 184].

#metadata((src: "README.md", line: 8666))
#pagebreak()

#metadata((src: "README.md", line: 8670))
#strong[Figura 184]

#metadata((src: "README.md", line: 8672))
#emph[Cola de atención — SaludYa]

#metadata((src: "README.md", line: 8674, kind: "figure", img: "assets/execution/sprint-1/swagger-queue.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-queue.jpg", alt: "Cola de atención de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8676))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 6)[Ofertas de reasignación] <sec:ofertas-de-reasignacion>
#metadata((src: "README.md", line: 8678, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8680))
El grupo reassignment-offers-controller documenta la consulta de ofertas pendientes y las acciones para aceptar o rechazar una oferta, como se observa en la #link("#figura-185")[Figura 185].

#metadata((src: "README.md", line: 8682))
#pagebreak()

#metadata((src: "README.md", line: 8686))
#strong[Figura 185]

#metadata((src: "README.md", line: 8688))
#emph[Ofertas de reasignación — SaludYa]

#metadata((src: "README.md", line: 8690, kind: "figure", img: "assets/execution/sprint-1/swagger-reassignment.jpg"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/swagger-reassignment.jpg", alt: "Ofertas de reasignación de SaludYa", width: 750pt)]

#metadata((src: "README.md", line: 8692))
#emph[Nota. Captura de Swagger UI del backend desplegado de SaludYa, tomada el 9 de octubre de 2026.]

#heading(level: 4)[4.2.1.7. Services Documentation Evidence for Sprint Review] <sec:4-2-1-7-services-documentation-evidence-for-sprint-review>
#metadata((src: "README.md", line: 8694, kind: "heading", level: 4))

#metadata((src: "README.md", line: 8696))
En esta sección se presenta la evidencia de la documentación de los Web Services del backend de SaludYa correspondiente a este Sprint. La documentación se generó con springdoc-openapi (OpenAPI 3) a partir de las anotaciones del código y se encuentra desplegada y navegable en Swagger UI, lo que permite consultar cada operación y ejecutarla con datos de muestra mediante la opción #emph[Try it out]. Se documentaron los servicios de los cinco #emph[bounded contexts] del sistema Identity & Access Management, Appointments & Booking, Arrival & QR Check-in, Reassignment y Hospital Operations & Configuration, alcanzando 62 operaciones distribuidas en 53 rutas.

#metadata((src: "README.md", line: 8698))
La especificación OpenAPI se publica en #raw("/v3/api-docs") y se exportó al repositorio de Web Services (#raw("docs/api/openapi.json")) para su versionado. La API utiliza autenticación HTTP Bearer con JWT (esquema #raw("bearerAuth")); los endpoints públicos (registro, inicio de sesión, verificación de identidad y recuperación de cuenta) están marcados con #raw("@SecurityRequirements") y no requieren token, mientras que el resto exige un token vigente obtenido tras el inicio de sesión.

#metadata((src: "README.md", line: 8700))
- #strong[Swagger UI (documentación desplegada):] #link("http://3.129.217.49:8080/swagger-ui/index.html")[http:\/\/3.129.217.49:8080\/swagger-ui\/index.html]
- #strong[Especificación OpenAPI (JSON):] #link("http://3.129.217.49:8080/v3/api-docs")[http:\/\/3.129.217.49:8080\/v3\/api-docs]
- #strong[Repositorio de Web Services:] #link("https://github.com/RuwaLabs/backend-saludya")[https:\/\/github.com\/RuwaLabs\/backend-saludya]

#heading(level: 5)[Commits relacionados con la documentación para este Sprint] <sec:commits-relacionados-con-la-documentacion-para-este-sprint>
#metadata((src: "README.md", line: 8704, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8706, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Commit], [Mensaje], [Relación]),
  tline,
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/a592333")[#raw("a592333")]], [#raw("docs(api): add OpenAPI spec export and Web Services endpoint documentation")], [Exportación del documento OpenAPI (#raw("docs/api/openapi.json")) y documentación de endpoints del Sprint],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/fdf27c4")[#raw("fdf27c4")]], [#raw("chore: drop hardcoded OpenAPI server so Swagger targets the current host")], [Ajuste para que Swagger UI resuelva las peticiones contra el host desplegado],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/a870d04")[#raw("a870d04")]], [#raw("docs(iam): add setup guide and API request examples")], [Guía de configuración y ejemplos de peticiones de IAM],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/acb79f5")[#raw("acb79f5")]], [#raw("fix(openapi): remove legacy ACME configuration")], [Corrección de la configuración OpenAPI],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/955abb6")[#raw("955abb6")]], [#raw("feat: initializing project")], [Configuración base de la documentación OpenAPI del proyecto],
  tline,
)

#heading(level: 5)[Tabla de endpoints documentados] <sec:tabla-de-endpoints-documentados>
#metadata((src: "README.md", line: 8714, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8716))
A continuación se detalla, para cada endpoint, la acción implementada, el verbo HTTP y la sintaxis de llamada, los parámetros admitidos, un ejemplo de petición y de respuesta con datos de muestra, la explicación de la respuesta y el enlace a su documentación desplegada. La URL base es #raw("http://3.129.217.49:8080").

#heading(level: 6)[IAM — Identity & Access Management] <sec:iam-identity-access-management>
#metadata((src: "README.md", line: 8718, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8720, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[1], [Enviar código de verificación antes de registrar la cuenta], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/send-verification-code")], [body: #raw("email")], [#raw("{\"email\":\"kevin.huaman@gmail.com\"}")], [#raw("202") · #emph[sin cuerpo]], [Acepta la solicitud y envía un código de 6 dígitos al correo; no revela si el correo ya existe], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/sendVerificationCode")[Swagger]],
  table.cell(align: center)[2], [Registrar al paciente verificado], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts")], [body: #raw("dni, name, lastname, birthDate, phone, email, password, code")], [#raw("{\"dni\":\"74218365\",\"name\":\"Kevin\",\"lastname\":\"Huamán\",\"birthDate\":\"2003-05-14\",\"phone\":\"987654321\",\"email\":\"kevin.huaman@gmail.com\",\"password\":\"SaludYa#2026\",\"code\":\"483920\"}")], [#raw("201") #raw("{\"id\":1,\"userId\":10,\"dni\":\"74218365\",\"name\":\"Kevin\",\"lastname\":\"Huamán\",\"birthDate\":\"2003-05-14\",\"phone\":\"987654321\"}")], [Crea la cuenta y devuelve el recurso del paciente; el header #raw("Location") apunta al recurso creado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/register")[Swagger]],
  table.cell(align: center)[3], [Iniciar sesión (valida credenciales y envía código)], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login")], [body: #raw("email, password")], [#raw("{\"email\":\"kevin.huaman@gmail.com\",\"password\":\"SaludYa#2026\"}")], [#raw("200") #raw("{\"challengeId\":\"8f2c1d40-...\",\"maskedEmail\":\"k***@gmail.com\",\"expiresAt\":\"2026-10-09T10:35:00Z\"}")], [Valida las credenciales y devuelve el desafío con el correo enmascarado; un mensaje único cubre credenciales inválidas], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/login")[Swagger]],
  table.cell(align: center)[4], [Completar inicio de sesión con el código], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login/verify")], [body: #raw("challengeId, code")], [#raw("{\"challengeId\":\"8f2c1d40-...\",\"code\":\"721305\"}")], [#raw("200") #raw("{\"accessToken\":\"eyJhbGciOiJIUzI1NiJ9...\",\"tokenType\":\"Bearer\",\"expiresAt\":\"2026-10-09T11:30:00Z\",\"userId\":10,\"role\":\"PATIENT\",\"patientId\":1}")], [Devuelve el token de acceso (JWT) y los identificadores del paciente y su rol], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/verifyLogin")[Swagger]],
  table.cell(align: center)[5], [Reenviar el código del desafío de login], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login/resend")], [body: #raw("challengeId")], [#raw("{\"challengeId\":\"8f2c1d40-...\"}")], [#raw("202") · #emph[sin cuerpo]], [Genera y reenvía un nuevo código para el mismo desafío], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/resendLoginCode")[Swagger]],
  table.cell(align: center)[6], [Cerrar sesión (revoca el token actual)], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/logout")], [header: #raw("Authorization: Bearer <token>")], [#emph[(sin cuerpo)]], [#raw("204") · #emph[sin cuerpo]], [Revoca la sesión Bearer vigente; responde sin contenido], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/logout")[Swagger]],
  table.cell(align: center)[7], [Solicitar enlace de recuperación de contraseña], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/recover-password")], [body: #raw("email")], [#raw("{\"email\":\"kevin.huaman@gmail.com\"}")], [#raw("202") #raw("{\"message\":\"If an active account exists, a recovery email will be sent.\"}")], [Confirma la recepción de forma genérica, sin revelar si el correo está registrado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/recover")[Swagger]],
  table.cell(align: center)[8], [Restablecer contraseña con el enlace de recuperación], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/reset-password")], [body: #raw("token, password, confirmPassword")], [#raw("{\"token\":\"d41d8cd98f00...\",\"password\":\"Nueva#2026\",\"confirmPassword\":\"Nueva#2026\"}")], [#raw("204") · #emph[sin cuerpo]], [Canjea el enlace de un solo uso y revoca las sesiones previas; responde sin contenido], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/reset")[Swagger]],
  table.cell(align: center)[9], [Cambiar la contraseña usando la actual], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/change-password")], [header: #raw("Authorization") · body: #raw("currentPassword, password, confirmPassword")], [#raw("{\"currentPassword\":\"SaludYa#2026\",\"password\":\"Nueva#2026\",\"confirmPassword\":\"Nueva#2026\"}")], [#raw("204") · #emph[sin cuerpo]], [Actualiza la contraseña del usuario autenticado; responde sin contenido], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/change")[Swagger]],
  table.cell(align: center)[10], [Leer la cuenta y el perfil propios], table.cell(align: center)[GET], [#raw("/api/v1/user-accounts/me")], [header: #raw("Authorization")], [#emph[(sin cuerpo)]], [#raw("200") #raw("{\"id\":10,\"role\":\"PATIENT\",\"email\":\"kevin.huaman@gmail.com\",\"active\":true,\"patientId\":1,\"dni\":\"74218365\",\"name\":\"Kevin\",\"lastname\":\"Huamán\",\"birthDate\":\"2003-05-14\",\"phone\":\"987654321\"}")], [Devuelve el perfil de la cuenta autenticada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/me")[Swagger]],
  table.cell(align: center)[11], [Leer un perfil por id], table.cell(align: center)[GET], [#raw("/api/v1/user-accounts/{id}")], [path: #raw("id") · header: #raw("Authorization")], [#raw("/api/v1/user-accounts/10")], [#raw("200") #raw("{\"id\":10,\"role\":\"PATIENT\",\"email\":\"kevin.huaman@gmail.com\",\"active\":true,\"patientId\":1,...}")], [Devuelve el perfil propio; un SUPER\_ADMIN puede consultar otra cuenta], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/get")[Swagger]],
  table.cell(align: center)[12], [Actualizar correo y celular], table.cell(align: center)[PUT], [#raw("/api/v1/user-accounts/{id}")], [path: #raw("id") · body: #raw("email, phone")], [#raw("{\"email\":\"kevin.nuevo@gmail.com\",\"phone\":\"987111222\"}")], [#raw("200") #raw("{\"id\":10,\"email\":\"kevin.nuevo@gmail.com\",\"phone\":\"987111222\",...}")], [Actualiza solo correo y celular; la identidad y el rol permanecen inmutables], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/update")[Swagger]],
  table.cell(align: center)[13], [Crear cuenta de personal de admisión], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/staff")], [header: #raw("Authorization (SUPER_ADMIN)") · body: #raw("dni, name, lastname, birthDate, phone, email")], [#raw("{\"dni\":\"70000002\",\"name\":\"Franco\",\"lastname\":\"Alanoca\",\"birthDate\":\"1999-03-02\",\"phone\":\"999888777\",\"email\":\"franco@saludya.local\"}")], [#raw("201") #raw("{\"id\":15,\"role\":\"ADMISSION_STAFF\",\"email\":\"franco@saludya.local\",\"active\":true,\"patientId\":null,...}")], [Crea la cuenta del personal y envía una invitación para definir contraseña], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/staff")[Swagger]],
  table.cell(align: center)[14], [Verificar identidad por DNI y nombre], table.cell(align: center)[POST], [#raw("/api/v1/identity-verifications")], [body: #raw("dni, name, lastname")], [#raw("{\"dni\":\"74218365\",\"name\":\"Kevin\",\"lastname\":\"Huamán\"}")], [#raw("200") #raw("{\"verified\":true}")], [Indica si el DNI existe y el nombre completo coincide con el registro oficial], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Identity%20verification/verify")[Swagger]],
  table.cell(align: center)[15], [Comprobar si un DNI es conocido], table.cell(align: center)[POST], [#raw("/api/v1/identity-verifications/exists")], [body: #raw("dni")], [#raw("{\"dni\":\"74218365\"}")], [#raw("200") #raw("{\"exists\":true}")], [Indica si el DNI es conocido por el proveedor de identidad], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Identity%20verification/exists")[Swagger]],
  table.cell(align: center)[16], [Leer el perfil de paciente], table.cell(align: center)[GET], [#raw("/api/v1/patients/{id}")], [path: #raw("id") · header: #raw("Authorization")], [#raw("/api/v1/patients/1")], [#raw("200") #raw("{\"id\":1,\"userId\":10,\"dni\":\"74218365\",\"name\":\"Kevin\",\"lastname\":\"Huamán\",\"birthDate\":\"2003-05-14\",\"phone\":\"987654321\"}")], [Devuelve el paciente propio o un menor vinculado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/get_1")[Swagger]],
  table.cell(align: center)[17], [Actualizar datos de contacto del paciente], table.cell(align: center)[PUT], [#raw("/api/v1/patients/{id}")], [path: #raw("id") · body: #raw("email, phone")], [#raw("{\"email\":\"kevin.nuevo@gmail.com\",\"phone\":\"987111222\"}")], [#raw("200") #raw("{\"id\":1,\"userId\":10,\"dni\":\"74218365\",\"name\":\"Kevin\",...}")], [Actualiza el contacto del paciente propio y devuelve el recurso actualizado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/update_1")[Swagger]],
  table.cell(align: center)[18], [Listar menores vinculados], table.cell(align: center)[GET], [#raw("/api/v1/patients/{id}/minors")], [path: #raw("id") · header: #raw("Authorization")], [#raw("/api/v1/patients/1/minors")], [#raw("200") #raw("[{\"id\":5,\"patientId\":88,\"tutorId\":1}]")], [Lista los vínculos de tutoría del paciente autenticado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/minors")[Swagger]],
  table.cell(align: center)[19], [Vincular a un menor verificado], table.cell(align: center)[POST], [#raw("/api/v1/patient-minors")], [header: #raw("Authorization") · body: #raw("dni, name, lastname, birthDate, confirmFiliation")], [#raw("{\"dni\":\"76543210\",\"name\":\"Ana\",\"lastname\":\"Torres\",\"birthDate\":\"2015-08-20\",\"confirmFiliation\":true}")], [#raw("201") #raw("{\"id\":5,\"patientId\":88,\"tutorId\":1}")], [Crea el vínculo de tutoría tras confirmar la filiación; #raw("Location") apunta al recurso], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/link")[Swagger]],
  table.cell(align: center)[20], [Leer un vínculo de tutoría], table.cell(align: center)[GET], [#raw("/api/v1/patient-minors/{id}")], [path: #raw("id") · header: #raw("Authorization")], [#raw("/api/v1/patient-minors/5")], [#raw("200") #raw("{\"id\":5,\"patientId\":88,\"tutorId\":1}")], [Devuelve el vínculo de tutoría solicitado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/get_2")[Swagger]],
  table.cell(align: center)[21], [Desvincular a un menor], table.cell(align: center)[DELETE], [#raw("/api/v1/patient-minors/{id}")], [path: #raw("id") · header: #raw("Authorization")], [#raw("/api/v1/patient-minors/5")], [#raw("204") · #emph[sin cuerpo]], [Elimina el vínculo de tutoría conservando la historia clínica del menor], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/unlink")[Swagger]],
  table.cell(align: center)[22], [Obtener instrucciones de soporte], table.cell(align: center)[GET], [#raw("/api/v1/account-recovery-requests/support")], [—], [#emph[(sin cuerpo)]], [#raw("200") #raw("{\"instructions\":\"Acude al área de admisión con tu DNI original...\",\"phone\":\"999888777\"}")], [Devuelve las instrucciones y el teléfono de soporte (público)], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/support")[Swagger]],
  table.cell(align: center)[23], [Solicitar recuperación asistida], table.cell(align: center)[POST], [#raw("/api/v1/account-recovery-requests")], [body: #raw("dni, contactEmail")], [#raw("{\"dni\":\"74218365\",\"contactEmail\":\"familiar@gmail.com\"}")], [#raw("202") #raw("{\"message\":\"Request received...\",\"instructions\":\"...\",\"phone\":\"999888777\"}")], [Registra la solicitud; no otorga acceso ni revela cuentas], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/request")[Swagger]],
  table.cell(align: center)[24], [Listar solicitudes de recuperación abiertas], table.cell(align: center)[GET], [#raw("/api/v1/account-recovery-requests")], [header: #raw("Authorization (SUPER_ADMIN)")], [#emph[(sin cuerpo)]], [#raw("200") #raw("[{\"id\":\"3f7b...\",\"dni\":\"74218365\",\"contactEmail\":\"familiar@gmail.com\",\"status\":\"OPEN\",\"createdAt\":\"2026-10-09T10:00:00Z\",...}]")], [Lista las 100 solicitudes abiertas más antiguas], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/open")[Swagger]],
  table.cell(align: center)[25], [Resolver solicitud de recuperación asistida], table.cell(align: center)[POST], [#raw("/api/v1/account-recovery-requests/{id}/resolve")], [path: #raw("id") · header: #raw("Authorization (SUPER_ADMIN)") · body: #raw("identityCheckedInPerson")], [#raw("{\"identityCheckedInPerson\":true}")], [#raw("200") #raw("{\"email\":\"new.user@saludya.local\",\"password\":\"Temp#a1B2c3\",\"message\":\"...\"}")], [Restablece la cuenta con correo y clave temporal tras verificar el DNI físico (SUPER\_ADMIN)], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/resolve")[Swagger]],
  tline,
)

#heading(level: 6)[Appointments & Booking] <sec:appointments-booking>
#metadata((src: "README.md", line: 8748, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8750, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[26], [Reservar una cita], table.cell(align: center)[POST], [#raw("/api/v1/appointments")], [body: #raw("patientId, timeSlotId")], [#raw("{\"patientId\":1,\"timeSlotId\":31}")], [#raw("201") #raw("{\"id\":142,\"timeSlotId\":31,\"patientId\":1,\"bookingOrder\":3,\"bookingCode\":\"RSV-000142\",\"status\":\"RESERVED\",\"createdAt\":\"2026-10-09T09:00:00Z\",\"updatedAt\":null}")], [Crea la cita y devuelve el recurso; #raw("Location") apunta a la cita creada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/bookAppointment")[Swagger]],
  table.cell(align: center)[27], [Listar citas con filtros], table.cell(align: center)[GET], [#raw("/api/v1/appointments")], [query: #raw("patientId, timeSlotId, doctorId, specialtyId, date, status")], [#raw("/api/v1/appointments?patientId=1&status=RESERVED")], [#raw("200") #raw("[{\"id\":142,\"timeSlotId\":31,\"patientId\":1,\"status\":\"RESERVED\",...}]")], [Devuelve las citas filtradas; si el actor es paciente, #raw("patientId") es obligatorio], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointments")[Swagger]],
  table.cell(align: center)[28], [Obtener una cita por id], table.cell(align: center)[GET], [#raw("/api/v1/appointments/{id}")], [path: #raw("id")], [#raw("/api/v1/appointments/142")], [#raw("200") #raw("{\"id\":142,\"timeSlotId\":31,\"patientId\":1,\"bookingOrder\":3,\"status\":\"RESERVED\",...}")], [Devuelve la cita; error si no existe o no es gestionable por el usuario], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointmentById")[Swagger]],
  table.cell(align: center)[29], [Listar citas de un paciente], table.cell(align: center)[GET], [#raw("/api/v1/appointments/patient/{patientId}")], [path: #raw("patientId") · query: #raw("status")], [#raw("/api/v1/appointments/patient/1?status=CONFIRMED")], [#raw("200") #raw("[{\"id\":142,\"patientId\":1,\"status\":\"CONFIRMED\",...}]")], [Lista las citas del paciente indicado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointmentsByPatient")[Swagger]],
  table.cell(align: center)[30], [Cancelar una cita], table.cell(align: center)[DELETE], [#raw("/api/v1/appointments/{id}")], [path: #raw("id")], [#raw("/api/v1/appointments/142")], [#raw("200") #raw("{\"id\":142,\"status\":\"CANCELLED\",...}")], [Cancela la cita y devuelve el recurso con estado #raw("CANCELLED")], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/cancelAppointment")[Swagger]],
  table.cell(align: center)[31], [Listar doctores por especialidad], table.cell(align: center)[GET], [#raw("/api/v1/doctors")], [query: #raw("specialtyId") (obligatorio)], [#raw("/api/v1/doctors?specialtyId=1")], [#raw("200") #raw("[{\"id\":7,\"specialtyId\":1,\"name\":\"Ana\",\"lastname\":\"Rojas\"}]")], [Devuelve los doctores de la especialidad indicada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Doctors/getDoctorsBySpecialty")[Swagger]],
  table.cell(align: center)[32], [Obtener un doctor por id], table.cell(align: center)[GET], [#raw("/api/v1/doctors/{id}")], [path: #raw("id")], [#raw("/api/v1/doctors/7")], [#raw("200") #raw("{\"id\":7,\"specialtyId\":1,\"name\":\"Ana\",\"lastname\":\"Rojas\"}")], [Devuelve el doctor solicitado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Doctors/getDoctorById")[Swagger]],
  table.cell(align: center)[33], [Listar especialidades], table.cell(align: center)[GET], [#raw("/api/v1/specialties")], [—], [#raw("/api/v1/specialties")], [#raw("200") #raw("[{\"id\":1,\"name\":\"Medicina general\",\"description\":\"Atención médica primaria\"}]")], [Devuelve el catálogo de especialidades], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Specialties/getAllSpecialties")[Swagger]],
  table.cell(align: center)[34], [Obtener una especialidad por id], table.cell(align: center)[GET], [#raw("/api/v1/specialties/{id}")], [path: #raw("id")], [#raw("/api/v1/specialties/1")], [#raw("200") #raw("{\"id\":1,\"name\":\"Medicina general\",\"description\":\"Atención médica primaria\"}")], [Devuelve la especialidad solicitada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Specialties/getSpecialtyById")[Swagger]],
  table.cell(align: center)[35], [Slots disponibles por especialidad y fecha], table.cell(align: center)[GET], [#raw("/api/v1/time-slots/available")], [query: #raw("specialtyId, date") (obligatorios)], [#raw("/api/v1/time-slots/available?specialtyId=1&date=2026-10-15")], [#raw("200") #raw("[{\"id\":31,\"doctorId\":7,\"date\":\"2026-10-15\",\"startHour\":\"09:00\",\"endHour\":\"09:30\",\"room\":\"Consultorio 3\",\"maxCapacity\":5,\"currentBookings\":2,\"status\":\"AVAILABLE\"}]")], [Devuelve los slots con cupo disponible para la especialidad y fecha], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getAvailableTimeSlots")[Swagger]],
  table.cell(align: center)[36], [Slots de un doctor en una fecha], table.cell(align: center)[GET], [#raw("/api/v1/time-slots")], [query: #raw("doctorId, date") (obligatorios)], [#raw("/api/v1/time-slots?doctorId=7&date=2026-10-15")], [#raw("200") #raw("[{\"id\":31,\"doctorId\":7,\"date\":\"2026-10-15\",\"status\":\"AVAILABLE\",...}]")], [Devuelve los slots del doctor en la fecha indicada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotsByDoctorAndDate")[Swagger]],
  table.cell(align: center)[37], [Obtener un slot por id], table.cell(align: center)[GET], [#raw("/api/v1/time-slots/{id}")], [path: #raw("id")], [#raw("/api/v1/time-slots/31")], [#raw("200") #raw("{\"id\":31,\"doctorId\":7,\"date\":\"2026-10-15\",\"startHour\":\"09:00\",\"status\":\"AVAILABLE\",...}")], [Devuelve el slot solicitado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotById")[Swagger]],
  table.cell(align: center)[38], [Crear un slot de atención], table.cell(align: center)[POST], [#raw("/api/v1/time-slots")], [body: #raw("doctorId, date, startHour, endHour, room, maxCapacity")], [#raw("{\"doctorId\":7,\"date\":\"2026-10-16\",\"startHour\":\"09:00\",\"endHour\":\"09:30\",\"room\":\"Consultorio 3\",\"maxCapacity\":5}")], [#raw("201") #raw("{\"id\":32,\"doctorId\":7,\"date\":\"2026-10-16\",\"startHour\":\"09:00\",\"status\":\"AVAILABLE\",...}")], [Crea el slot y devuelve el recurso creado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/createTimeSlot")[Swagger]],
  table.cell(align: center)[39], [Actualizar la capacidad de un slot], table.cell(align: center)[PUT], [#raw("/api/v1/time-slots/{id}/capacity")], [path: #raw("id") · body: #raw("maxCapacity")], [#raw("{\"maxCapacity\":8}")], [#raw("200") #raw("{\"id\":31,\"maxCapacity\":8,\"currentBookings\":2,\"status\":\"AVAILABLE\",...}")], [Actualiza la capacidad máxima del slot], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlotCapacity")[Swagger]],
  table.cell(align: center)[40], [Editar un slot (doctor, horario y estado)], table.cell(align: center)[PUT], [#raw("/api/v1/time-slots/{id}")], [path: #raw("id") · body: #raw("doctorId, startHour, endHour, status")], [#raw("{\"doctorId\":7,\"startHour\":\"10:00\",\"endHour\":\"10:30\",\"status\":\"AVAILABLE\"}")], [#raw("200") #raw("{\"id\":31,\"doctorId\":7,\"startHour\":\"10:00\",\"endHour\":\"10:30\",\"status\":\"AVAILABLE\",...}")], [Edita los datos del slot], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlot")[Swagger]],
  tline,
)

#heading(level: 6)[Arrival & QR Check-in] <sec:arrival-qr-check-in>
#metadata((src: "README.md", line: 8768, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8770, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[41], [Registrar check-in por token QR], table.cell(align: center)[POST], [#raw("/api/v1/check-ins/qr")], [body: #raw("qrToken")], [#raw("{\"qrToken\":\"eyJhbGciOiJIUzI1NiJ9.qr.14f...\"}")], [#raw("201") #raw("{\"checkInId\":15,\"appointmentId\":142,\"queueEntryId\":9,\"position\":3,\"totalInQueue\":8,\"status\":\"WAITING\"}")], [Registra la llegada, crea el ticket y la entrada en la cola; devuelve la posición], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckIn")[Swagger]],
  table.cell(align: center)[42], [Registrar check-in por código de reserva], table.cell(align: center)[POST], [#raw("/api/v1/check-ins/code")], [body: #raw("bookingCode")], [#raw("{\"bookingCode\":\"RSV-000142\"}")], [#raw("201") #raw("{\"checkInId\":15,\"appointmentId\":142,\"queueEntryId\":9,\"position\":3,\"totalInQueue\":8,\"status\":\"WAITING\"}")], [Alternativa manual: registra la llegada con el código de reserva], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckInByCode")[Swagger]],
  table.cell(align: center)[43], [Obtener el ticket digital de un check-in], table.cell(align: center)[GET], [#raw("/api/v1/check-ins/{id}")], [path: #raw("id")], [#raw("/api/v1/check-ins/15")], [#raw("200") #raw("{\"id\":15,\"appointmentId\":142,\"bookingCode\":\"RSV-000142\",\"turnCode\":\"A-003\",\"specialtyName\":\"Medicina general\",\"status\":\"VALID\",...}")], [Devuelve el ticket digital del check-in], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getById_1")[Swagger]],
  table.cell(align: center)[44], [Obtener el ticket digital de una cita], table.cell(align: center)[GET], [#raw("/api/v1/check-ins/appointment/{appointmentId}")], [path: #raw("appointmentId")], [#raw("/api/v1/check-ins/appointment/142")], [#raw("200") #raw("{\"id\":15,\"appointmentId\":142,\"turnCode\":\"A-003\",\"status\":\"VALID\",...}")], [Devuelve el ticket digital asociado a la cita], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getByAppointment")[Swagger]],
  table.cell(align: center)[45], [Generar el token QR firmado de una cita], table.cell(align: center)[GET], [#raw("/api/v1/check-ins/appointment/{appointmentId}/qr-token")], [path: #raw("appointmentId")], [#raw("/api/v1/check-ins/appointment/142/qr-token")], [#raw("200") #raw("{\"qrToken\":\"eyJhbGciOiJIUzI1NiJ9.qr.14f...\"}")], [Genera el token QR firmado y temporal de la cita], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/generateQrToken")[Swagger]],
  table.cell(align: center)[46], [Posición del paciente en la cola por cita], table.cell(align: center)[GET], [#raw("/api/v1/check-ins/appointment/{appointmentId}/position")], [path: #raw("appointmentId")], [#raw("/api/v1/check-ins/appointment/142/position")], [#raw("200") #raw("{\"position\":3,\"totalInQueue\":8}")], [Devuelve la posición actual del paciente y el total en cola], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getPosition")[Swagger]],
  table.cell(align: center)[47], [Obtener una entrada de cola], table.cell(align: center)[GET], [#raw("/api/v1/queue-entries/{id}")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9")], [#raw("200") #raw("{\"id\":9,\"attendanceQueueId\":4,\"checkInId\":15,\"position\":3,\"status\":\"WAITING\",\"calledAt\":null,\"attendedAt\":null}")], [Devuelve la entrada de cola (el paciente puede leer la suya)], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/getById")[Swagger]],
  table.cell(align: center)[48], [Marcar una entrada como ausente], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/absent")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/absent")], [#raw("204") · #emph[sin cuerpo]], [Marca al paciente como ausente y cierra su entrada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/markAbsent")[Swagger]],
  table.cell(align: center)[49], [Salir voluntariamente de la cola], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/leave")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/leave")], [#raw("204") · #emph[sin cuerpo]], [El paciente abandona la cola; la cita se marca como ausente], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/leaveQueue")[Swagger]],
  table.cell(align: center)[50], [Iniciar la atención de una entrada llamada], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/start")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/start")], [#raw("200") #raw("{\"id\":9,\"status\":\"IN_ATTENTION\",...}")], [Cambia la entrada a #raw("IN_ATTENTION")], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/startAttention")[Swagger]],
  table.cell(align: center)[51], [Finalizar la atención de una entrada], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/finish")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/finish")], [#raw("200") #raw("{\"id\":9,\"status\":\"ATTENDED\",\"attendedAt\":\"2026-10-15T09:25:00Z\"}")], [Marca la entrada como atendida], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/finishAttention")[Swagger]],
  table.cell(align: center)[52], [Resolver la cola de un slot en una fecha], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues")], [query: #raw("timeSlotId, date") (obligatorios)], [#raw("/api/v1/attendance-queues?timeSlotId=31&date=2026-10-15")], [#raw("200") #raw("{\"id\":4,\"timeSlotId\":31,\"date\":\"2026-10-15\",\"status\":\"OPEN\"}")], [Devuelve la cola de atención del slot y fecha; error si no existe], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getQueue")[Swagger]],
  table.cell(align: center)[53], [Listar las entradas de una cola], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues/{id}/entries")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/entries")], [#raw("200") #raw("[{\"id\":9,\"position\":3,\"status\":\"WAITING\",...}]")], [Lista las entradas (pacientes) de la cola], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getEntries")[Swagger]],
  table.cell(align: center)[54], [Posición actual en la cola], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues/{id}/position")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/position")], [#raw("200") #raw("{\"position\":3,\"totalInQueue\":8}")], [Devuelve la posición y el total de la cola], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getPosition_1")[Swagger]],
  table.cell(align: center)[55], [Llamar al siguiente paciente], table.cell(align: center)[POST], [#raw("/api/v1/attendance-queues/{id}/call-next")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/call-next")], [#raw("200") #raw("{\"id\":9,\"position\":3,\"status\":\"CALLED\",\"calledAt\":\"2026-10-15T09:10:00Z\"}")], [Llama al siguiente paciente en espera y devuelve su entrada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/callNext")[Swagger]],
  tline,
)

#heading(level: 6)[Reassignment] <sec:reassignment>
#metadata((src: "README.md", line: 8788, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8790, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[56], [Listar ofertas de cupo pendientes], table.cell(align: center)[GET], [#raw("/api/v1/reassignment-offers/pending")], [header: #raw("Authorization") · query: #raw("appointmentId") (opcional)], [#raw("/api/v1/reassignment-offers/pending")], [#raw("200") #raw("[{\"id\":21,\"appointmentId\":142,\"originalAppointmentId\":130,\"freedTimeSlotId\":31,\"candidateTimeSlotId\":31,\"status\":\"PENDING\",\"offeredAt\":\"2026-10-09T09:05:00Z\",\"respondedAt\":null,\"expiresAt\":\"2026-10-09T09:15:00Z\"}]")], [Devuelve las ofertas pendientes del usuario y sus menores], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/getPendingOffers")[Swagger]],
  table.cell(align: center)[57], [Aceptar una oferta de reasignación], table.cell(align: center)[POST], [#raw("/api/v1/reassignment-offers/{id}/accept")], [path: #raw("id")], [#raw("/api/v1/reassignment-offers/21/accept")], [#raw("200") #raw("{\"id\":21,\"status\":\"ACCEPTED\",\"respondedAt\":\"2026-10-09T09:08:00Z\",...}")], [Acepta la oferta y agenda la cita en el cupo liberado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/acceptOffer")[Swagger]],
  table.cell(align: center)[58], [Rechazar una oferta de reasignación], table.cell(align: center)[POST], [#raw("/api/v1/reassignment-offers/{id}/reject")], [path: #raw("id")], [#raw("/api/v1/reassignment-offers/21/reject")], [#raw("200") #raw("{\"id\":21,\"status\":\"REJECTED\",\"respondedAt\":\"2026-10-09T09:08:00Z\",...}")], [Rechaza la oferta y libera el cupo al siguiente candidato], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/rejectOffer")[Swagger]],
  tline,
)

#heading(level: 6)[Hospital Operations & Configuration] <sec:hospital-operations-configuration>
#metadata((src: "README.md", line: 8796, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8798, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[59], [Leer la configuración del establecimiento], table.cell(align: center)[GET], [#raw("/api/v1/config")], [—], [#raw("/api/v1/config")], [#raw("200") #raw("{\"id\":1,\"maxCapacityPerSlot\":5,\"bookingOrderScope\":\"PER_SPECIALTY\",\"checkInToleranceMinutes\":15,\"postCallToleranceMinutes\":5,\"attendanceQueueVisible\":true,...}")], [Devuelve la configuración vigente del establecimiento], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getConfiguration")[Swagger]],
  table.cell(align: center)[60], [Actualizar la configuración del establecimiento], table.cell(align: center)[PUT], [#raw("/api/v1/config")], [body: #raw("maxCapacityPerSlot, checkInToleranceMinutes, postCallToleranceMinutes, reassignmentResponseTimeoutMin, bookingCutoffTime, cancellationDeadlineHours, attendanceQueueVisible")], [#raw("{\"maxCapacityPerSlot\":6,\"checkInToleranceMinutes\":15,\"postCallToleranceMinutes\":5,\"reassignmentResponseTimeoutMin\":10,\"bookingCutoffTime\":\"18:00\",\"cancellationDeadlineHours\":24,\"attendanceQueueVisible\":true}")], [#raw("200") #raw("{\"id\":1,\"maxCapacityPerSlot\":6,...,\"updatedAt\":\"2026-10-09T08:30:00\"}")], [Actualiza la configuración y devuelve el recurso actualizado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/updateConfiguration")[Swagger]],
  table.cell(align: center)[61], [Obtener el panel de métricas del día], table.cell(align: center)[GET], [#raw("/api/v1/config/dashboard")], [query: #raw("date") (opcional)], [#raw("/api/v1/config/dashboard?date=2026-10-15")], [#raw("200") #raw("{\"configurationId\":1,\"metrics\":[{\"name\":\"appointmentsToday\",\"value\":24},{\"name\":\"inQueue\",\"value\":8}],\"externalDataAvailable\":true,...}")], [Devuelve las métricas operativas del día], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getDashboard")[Swagger]],
  table.cell(align: center)[62], [Generar un reporte por rango de fechas], table.cell(align: center)[GET], [#raw("/api/v1/config/reports")], [query: #raw("from, to, format") (obligatorios; #raw("format") por defecto #raw("JSON"))], [#raw("/api/v1/config/reports?from=2026-10-01&to=2026-10-07&format=JSON")], [#raw("200") #raw("{\"format\":\"JSON\",\"generatedAt\":\"2026-10-09T12:00:00Z\",\"content\":\"{...}\"}")], [Genera el reporte del rango indicado en el formato solicitado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/generateReport")[Swagger]],
  tline,
)

#heading(level: 5)[Evidencias de interacción] <sec:evidencias-de-interaccion>
#metadata((src: "README.md", line: 8805, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8807))
A continuación se presenta una muestra del modelo de evidencia de la interacción con la documentación desplegada (Swagger UI). Para cada endpoint se incluye el JSON de envío, la captura y una descripción. Los endpoints elegidos son públicos.

#heading(level: 6)[1. #raw("POST /api/v1/identity-verifications") \-  Verificar identidad por DNI] <sec:1-post-api-v1-identity-verifications-verificar-identidad-por-dni>
#metadata((src: "README.md", line: 8809, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8811))
#strong[JSON de envío:]

#metadata((src: "README.md", line: 8812))
#raw("{ \"dni\": \"74500834\", \"name\": \"Neo Daniel\", \"lastname\": \"Ramos Mera\" }", lang: "json", block: true)

#metadata((src: "README.md", line: 8816, kind: "figure", img: "assets/Services%20Deployment/identity_verifications.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Services Deployment/identity_verifications.jpeg", alt: "Swagger UI - POST /api/v1/identity-verifications", width: 100%)]]]

#metadata((src: "README.md", line: 8820))
#emph[Figura 186. Ejecución de #raw("POST /api/v1/identity-verifications") en Swagger UI con datos de muestra; respuesta #raw("200") con #raw("{\"verified\": true}").]

#heading(level: 6)[2. #raw("POST /api/v1/identity-verifications/exists") \-  Comprobar si un DNI es conocido] <sec:2-post-api-v1-identity-verifications-exists-comprobar-si-un-dni-es-conocido>
#metadata((src: "README.md", line: 8822, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8824))
#strong[JSON de envío:]

#metadata((src: "README.md", line: 8825))
#raw("{ \"dni\": \"74500834\" }", lang: "json", block: true)

#metadata((src: "README.md", line: 8829, kind: "figure", img: "assets/Services%20Deployment/identity_verifications_exists.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Services Deployment/identity_verifications_exists.jpeg", alt: "Swagger UI - POST /api/v1/identity-verifications/exists", width: 100%)]]]

#metadata((src: "README.md", line: 8833))
#emph[Figura 187. Ejecución de #raw("POST /api/v1/identity-verifications/exists"); respuesta #raw("200") con #raw("{\"exists\": true}").]

#heading(level: 6)[3. #raw("POST /api/v1/user-accounts/send-verification-code") \-  Enviar código de verificación] <sec:3-post-api-v1-user-accounts-send-verification-code-enviar-codigo-de-verificacion>
#metadata((src: "README.md", line: 8835, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8837))
#strong[JSON de envío:]

#metadata((src: "README.md", line: 8838))
#raw("{ \"email\": \"doriangray292929@gmail.com\" }", lang: "json", block: true)

#metadata((src: "README.md", line: 8842, kind: "figure", img: "assets/Services%20Deployment/useraccounts_sendverificationcode.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Services Deployment/useraccounts_sendverificationcode.jpeg", alt: "Swagger UI - POST /api/v1/user-accounts/send-verification-code", width: 100%)]]]

#metadata((src: "README.md", line: 8846))
#emph[Figura 188. Ejecución de #raw("POST /api/v1/user-accounts/send-verification-code"); respuesta #raw("202") (sin cuerpo).]

#heading(level: 6)[4. #raw("POST /api/v1/user-accounts/recover-password") \-  Solicitar recuperación de contraseña] <sec:4-post-api-v1-user-accounts-recover-password-solicitar-recuperacion-de-contrasena>
#metadata((src: "README.md", line: 8848, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8850))
#strong[JSON de envío:]

#metadata((src: "README.md", line: 8851))
#raw("{ \"email\": \"doriangray292929@gmail.com\" }", lang: "json", block: true)

#metadata((src: "README.md", line: 8855, kind: "figure", img: "assets/Services%20Deployment/useraccounts_recoverpassword.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Services Deployment/useraccounts_recoverpassword.jpeg", alt: "Swagger UI - POST /api/v1/user-accounts/recover-password", width: 100%)]]]

#metadata((src: "README.md", line: 8859))
#emph[Figura 189. Ejecución de #raw("POST /api/v1/user-accounts/recover-password"); respuesta #raw("202") con un mensaje genérico.]

#heading(level: 4)[4.2.1.8. Software Deployment Evidence for Sprint Review] <sec:4-2-1-8-software-deployment-evidence-for-sprint-review>
#metadata((src: "README.md", line: 8861, kind: "heading", level: 4))

#metadata((src: "README.md", line: 8863))
En esta sección se presenta la evidencia de las actividades de despliegue (Deployment) realizadas durante este Sprint. El despliegue se enfocó en los Web Services de SaludYa: el backend (Spring Boot) se desplegó en una instancia AWS EC2 con Ubuntu, Java 25 (Temurin) y PostgreSQL, publicándose el servicio mediante un systemd unit y automatizando el proceso con scripts de Bash. Los productos digitales del alcance Landing Page, Web Services y aplicaciones móviles cuentan con su respectiva estrategia de despliegue; en esta entrega, la evidencia corresponde a los Web Services.

#metadata((src: "README.md", line: 8865))
Las actividades realizadas durante el Sprint fueron:

#metadata((src: "README.md", line: 8867))
- #strong[Creación de la cuenta y de los recursos en el proveedor cloud (AWS):] alta de la cuenta, creación del #emph[key pair] para el acceso SSH, lanzamiento de la instancia EC2 y configuración de la red (security group con los puertos necesarios).
- #strong[Configuración del servidor:] instalación de Java 25 (Temurin), PostgreSQL y Git, y creación del usuario y la base de datos del backend.
- #strong[Externalización de secretos:] las variables sensibles (JWT, QR, clave de cifrado de notificaciones, SMTP, ApiPeru y bootstrap) se almacenan en #raw("/etc/saludya/saludya.env"), fuera del repositorio, y systemd las carga mediante #raw("EnvironmentFile"), de modo que sobreviven a cada despliegue.
- #strong[Automatización del despliegue:] tres scripts de Bash (#raw("setup-server.sh"), #raw("setup-env.sh") y #raw("deploy.sh")) y un servicio #raw("systemd") (#raw("saludya.service")) que recompila el JAR y reinicia el backend.
- #strong[Verificación:] el backend queda disponible y se comprueba consultando el endpoint #raw("/v3/api-docs").

#heading(level: 5)[Scripts de despliegue] <sec:scripts-de-despliegue>
#metadata((src: "README.md", line: 8873, kind: "heading", level: 5))

#metadata((src: "README.md", line: 8875))
Para automatizar el aprovisionamiento y el despliegue del backend se utilizaron tres scripts de Bash.

#heading(level: 6)[#raw("setup-server.sh")] <sec:setup-server-sh>
#metadata((src: "README.md", line: 8877, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8879))
Instala el entorno base del servidor (Java 25 con Temurin, PostgreSQL y Git) y crea el rol y la base de datos del backend.

#metadata((src: "README.md", line: 8881))
#raw("#!/usr/bin/env bash
set -euo pipefail

DB_NAME=\"${DB_NAME:-saludyadb}\"
DB_USER=\"${DB_USER:-saludya}\"
DB_PASSWORD=\"${DB_PASSWORD:?Define DB_PASSWORD antes de ejecutar el script}\"
if [ \"$(id -u)\" -ne 0 ]; then
  echo \"ERROR: ejecuta con sudo ->  sudo bash setup-server.sh\" >&2
  exit 1
fi

echo \"==> [1/3] Instalando Java 25 (Temurin) ...\"
apt-get update
apt-get install -y wget apt-transport-https gpg
mkdir -p /etc/apt/keyrings
wget -qO- https://packages.adoptium.net/artifactory/api/gpg/key/public \\
  | gpg --dearmor > /etc/apt/keyrings/adoptium.gpg
. /etc/os-release
echo \"deb [signed-by=/etc/apt/keyrings/adoptium.gpg] https://packages.adoptium.net/artifactory/deb ${VERSION_CODENAME} main\" \\
> /etc/apt/sources.list.d/adoptium.list
apt-get update
apt-get install -y temurin-25-jdk

echo \"==> [2/3] Instalando PostgreSQL y git ...\"
apt-get install -y postgresql git
systemctl enable --now postgresql

echo \"==> [3/3] Creando usuario y base de datos ...\"
# Crea el rol si no existe, o actualiza su password si ya existe.
sudo -u postgres psql -v ON_ERROR_STOP=1 <<SQL
DO \\$\\$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = '${DB_USER}') THEN
      CREATE ROLE ${DB_USER} LOGIN PASSWORD '${DB_PASSWORD}';
   ELSE
      ALTER ROLE ${DB_USER} WITH LOGIN PASSWORD '${DB_PASSWORD}';
   END IF;
END
\\$\\$;
SQL

# Crea la base de datos si no existe, con el usuario como owner.
if ! sudo -u postgres psql -tAc \"SELECT 1 FROM pg_database WHERE datname='${DB_NAME}'\" | grep -q 1; then
  sudo -u postgres createdb -O \"${DB_USER}\" \"${DB_NAME}\"
fi

sudo -u postgres psql -v ON_ERROR_STOP=1 -c \"GRANT ALL PRIVILEGES ON DATABASE ${DB_NAME} TO ${DB_USER};\"
sudo -u postgres psql -v ON_ERROR_STOP=1 -d \"${DB_NAME}\" -c \"GRANT ALL ON SCHEMA public TO ${DB_USER};\"

echo
echo \"================ RESUMEN ================\"
java -version 2>&1 | head -1
sudo -u postgres psql -tAc \"SELECT version();\"
echo \"Base de datos : ${DB_NAME}\"
echo \"Usuario       : ${DB_USER}\"
echo \"Password      : [no se muestra]\"
echo \"=========================================\"
echo \"Siguiente paso ->  sudo bash setup-env.sh\"", lang: "bash", block: true)

#heading(level: 6)[#raw("setup-env.sh")] <sec:setup-env-sh>
#metadata((src: "README.md", line: 8942, kind: "heading", level: 6))

#metadata((src: "README.md", line: 8944))
Genera el archivo #raw("/etc/saludya/saludya.env") con todas las variables del backend (base de datos, secretos JWT\/QR\/cifrado, verificación de identidad, correo y bootstrap), con permisos #raw("600") para mantener los secretos protegidos.

#metadata((src: "README.md", line: 8946))
#raw("#!/usr/bin/env bash
#
# setup-env.sh - Crea /etc/saludya/saludya.env con TODAS las variables del backend.
#
#   Las variables viven FUERA del repositorio, y systemd las carga con
#   EnvironmentFile. Por eso sobreviven a cada \"git pull\" / despliegue.
#
# Uso:
#   sudo bash setup-env.sh
#
# Personaliza con variables de entorno:
#   DB_PASSWORD=<valor-seguro> BOOTSTRAP_PASSWORD=<valor-seguro> sudo -E bash setup-env.sh
#
set -euo pipefail

DB_HOST=\"${DB_HOST:-localhost}\"
DB_PORT=\"${DB_PORT:-5432}\"
DB_NAME=\"${DB_NAME:-saludyadb}\"
DB_USER=\"${DB_USER:-saludya}\"
DB_PASSWORD=\"${DB_PASSWORD:?Define DB_PASSWORD antes de ejecutar el script}\"
BOOTSTRAP_PASSWORD=\"${BOOTSTRAP_PASSWORD:?Define BOOTSTRAP_PASSWORD antes de ejecutar el script}\"
if [ \"$(id -u)\" -ne 0 ]; then
  echo \"ERROR: ejecuta con sudo ->  sudo bash setup-env.sh\" >&2
  exit 1
fi

mkdir -p /etc/saludya
cat > /etc/saludya/saludya.env <<EOF
SPRING_PROFILES_ACTIVE=prod

# --- Base de datos (PostgreSQL local) ---
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_NAME=${DB_NAME}
DB_USER=${DB_USER}
DB_PASSWORD=${DB_PASSWORD}

# --- Secretos JWT / QR / cifrado de notificaciones ---
APPLICATION_JWT_SECRET=<GENERATE_A_UNIQUE_SECRET>
APPLICATION_QR_SECRET=<GENERATE_A_UNIQUE_SECRET>
IAM_NOTIFICATIONS_ENCRYPTION_KEY=<GENERATE_A_BASE64_ENCODED_KEY>

# --- Verificacion de identidad (ApiPeru) ---
IAM_IDENTITY_MODE=apiperu
IAM_IDENTITY_URL=https://api.apiperu.dev/dni
IAM_IDENTITY_API_KEY=<IDENTITY_PROVIDER_API_KEY>

# --- Administrador inicial (bootstrap) ---
IAM_BOOTSTRAP_ENABLED=true
IAM_BOOTSTRAP_EMAIL=<BOOTSTRAP_ADMIN_EMAIL>
IAM_BOOTSTRAP_PASSWORD=${BOOTSTRAP_PASSWORD}

# --- Correo (Gmail SMTP) ---
MAIL_ENABLED=true
MAIL_USERNAME=<SMTP_USERNAME>
MAIL_FROM=<SMTP_FROM_ADDRESS>
MAIL_APP_PASSWORD=<SMTP_APP_PASSWORD>
IAM_NOTIFICATIONS_LOG_CODES=true
EOF

chmod 600 /etc/saludya/saludya.env
chown root:root /etc/saludya/saludya.env

echo \"OK -> /etc/saludya/saludya.env creado (permisos 600).\"
echo \"Editar   ->  sudo nano /etc/saludya/saludya.env\"
echo \"Aplicar  ->  sudo systemctl restart saludya\"", lang: "bash", block: true)

#heading(level: 6)[#raw("deploy.sh")] <sec:deploy-sh>
#metadata((src: "README.md", line: 9015, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9017))
Despliega o actualiza el backend en la EC2: obtiene el código (#raw("git clone") la primera vez o #raw("git pull") después), compila el JAR con Maven (#raw("./mvnw")), (re)genera el servicio #raw("systemd"), lo reinicia y verifica que el backend responda.

#metadata((src: "README.md", line: 9019))
#raw("#!/usr/bin/env bash
#
# deploy.sh - Despliega o ACTUALIZA el backend SaludYa en la EC2.
#
#   * Clona el repo la primera vez, o hace \"git pull\" en las siguientes
#   * Compila el JAR con Maven (./mvnw)
#   * (Re)genera el servicio systemd y lo reinicia
#   * Verifica que responda
#
# Uso:
#   bash deploy.sh
#
# Requisitos: haber corrido antes setup-server.sh y setup-env.sh
#
set -euo pipefail

REPO_URL=\"${REPO_URL:-https://github.com/RuwaLabs/backend-saludya.git}\"
BRANCH=\"${BRANCH:-develop}\"
APP_DIR=\"${APP_DIR:-$HOME/backend-saludya}\"
ENV_FILE=\"${ENV_FILE:-/etc/saludya/saludya.env}\"
SERVICE=\"saludya\"
JAR=\"$APP_DIR/saludya/target/saludya-0.0.1-SNAPSHOT.jar\"

if [ ! -f \"$ENV_FILE\" ]; then
  echo \"ERROR: falta $ENV_FILE. Corre primero ->  sudo bash setup-env.sh\" >&2
  exit 1
fi

echo \"==> [1/4] Obteniendo codigo ...\"
if [ -d \"$APP_DIR/.git\" ]; then
  git -C \"$APP_DIR\" fetch origin \"$BRANCH\"
  git -C \"$APP_DIR\" reset --hard \"origin/$BRANCH\"
else
  git clone --branch \"$BRANCH\" \"$REPO_URL\" \"$APP_DIR\"
fi

echo \"==> [2/4] Compilando (Maven) ...\"
cd \"$APP_DIR/saludya\"
./mvnw -q clean package -DskipTests

echo \"==> [3/4] Configurando servicio systemd ...\"
sudo tee /etc/systemd/system/saludya.service >/dev/null <<EOF
[Unit]
Description=SaludYa backend
After=network.target postgresql.service

[Service]
User=$USER
WorkingDirectory=$APP_DIR
EnvironmentFile=$ENV_FILE
ExecStart=/usr/bin/java -Xmx384m -XX:+UseSerialGC -jar $JAR
SuccessExitStatus=143
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable \"$SERVICE\" >/dev/null 2>&1 || true
sudo systemctl restart \"$SERVICE\"

echo \"==> [4/4] Verificando ...\"
for _ in $(seq 1 60); do
  code=\"$(curl -s -o /dev/null -w '%{http_code}' http://localhost:8080/v3/api-docs || true)\"
  if [ \"$code\" = \"200\" ]; then
    echo \"OK: backend arriba -> http://localhost:8080/v3/api-docs (200)\"
    break
  fi
  sleep 2
done

sudo systemctl status \"$SERVICE\" --no-pager | head -15
echo
echo \"Logs en vivo ->  journalctl -u $SERVICE -f\"", lang: "bash", block: true)

#heading(level: 5)[Evidencias de despliegue] <sec:evidencias-de-despliegue>
#metadata((src: "README.md", line: 9098, kind: "heading", level: 5))

#metadata((src: "README.md", line: 9100))
A continuación se presentan las capturas del proceso de despliegue en AWS.

#heading(level: 6)[Creación del key pair (acceso SSH)] <sec:creacion-del-key-pair-acceso-ssh>
#metadata((src: "README.md", line: 9102, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9104, kind: "figure", img: "assets/Backend%20Deployment%20Evidence/key%20pari%20(login).jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Backend Deployment Evidence/key pari (login).jpeg", alt: "Creación del key pair en AWS", width: 100%)]]]

#metadata((src: "README.md", line: 9108))
#emph[Figura 190. Creación del key pair en AWS, necesario para acceder por SSH a la instancia.]

#heading(level: 6)[Instancia EC2 (resumen)] <sec:instancia-ec2-resumen>
#metadata((src: "README.md", line: 9110, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9112, kind: "figure", img: "assets/Backend%20Deployment%20Evidence/instance%20summary.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Backend Deployment Evidence/instance summary.jpeg", alt: "Resumen de la instancia EC2", width: 100%)]]]

#metadata((src: "README.md", line: 9116))
#emph[Figura 191. Resumen de la instancia EC2 donde se desplegó el backend (Web Services).]

#heading(level: 6)[Configuración de red (security group)] <sec:configuracion-de-red-security-group>
#metadata((src: "README.md", line: 9118, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9120, kind: "figure", img: "assets/Backend%20Deployment%20Evidence/network%20settings.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Backend Deployment Evidence/network settings.jpeg", alt: "Configuración de red de la instancia", width: 100%)]]]

#metadata((src: "README.md", line: 9124))
#emph[Figura 192. Configuración de red de la instancia, con los puertos habilitados para el acceso al backend.]

#heading(level: 6)[Acceso SSH a la instancia] <sec:acceso-ssh-a-la-instancia>
#metadata((src: "README.md", line: 9126, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9128, kind: "figure", img: "assets/Backend%20Deployment%20Evidence/ssh%20terminal%20login.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Backend Deployment Evidence/ssh terminal login.jpeg", alt: "Acceso SSH a la instancia EC2", width: 100%)]]]

#metadata((src: "README.md", line: 9132))
#emph[Figura 193. Acceso por SSH a la instancia EC2 del backend.]

#heading(level: 6)[Scripts de despliegue en el servidor] <sec:scripts-de-despliegue-en-el-servidor>
#metadata((src: "README.md", line: 9134, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9136, kind: "figure", img: "assets/Backend%20Deployment%20Evidence/ls%20to%20see%20server-setup%20server-env%20and%20delploy%20sh%20files.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Backend Deployment Evidence/ls to see server-setup server-env and delploy sh files.jpeg", alt: "Listado de los scripts de despliegue en el servidor", width: 100%)]]]

#metadata((src: "README.md", line: 9140))
#emph[Figura 194. Listado del directorio del servidor donde se observan los scripts de despliegue (#raw("setup-server.sh"), #raw("setup-env.sh") y #raw("deploy.sh")).]

#heading(level: 5)[Landing Page] <sec:landing-page-9>
#metadata((src: "README.md", line: 9143, kind: "heading", level: 5))

#metadata((src: "README.md", line: 9145))
El Landing Page de SaludYa se desplegó como un sitio estático utilizando #strong[GitHub Pages], aprovechando la integración nativa con el repositorio del proyecto y la ausencia de costos asociados para proyectos académicos. El despliegue se realizó sobre la rama #raw("main") del repositorio #link("https://github.com/RuwaLabs/saludya-landing")[#raw("RuwaLabs/saludya-landing")], y el sitio quedó publicado de forma automática en la URL:

#metadata((src: "README.md", line: 9147))
#strong[URL de despliegue:] #link("https://ruwalabs.github.io/saludya-landing/")[https:\/\/ruwalabs.github.io\/saludya-landing\/]

#metadata((src: "README.md", line: 9149))
Las actividades realizadas durante el Sprint para el despliegue del Landing Page fueron:

#metadata((src: "README.md", line: 9151))
- #strong[Creación del repositorio en GitHub:] se creó el repositorio #raw("saludya-landing") dentro de la organización RuwaLabs, con la estructura de carpetas #raw("assets/css"), #raw("assets/js"), #raw("assets/img"), #raw("assets/locales") y el archivo #raw("index.html") en la raíz.
- #strong[Configuración de GitHub Pages:] se habilitó la publicación del sitio desde la rama #raw("main") y la carpeta #raw("/ (root)") del repositorio.
- #strong[Automatización del despliegue:] se incorporó un flujo de trabajo de GitHub Actions (#raw(".github/workflows/deploy.yml")) que publica automáticamente el sitio cada vez que se hace #raw("push") a la rama #raw("main").
- #strong[Verificación del despliegue:] se comprobó el acceso público al sitio mediante la URL generada por GitHub Pages y se validó la carga de estilos, scripts e imágenes.

#metadata((src: "README.md", line: 9156))
A continuación se presentan las capturas de las actividades realizadas.

#heading(level: 6)[Configuración de GitHub Pages] <sec:configuracion-de-github-pages>
#metadata((src: "README.md", line: 9158, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9160))
En la configuración del repositorio se habilitó GitHub Pages como fuente de publicación, seleccionando la rama #raw("main") y la carpeta #raw("/ (root)"). La plataforma genera automáticamente la URL pública del sitio a partir del nombre de la organización y del repositorio.

#metadata((src: "README.md", line: 9164, kind: "figure", img: "assets/Landing-page%20Deployment%20Evidence/landing-github-pages-settings.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Landing-page Deployment Evidence/landing-github-pages-settings.png", alt: "Configuración de GitHub Pages en el repositorio del Landing Page", width: 100%)]]]

#metadata((src: "README.md", line: 9168))
#emph[Figura 195. Configuración de GitHub Pages en el repositorio del Landing Page. Nota. Captura de la sección Settings → Pages del repositorio #raw("saludya-landing") en GitHub.]

#heading(level: 6)[Flujo de trabajo de GitHub Actions] <sec:flujo-de-trabajo-de-github-actions>
#metadata((src: "README.md", line: 9170, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9172))
Para automatizar la publicación del Landing Page, se incorporó un workflow de GitHub Actions (#raw(".github/workflows/deploy.yml")) que se ejecuta en cada #raw("push") a la rama #raw("main"). El workflow instala las dependencias necesarias, prepara el sitio estático y lo publica en GitHub Pages.

#metadata((src: "README.md", line: 9176, kind: "figure", img: "assets/Landing-page%20Deployment%20Evidence/landing-github-actions.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Landing-page Deployment Evidence/landing-github-actions.png", alt: "Ejecución exitosa del workflow de despliegue", width: 100%)]]]

#metadata((src: "README.md", line: 9180))
#emph[Figura 196. Ejecución exitosa del workflow de despliegue. Nota. Captura de la pestaña Actions del repositorio #raw("saludya-landing"), donde se observa la ejecución exitosa del workflow #raw("Deploy to GitHub Pages").]

#heading(level: 6)[Verificación del despliegue] <sec:verificacion-del-despliegue>
#metadata((src: "README.md", line: 9182, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9184))
Finalmente, se verificó el acceso público al Landing Page mediante la URL generada por GitHub Pages, comprobando la correcta carga de la página principal, los estilos, los scripts de internacionalización y las imágenes del Hero.

#metadata((src: "README.md", line: 9188, kind: "figure", img: "assets/Landing-page%20Deployment%20Evidence/landing-deployed.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Landing-page Deployment Evidence/landing-deployed.png", alt: "Landing Page de SaludYa publicado en GitHub Pages", width: 100%)]]]

#metadata((src: "README.md", line: 9192))
#emph[Figura 197. Landing Page de SaludYa publicado en GitHub Pages. Nota. Captura del Landing Page accesible en #raw("https://ruwalabs.github.io/saludya-landing/").]

#metadata((src: "README.md", line: 9194))
Con estas actividades, el Landing Page quedó publicado, disponible para su consulta pública y con despliegue automatizado ante cada cambio en la rama #raw("main"), cumpliendo con el objetivo del Sprint 1 de presentar la propuesta de valor de SaludYa.

#heading(level: 4)[4.2.1.9. Team Collaboration Insights during Sprint] <sec:4-2-1-9-team-collaboration-insights-during-sprint>
#metadata((src: "README.md", line: 9197, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9199))
Durante el Sprint 1, el equipo #strong[RuwaLabs] implementó el #strong[Landing Page], los #strong[Web Services] (backend) y la #strong[aplicación móvil para pacientes] (frontend). Todos los integrantes participaron en la implementación de los productos del alcance, distribuidos por producto y por bounded context, según lo definido en la matriz LACX del apartado 4.2.1.2.

#metadata((src: "README.md", line: 9201))
La colaboración se registra en GitHub a través de los commits y #emph[pull requests] de cada repositorio. El analítico de actividad del periodo del Sprint evidencia la participación de los cinco integrantes —con #strong[11 pull requests] integrados y #strong[50 commits] en #raw("develop") realizados por #strong[5 autores]—, como se observa en la #link("#figura-198")[Figura 198] y la #link("#figura-199")[Figura 199].

#metadata((src: "README.md", line: 9202))
#pagebreak()

#metadata((src: "README.md", line: 9207))
#strong[Figura 198]

#metadata((src: "README.md", line: 9209))
#emph[Actividad del equipo durante el Sprint 1]

#metadata((src: "README.md", line: 9211, kind: "figure", img: "assets/insight_tb1_overview.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_tb1_overview.png", alt: "Actividad del equipo durante el Sprint 1 de SaludYa", width: 75%)]]

#metadata((src: "README.md", line: 9215))
#emph[Nota. Captura del panel Overview de GitHub correspondiente al periodo del Sprint 1.]

#metadata((src: "README.md", line: 9219))
#strong[Figura 199]

#metadata((src: "README.md", line: 9221))
#emph[Contribuciones por integrante durante el Sprint 1]

#metadata((src: "README.md", line: 9223, kind: "figure", img: "assets/insight_tb1_contributors.png"))
#align(left)[#block(breakable: false)[#fit-image("/assets/insight_tb1_contributors.png", alt: "Contribuciones por integrante durante el Sprint 1 de SaludYa", width: 50%)]]

#metadata((src: "README.md", line: 9227))
#emph[Nota. Captura del panel Contributors de GitHub correspondiente al periodo del Sprint 1.]

#metadata((src: "README.md", line: 9229))
La implementación se distribuyó de la siguiente manera:

#metadata((src: "README.md", line: 9231))
- #strong[Web Services (backend):] Didier (Identity & Access Management), Paula (Appointments & Booking), Neo (Dynamic Waitlist & Reassignment) y Alise (Arrival & QR Check-in), con Rodrigo a cargo de Hospital Operations & Configuration.
- #strong[Mobile Applications (frontend):] Didier (IAM), Paula (reservas), Alise (check-in), Rodrigo (configuración) y Neo (dashboard y notificaciones\/reasignación).
- #strong[Landing Page:] Rodrigo.

#metadata((src: "README.md", line: 9235))
La interpretación de los analíticos muestra que la actividad del Sprint se concentró en la integración de los bounded contexts y en la construcción de los recorridos del paciente, con una participación equilibrada de los cinco integrantes del equipo.

#heading(level: 3)[4.2.2. Sprint 2] <sec:4-2-2-sprint-2>
#metadata((src: "README.md", line: 9237, kind: "heading", level: 3))

#heading(level: 4)[4.2.2.1. Sprint Planning 2] <sec:4-2-2-1-sprint-planning-2>
#metadata((src: "README.md", line: 9239, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9241))
A continuación se presentan los aspectos principales de la reunión de planificación del Sprint 2 de #strong[SaludYa], organizada por Paula Montoya el #strong[25 de octubre de 2026] mediante #strong[Discord]. En esta reunión el equipo #strong[RuwaLabs] definió el Sprint Goal, el alcance de user stories enfocado en el personal administrativo y la capacidad de trabajo del segundo sprint, como se detalla en la #link("#tabla-79")[Tabla 79].

#metadata((src: "README.md", line: 9245))
#strong[Tabla 79]

#metadata((src: "README.md", line: 9247))
#emph[Sprint Planning 2 — resumen de la reunión]

#metadata((src: "README.md", line: 9249, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Valor]),
  tline,
  [Sprint \#], [Sprint 2],
  [#strong[Sprint Planning Background]], [],
  [Date], [2026-10-25],
  [Time], [17:00],
  [Location], [Reunión virtual mediante Discord],
  [Prepared By], [Montoya Nina, Paula Fernanda],
  [Attendees (to planning meeting)], [Aguilar Untiveros, Rodrigo Fabrizio \/ Meza Solórzano, Didier Sebastian \/ Montoya Nina, Paula Fernanda \/ Ramos Mera, Neo Daniel \/ Torres Juárez, Alisee Muriel],
  [Sprint 1 Review Summary], [El primer sprint se enfocó en la aplicación para pacientes, los servicios web y el Landing Page; el informe presenta evidencias de desarrollo, pruebas, ejecución y despliegue de estos productos. El segundo sprint extiende la solución al flujo administrativo.],
  [Sprint 1 Retrospective Summary], [La organización por módulos y responsables del primer sprint se retoma para el segundo. Se prioriza la integración de la navegación y los flujos administrativos para mantener una experiencia coherente entre las funcionalidades.],
  [#strong[Sprint Goal & User Stories]], [],
  [Sprint 2 Goal], [Facilitar al personal de admisión y al Super Admin la operación diaria del establecimiento —acceso, agenda, llegada y cola, reglas e indicadores— desde la aplicación móvil administrativa; validar los flujos comprometidos al cierre del 18\/11\/2026.],
  [Sprint 2 Velocity], [84 story points],
  [Sum of Story Points], [84],
  tline,
)

#metadata((src: "README.md", line: 9265))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.]

#metadata((src: "README.md", line: 9267))
El #strong[Sprint Goal] se formula desde el resultado para los usuarios, su impacto y una condición de comprobación, siguiendo el enfoque del Statement:

#metadata((src: "README.md", line: 9269))
#quote(block: true)[
  #metadata((src: "README.md", line: 9269))
  #strong[Sprint 2 Goal:] #emph[Nuestro #strong[focus] está en permitir que el personal de admisión y el Super Admin gestionen la jornada de atención desde la aplicación móvil de SaludYa, con acceso según rol, calendario operativo, registro de llegada, cola presencial, reglas e indicadores.]
  
  #metadata((src: "README.md", line: 9271))
  #emph[Creemos que esto #strong[delivers] una operación más ordenada y visible para el establecimiento y una atención presencial más ágil para los pacientes.]
  
  #metadata((src: "README.md", line: 9273))
  #emph[Esto se confirmará (#strong[confirmed]) cuando el personal pueda iniciar sesión, consultar y editar bloques del calendario, registrar llegadas por QR o código, gestionar el llamado y la atención en cola, consultar indicadores y exportar un reporte; y el Super Admin pueda acceder y configurar reglas operativas, con los flujos demostrados en la aplicación y contrastados con los criterios de aceptación de las 24 historias comprometidas.]
]

#metadata((src: "README.md", line: 9275))
La #strong[velocity] del Sprint 2 se estableció en #strong[84 story points], equivalente a la suma de las 24 historias incluidas en este sprint. El alcance se distribuye por responsable como se detalla en la #link("#tabla-80")[Tabla 80].

#metadata((src: "README.md", line: 9279))
#strong[Tabla 80]

#metadata((src: "README.md", line: 9281))
#emph[Alcance del Sprint 2 por módulo]

#metadata((src: "README.md", line: 9283, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, right),
  table.header([Módulo], [Responsable], [User Stories], table.cell(align: right)[Story Points]),
  tline,
  [Calendario], [Montoya Nina, Paula Fernanda], [US-36, US-37, US-38, US-39, US-40, US-42], table.cell(align: right)[18],
  [Cita y atención presencial], [Torres Juárez, Alisee Muriel], [US-43, US-44, US-45, US-46, US-47, US-48, US-49], table.cell(align: right)[30],
  [Configuración], [Aguilar Untiveros, Rodrigo Fabrizio], [US-33, US-34, US-35], table.cell(align: right)[10],
  [Inicio e indicadores], [Meza Solórzano, Didier Sebastian], [US-41, US-50, US-51, US-52, US-53], table.cell(align: right)[17],
  [Login e integración], [Ramos Mera, Neo Daniel], [US-30, US-31, US-32], table.cell(align: right)[9],
  [#strong[Total]], [#strong[5 integrantes]], [#strong[24 user stories]], table.cell(align: right)[#strong[84]],
  tline,
)

#heading(level: 4)[4.2.2.2. Aspect Leaders and Collaborators] <sec:4-2-2-2-aspect-leaders-and-collaborators>
#metadata((src: "README.md", line: 9292, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9294))
En el Sprint 2 el equipo organizó el trabajo en función de los módulos funcionales de la aplicación móvil administrativa: #strong[Acceso y cuentas (IAM)], #strong[Inicio e indicadores], #strong[Agenda operativa], #strong[Cita y atención presencial], #strong[Configuración operativa] e #strong[Integración de la aplicación]. La siguiente matriz LACX (Leadership-and-Collaboration Matrix) indica, para cada aspecto, quién asume el rol de #strong[líder (L)] y quién de #strong[colaborador (C)], como se detalla en la #link("#tabla-81")[Tabla 81]. Esta organización guarda relación con la posterior asignación de tasks en el Sprint Backlog 2.

#metadata((src: "README.md", line: 9295))
#pagebreak()

#metadata((src: "README.md", line: 9300))
#strong[Tabla 81]

#metadata((src: "README.md", line: 9302))
#emph[Leadership-and-Collaboration Matrix (LACX) — Sprint 2]

#metadata((src: "README.md", line: 9304, kind: "table"))
#table(
  columns: 8,
  align: (left, left, center, center, center, center, center, center),
  table.header([Team Member (Last Name, First Name)], [GitHub Username], table.cell(align: center)[Acceso y cuentas (IAM)], table.cell(align: center)[Inicio e indicadores], table.cell(align: center)[Agenda operativa], table.cell(align: center)[Cita y atención presencial], table.cell(align: center)[Configuración operativa], table.cell(align: center)[Integración de la aplicación]),
  tline,
  [Aguilar Untiveros, Rodrigo Fabrizio], [Rodri2712], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C],
  [Meza Solórzano, Didier Sebastian], [DidierSebas], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C],
  [Montoya Nina, Paula Fernanda], [SeviNyO], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C],
  [Ramos Mera, Neo Daniel], [norahccccc], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L],
  [Torres Juárez, Alisee Muriel], [lLisee1], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[C], table.cell(align: center)[L], table.cell(align: center)[C], table.cell(align: center)[C],
  tline,
)

#metadata((src: "README.md", line: 9312))
#emph[Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa. L = Leader, C = Collaborator.]

#heading(level: 4)[4.2.2.3. Sprint Backlog 2] <sec:4-2-2-3-sprint-backlog-2>
#metadata((src: "README.md", line: 9314, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9316))
El Sprint 2 tiene como objetivo habilitar la gestión diaria de la atención para el personal administrativo desde la aplicación móvil Flutter\/Dart. Para su gestión, el equipo utiliza #strong[Jira] como herramienta de control; el tablero del proyecto se puede revisar en el siguiente enlace y en la #link("#figura-200")[Figura 200].

#metadata((src: "README.md", line: 9318))
- Link Jira: #link("https://ruwalabs-salud-ya.atlassian.net/")[https:\/\/ruwalabs-salud-ya.atlassian.net\/]

#metadata((src: "README.md", line: 9319))
#pagebreak()

#metadata((src: "README.md", line: 9324))
#strong[Figura 200]

#metadata((src: "README.md", line: 9326))
#emph[Tablero de Jira del Sprint 2]

#metadata((src: "README.md", line: 9328, kind: "figure", img: "chapter-04/assets/sprint-2/jira-board-sprint-2.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/jira-board-sprint-2.png", alt: "Tablero de Jira del Sprint 2", width: 100%)]

#metadata((src: "README.md", line: 9330))
#emph[Nota. Captura del tablero SCRUM del Sprint 2 en Jira, con las 24 user stories del sprint y sus responsables.]

#metadata((src: "README.md", line: 9332))
A partir de las user stories comprometidas, el equipo descompuso el trabajo en las siguientes tasks (work-items), con su estimación en horas, responsable y estado, como se detalla en la #link("#tabla-82")[Tabla 82].

#metadata((src: "README.md", line: 9336))
#strong[Tabla 82]

#metadata((src: "README.md", line: 9338))
#emph[Sprint Backlog 2]

#metadata((src: "README.md", line: 9340, kind: "table"))
#table(
  columns: 9,
  align: (left, left, left, left, left, left, right, left, left),
  table.header([Sprint \#], [User Story Id], [User Story Title], [Work-Item \/ Task Id], [Work-Item \/ Task Title], [Description], table.cell(align: right)[Estimation (Hours)], [Assigned To], [Status]),
  tline,
  [Sprint 2], [SCRUM-41 · US-30], [Inicio de Sesión del Super Admin], [S2-T01], [Acceso Super Admin], [Construir formulario y control de sesión por rol.], table.cell(align: right)[6], [Neo], [To-do],
  [Sprint 2], [SCRUM-42 · US-31], [Creación de Cuenta de Personal de Admisión], [S2-T02], [Alta de personal], [Construir formulario de creación y validaciones de cuenta.], table.cell(align: right)[6], [Neo], [To-do],
  [Sprint 2], [SCRUM-43 · US-32], [Inicio de Sesión del Personal de Admisión], [S2-T03], [Acceso de admisión], [Implementar inicio de sesión y navegación al módulo administrativo.], table.cell(align: right)[6], [Neo], [To-do],
  [Sprint 2], [SCRUM-44 · US-33], [Configuración de la Duración de los Intervalos], [S2-T04], [Duración de intervalos], [Crear controles y validación de intervalos de atención.], table.cell(align: right)[6], [Rodrigo], [To-do],
  [Sprint 2], [SCRUM-45 · US-34], [Edición de una Regla Operativa del Establecimiento], [S2-T05], [Editar regla operativa], [Crear formulario de edición y confirmación de cambios.], table.cell(align: right)[10], [Rodrigo], [To-do],
  [Sprint 2], [SCRUM-46 · US-35], [Consulta de Reglas Operativas Vigentes], [S2-T06], [Consultar reglas vigentes], [Mostrar reglas y estados de la configuración.], table.cell(align: right)[4], [Rodrigo], [To-do],
  [Sprint 2], [SCRUM-47 · US-36], [Selección de Especialidad en la Agenda Operativa], [S2-T07], [Selector de especialidad], [Permitir elegir especialidad y filtrar la agenda .], table.cell(align: right)[4], [Paula], [To-do],
  [Sprint 2], [SCRUM-48 · US-37], [Consulta del Calendario Operativo], [S2-T08], [Calendario mensual], [Mostrar fecas con bloques y estado sin bloques.], table.cell(align: right)[6], [Paula], [To-do],
  [Sprint 2], [SCRUM-49 · US-38], [Consulta de Bloques del Día], [S2-T09], [Bloques por día], [Mostrar bloques correspondientes a la fecha seleccionada.], table.cell(align: right)[6], [Paula], [To-do],
  [Sprint 2], [SCRUM-50 · US-39], [Consulta del Detalle de un Bloque], [S2-T10], [Detalle de bloque], [Mostrar horario, profesional y disponibilidad del bloque.], table.cell(align: right)[4], [Paula], [To-do],
  [Sprint 2], [SCRUM-51 · US-40], [Consulta de Horario por Profesional], [S2-T11], [Horario profesional], [Filtrar y consultar horarios por profesional.], table.cell(align: right)[6], [Paula], [To-do],
  [Sprint 2], [SCRUM-52 · US-41], [Consulta de Pacientes con Reserva en un Bloque], [S2-T12], [Reservas de bloque], [Mostrar pacientes con reserva en un bloque.], table.cell(align: right)[4], [Didier], [To-do],
  [Sprint 2], [SCRUM-53 · US-42], [Edición de un Bloque Horario], [S2-T13], [Editar bloque], [Editar horario y validar cambios de un bloque.], table.cell(align: right)[10], [Paula], [To-do],
  [Sprint 2], [SCRUM-54 · US-43], [Registro de Llegada por Escaneo de QR], [S2-T14], [Escanear llegada], [Integrar cámara y lectura de QR para registrar la llegada.], table.cell(align: right)[16], [Alisee], [To-do],
  [Sprint 2], [SCRUM-55 · US-44], [Registro de Llegada por Código Manual], [S2-T15], [Código manual], [Capturar y validar el código de reserva alternativo.], table.cell(align: right)[6], [Alisee], [To-do],
  [Sprint 2], [SCRUM-56 · US-45], [Consulta de la Cola de Atención Presencial], [S2-T16], [Cola presencial], [Mostrar pacientes y estados de la cola.], table.cell(align: right)[6], [Alisee], [To-do],
  [Sprint 2], [SCRUM-57 · US-46], [Llamado del Siguiente Paciente], [S2-T17], [Llamar siguiente], [Agregar acción de llamado y actualizar el estado en cola.], table.cell(align: right)[10], [Alisee], [To-do],
  [Sprint 2], [SCRUM-58 · US-47], [Inicio de Atención de un Paciente Llamado], [S2-T18], [Iniciar atención], [Registrar inicio de atención de paciente llamado.], table.cell(align: right)[6], [Alisee], [To-do],
  [Sprint 2], [SCRUM-59 · US-48], [Finalización de la Atención de un Paciente], [S2-T19], [Finalizar atención], [Registrar cierre de la atención y actualizar la cola.], table.cell(align: right)[6], [Alisee], [To-do],
  [Sprint 2], [SCRUM-60 · US-49], [Registro de Ausencia de un Paciente], [S2-T20], [Registrar ausencia], [Marcar ausencia y reflejarla en la cola.], table.cell(align: right)[10], [Alisee], [To-do],
  [Sprint 2], [SCRUM-61 · US-50], [Consulta de Citas Canceladas del Día], [S2-T21], [Cancelaciones del día], [Mostrar lista de citas canceladas para la jornada.], table.cell(align: right)[4], [Didier], [To-do],
  [Sprint 2], [SCRUM-62 · US-51], [Visualización de Indicadores del Día], [S2-T22], [Indicadores diarios], [Mostrar métricas operativas del día.], table.cell(align: right)[10], [Didier], [To-do],
  [Sprint 2], [SCRUM-63 · US-52], [Visualización de Demanda por Especialidad], [S2-T23], [Demanda por especialidad], [Mostrar demanda desagregada por especialidad.], table.cell(align: right)[6], [Didier], [To-do],
  [Sprint 2], [SCRUM-64 · US-53], [Exportación de Reporte Operativo], [S2-T24], [Exportar reporte], [Seleccionar filtros y exportar el reporte operativo.], table.cell(align: right)[10], [Didier], [To-do],
  tline,
)

#metadata((src: "README.md", line: 9367))
\*Nota. Elaboración del equipo RuwaLabs para el proyecto SaludYa.

#heading(level: 4)[4.2.2.4. Development Evidence for Sprint Review] <sec:4-2-2-4-development-evidence-for-sprint-review>
#metadata((src: "README.md", line: 9369, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9371))
El desarrollo del Sprint 2 se concentró en la aplicación Flutter\/Dart para el personal de admisión y el Super Admin. Los avances se distribuyeron en ramas por módulo.

#metadata((src: "README.md", line: 9373))
- #strong[Acceso administrativo (#raw("login")).] Inicio de sesión con verificación por correo, recuperación de acceso y validación del rol de admisión o Super Admin (US-30 y US-32).
- #strong[Inicio del personal (#raw("home")).] Resumen de reservas y cancelaciones del día, listado de pacientes por bloque y estado de llegada o atención (US-41 y US-50). El módulo utiliza la sesión del personal para consultar el backend y reutiliza los accesos de registro de llegada y cola.
- #strong[Agenda operativa (#raw("schedule")).] Selección de especialidad y profesional, calendario, bloques del día, detalle y edición de bloque (US-36 a US-40 y US-42).
- #strong[Llegada y cola presencial (#raw("qr")).] Registro por escaneo o código manual, consulta de cola y acciones para llamar, iniciar, finalizar o marcar una ausencia (US-43 a US-49).
- #strong[Reglas operativas (#raw("settings")).] Consulta y edición de configuración, capacidad, intervalos y otras reglas del establecimiento (US-33 a US-35).

#metadata((src: "README.md", line: 9379))
En paralelo, la aplicación del paciente en Kotlin avanzó en #raw("patient-configuration"): se definió la API del perfil, se inyectó el cliente con Hilt y se conectó la pantalla de configuración a la cuenta autenticada. Se registra como avance complementario, fuera del alcance principal de Flutter; estos commits todavía no están en #raw("develop") de Kotlin.

#metadata((src: "README.md", line: 9381))
En las ramas revisadas no se identificó evidencia suficiente para dar por completadas la creación de cuentas de admisión (US-31), la vista completa de indicadores (US-51), la demanda por especialidad (US-52) ni la exportación de reportes (US-53). El resumen de Inicio sí presenta conteos de reservas y cancelaciones de la jornada.

#metadata((src: "README.md", line: 9383))
La #link("#tabla-83")[Tabla 83] reúne los commits que respaldan estos avances, con el mensaje original y la rama que los contiene.

#metadata((src: "README.md", line: 9387))
#strong[Tabla 83]

#metadata((src: "README.md", line: 9389))
#emph[Commits de implementación de SaludYa para la revisión del Sprint 2]

#metadata((src: "README.md", line: 9391, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Repository], [Branch], [Commit Id], [Commit Message], [Committed On]),
  tline,
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("develop")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/5a7044a52569acb5298b85571e3e33819210f1b1")[5a7044a52569acb5298b85571e3e33819210f1b1]], [feat: Inicicializando proyecto con Flutter], [30\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("login")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/05b445712c8231e600abe7e3f17d8b123228033f")[05b445712c8231e600abe7e3f17d8b123228033f]], [feat(auth): implement staff login and password recovery], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("login")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/13e53e875a6ec09612b86a5cc48441b54ce9504a")[13e53e875a6ec09612b86a5cc48441b54ce9504a]], [fix(auth): point Flutter API to deployed backend], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/f54100022b0e10daa85c8e313a964334ae0c1ac3")[f54100022b0e10daa85c8e313a964334ae0c1ac3]], [feat(home): load staff dashboard and reservation data from backend], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/fbcac20dc85553635abe22daeee121b1ee5b5734")[fbcac20dc85553635abe22daeee121b1ee5b5734]], [feat(home): add staff overview and reservation detail screens], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/10adb156d630baec97a1f8d34724bec3b963843b")[10adb156d630baec97a1f8d34724bec3b963843b]], [feat(home): open staff dashboard after authentication], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/783650498032adb4f5029d4d72eb4c8bf93bdd1c")[783650498032adb4f5029d4d72eb4c8bf93bdd1c]], [feat(home): connect arrival and queue shortcuts to existing QR module], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/893db0f707d0f8cca3b0b47f8dc06fe0265c7b8f")[893db0f707d0f8cca3b0b47f8dc06fe0265c7b8f]], [fix(home): resolve staff identity and handle queue lifecycle states], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/820f2f2d50af9d8423578b9d1329a0e87be76932")[820f2f2d50af9d8423578b9d1329a0e87be76932]], [chore(home): lock scanner dependency and align analyzer style], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/cc152859ef4388321027f6d9d7822022436e2115")[cc152859ef4388321027f6d9d7822022436e2115]], [Domain, Application terminados], [30\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/d689c208bc2a7b65bf06bc3da044a72c75cfa6cc")[d689c208bc2a7b65bf06bc3da044a72c75cfa6cc]], [Pantallas avanzadas], [01\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("qr")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/72862e156c8589518277be06b11a183b8a6ad409")[72862e156c8589518277be06b11a183b8a6ad409]], [feat(qr): implement arrival check-in and attendance qr], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/cc0e20c1199b59d4e721ccb8a8354cc48a931765")[cc0e20c1199b59d4e721ccb8a8354cc48a931765]], [feat(settings): implement configuration API integration], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/b5966b61d604d1606282b050eadfb9f4b1d78039")[b5966b61d604d1606282b050eadfb9f4b1d78039]], [feat(settings): implement general settings screen], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/0cad45c182e13a2eef8e1dada66024ff8f6a6761")[0cad45c182e13a2eef8e1dada66024ff8f6a6761]], [feat(settings): implement additional rules screen], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/83ca3e19eee6ba8262790f8137f9e8c37b912279")[83ca3e19eee6ba8262790f8137f9e8c37b912279]], [feat(settings): implement capacity editing screen], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/27ac50911e64ca26178edb96ca321a5de6235cb9")[27ac50911e64ca26178edb96ca321a5de6235cb9]], [feat(settings): implement attention intervals screen], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("settings")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/0ce4c7d61eb05b4266638800eb859f61f1443c1d")[0ce4c7d61eb05b4266638800eb859f61f1443c1d]], [fix(settings): improve capacity validation feedback], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/3d3448871ed1d9ae9e7c201234584b2896b4e2fb")[3d3448871ed1d9ae9e7c201234584b2896b4e2fb]], [chore: configure backend API connection], [11\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/3cb21d274752fd1924b4aae68f14c02e29626b67")[3cb21d274752fd1924b4aae68f14c02e29626b67]], [feat: define patient profile API endpoints], [11\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/749a7261c054377af82df9cedc7fa58cc94b2925")[749a7261c054377af82df9cedc7fa58cc94b2925]], [feat: provide PatientApi through Hilt], [11\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/4079dc2f376ec5b613fbd0d4e800acb2e9a33afc")[4079dc2f376ec5b613fbd0d4e800acb2e9a33afc]], [feat: implement authenticated patient profile repository], [11\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/77961665061a9accb0b1884a46a6ab09951535a9")[77961665061a9accb0b1884a46a6ab09951535a9]], [feat: display authenticated patient profile in configuration], [11\/11\/2026],
  [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya")[RuwaLabs\/frontend-kotlin-saludya]], [#raw("patient-configuration")], [#link("https://github.com/RuwaLabs/frontend-kotlin-saludya/commit/b93f2b93af9f51406cdcebbb935cd9b7fa4bc7ac")[b93f2b93af9f51406cdcebbb935cd9b7fa4bc7ac]], [fix: handle coroutine cancellation in patient profile viewmodels], [11\/11\/2026],
  tline,
)

#metadata((src: "README.md", line: 9418))
#emph[Nota. Elaboración del equipo RuwaLabs a partir del historial de Git, consultado el 12 de noviembre de 2026. La rama indicada contiene el commit y no implica que el cambio ya se haya integrado a develop.]

#heading(level: 4)[4.2.2.5. Testing Suite Evidence for Sprint Review] <sec:4-2-2-5-testing-suite-evidence-for-sprint-review>
#metadata((src: "README.md", line: 9420, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9422))
Las pruebas automatizadas identificadas para el Sprint 2 se concentran en la aplicación administrativa de Flutter. Con #raw("flutter_test") se comprueban pantallas y cambios de estado; las pruebas de repositorios y del cliente HTTP usan respuestas simuladas para verificar rutas, parámetros y manejo de errores sin depender del servidor publicado.

#metadata((src: "README.md", line: 9424))
La #link("#tabla-84")[Tabla 84] enlaza los commits que incorporaron los archivos de prueba. El commit de Agenda incluye tanto la implementación como sus pruebas.

#metadata((src: "README.md", line: 9428))
#strong[Tabla 84]

#metadata((src: "README.md", line: 9430))
#emph[Commits de la suite de pruebas del Sprint 2]

#metadata((src: "README.md", line: 9432, kind: "table"))
#table(
  columns: 5,
  align: (left, left, left, left, left),
  table.header([Repository], [Branch], [Commit Id], [Commit Message], [Committed On]),
  tline,
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("login")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/05b445712c8231e600abe7e3f17d8b123228033f")[05b445712c8231e600abe7e3f17d8b123228033f]], [feat(auth): implement staff login and password recovery], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/a9d67c53661b5089dd3b38ad56660b3a4fe55c73")[a9d67c53661b5089dd3b38ad56660b3a4fe55c73]], [test(home): cover dashboard data navigation and recovery states], [31\/10\/2026],
  [#link("https://github.com/RuwaLabs/frontend-flutter-saludya")[RuwaLabs\/frontend-flutter-saludya]], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/commit/d689c208bc2a7b65bf06bc3da044a72c75cfa6cc")[d689c208bc2a7b65bf06bc3da044a72c75cfa6cc]], [Pantallas avanzadas], [01\/11\/2026],
  tline,
)

#metadata((src: "README.md", line: 9438))
#emph[Nota. Se verificaron los archivos de prueba modificados por los commits. Los mensajes y fechas se conservan del historial de Git.]

#metadata((src: "README.md", line: 9440))
La #link("#tabla-85")[Tabla 85] detalla qué comportamiento verifica cada grupo de pruebas.

#metadata((src: "README.md", line: 9444))
#strong[Tabla 85]

#metadata((src: "README.md", line: 9446))
#emph[Inventario de pruebas automatizadas del Sprint 2]

#metadata((src: "README.md", line: 9448, kind: "table"))
#table(
  columns: 4,
  align: (left, left, left, left),
  table.header([Componente], [Rama], [Archivo], [Comportamiento verificado]),
  tline,
  [Acceso], [#raw("login")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/login/saludya/test/auth_page_test.dart")[auth\_page\_test.dart]], [Pantalla de inicio de sesión sin registro público y navegación a la solicitud de recuperación por correo.],
  [Inicio: repositorio HTTP], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/home/saludya/test/home/home_repository_test.dart")[home\_repository\_test.dart]], [Consultas autenticadas y filtros por fecha y bloque, datos vacíos, errores HTTP, y estados de llegada y atención (US-41 y US-50).],
  [Inicio: controlador], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/home/saludya/test/home/home_controller_test.dart")[home\_controller\_test.dart]], [Prevalencia de la respuesta más reciente, finalización segura al desmontar y limpieza de datos al fallar la sesión.],
  [Inicio: pantallas], [#raw("home")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/home/saludya/test/home/home_page_test.dart")[home\_page\_test.dart]], [Totales, navegación a cancelaciones y pacientes, reintento, accesos a calendario y QR, y desplazamiento con texto ampliado.],
  [Agenda: navegación], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/schedule/saludya/test/features/schedule/presentation/main_schedule_test.dart")[main\_schedule\_test.dart]], [Entrada a Agenda y navegación al calendario.],
  [Agenda: cliente HTTP], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/schedule/saludya/test/features/schedule/presentation/saludya_api_test.dart")[saludya\_api\_test.dart]], [Consulta de profesionales y bloques filtrados, y actualización del estado del bloque sin enviar el consultorio como campo editable.],
  [Agenda: ViewModels], [#raw("schedule")], [#link("https://github.com/RuwaLabs/frontend-flutter-saludya/blob/schedule/saludya/test/features/schedule/presentation/schedule_view_models_test.dart")[schedule\_view\_models\_test.dart]], [Filtrado de especialidades y de bloques por especialidad y fecha.],
  tline,
)

#metadata((src: "README.md", line: 9458))
El 12 de noviembre de 2026 se ejecutó #raw("flutter test") por separado en los commits #raw("820f2f2") de #raw("home") y #raw("d689c20") de #raw("schedule"). Pasaron 21 pruebas en #raw("home") (19 de Inicio y 2 de acceso heredadas de #raw("login")) y 5 en #raw("schedule"): 26 en total, sin duplicar las pruebas de acceso.

#metadata((src: "README.md", line: 9460))
No se encontraron nuevas pruebas automatizadas en los cambios revisados de QR y reglas de Flutter, ni en los commits del perfil de paciente de Kotlin. Las pruebas de Kotlin documentadas en el Sprint 1 se conservan como evidencia de ese sprint. Queda pendiente validar los recorridos de Flutter de punta a punta con una cuenta de personal y el backend desplegado.

#heading(level: 4)[4.2.2.7. Services Documentation Evidence for Sprint Review] <sec:4-2-2-7-services-documentation-evidence-for-sprint-review>
#metadata((src: "README.md", line: 9462, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9464))
En este Sprint se continuó el trabajo sobre los servicios web de SaludYa. La documentación OpenAPI ya implementada se mantiene publicada junto con el backend desplegado en AWS EC2; el alcance del Sprint 2 no incorporó nuevos controladores, sino que la aplicación móvil administrativa consume las operaciones existentes de Identity & Access Management, Appointments & Booking, Arrival & QR Check-in y Hospital Operations & Configuration. La documentación comprende 62 operaciones distribuidas en 53 rutas.

#metadata((src: "README.md", line: 9466))
La especificación OpenAPI se publica en #raw("/v3/api-docs") y se mantiene exportada en el repositorio de Web Services (#raw("docs/api/openapi.json")) para su versionado. La API utiliza autenticación HTTP Bearer con JWT (esquema #raw("bearerAuth")); los endpoints públicos (registro, inicio de sesión, verificación de identidad y recuperación de cuenta) están marcados con #raw("@SecurityRequirements") y no requieren token, mientras que el resto exige un token vigente obtenido tras el inicio de sesión. En este Sprint se incorporaron ajustes en el flujo de creación de cuentas de personal de admisión y en la recuperación de acceso mediante código enviado por correo, reflejados en la especificación publicada.

#metadata((src: "README.md", line: 9468))
- #strong[Swagger UI (documentación desplegada):] #link("http://3.129.217.49:8080/swagger-ui/index.html")[http:\/\/3.129.217.49:8080\/swagger-ui\/index.html]
- #strong[Especificación OpenAPI (JSON):] #link("http://3.129.217.49:8080/v3/api-docs")[http:\/\/3.129.217.49:8080\/v3\/api-docs]
- #strong[Repositorio de Web Services:] #link("https://github.com/RuwaLabs/backend-saludya")[https:\/\/github.com\/RuwaLabs\/backend-saludya]

#heading(level: 5)[Commits relacionados con la documentación para este Sprint] <sec:commits-relacionados-con-la-documentacion-para-este-sprint-2>
#metadata((src: "README.md", line: 9472, kind: "heading", level: 5))

#metadata((src: "README.md", line: 9474, kind: "table"))
#table(
  columns: 3,
  align: (left, left, left),
  table.header([Commit], [Mensaje], [Relación]),
  tline,
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/4a8038a")[#raw("4a8038a")]], [#raw("feat(iam): add email-code password recovery and staff seed")], [Creación de cuentas de personal de admisión y recuperación por código de correo usada por el acceso administrativo],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/40f9623")[#raw("40f9623")]], [#raw("fix(iam): use Jackson 3 for staff seed")], [Ajuste de serialización del personal de admisión para la respuesta documentada del endpoint],
  [#link("https://github.com/RuwaLabs/backend-saludya/commit/a592333")[#raw("a592333")]], [#raw("docs(api): add OpenAPI spec export and Web Services endpoint documentation")], [Exportación del documento OpenAPI (#raw("docs/api/openapi.json")) que se mantiene publicado],
  tline,
)

#heading(level: 5)[Tabla de endpoints documentados] <sec:tabla-de-endpoints-documentados-2>
#metadata((src: "README.md", line: 9480, kind: "heading", level: 5))

#metadata((src: "README.md", line: 9482))
A continuación se detalla, para cada endpoint, la acción implementada, el verbo HTTP y la sintaxis de llamada, los parámetros admitidos, un ejemplo de petición y de respuesta con datos de muestra, la explicación de la respuesta y el enlace a su documentación desplegada. La URL base es #raw("http://3.129.217.49:8080"). Las operaciones corresponden a las user stories US-30 a US-53 del Sprint 2: IAM (US-30 a US-32), Appointments & Booking (US-36 a US-42 y US-50), Arrival & QR Check-in (US-43 a US-49) y Hospital Operations & Configuration (US-33 a US-35, US-51 a US-53).

#heading(level: 6)[IAM — Identity & Access Management] <sec:iam-identity-access-management-2>
#metadata((src: "README.md", line: 9484, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9486, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[1], [Iniciar sesión del personal y del Super Admin], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login")], [body: #raw("email, password")], [#raw("{\"email\":\"franco@saludya.local\",\"password\":\"SaludYa#2026\"}")], [#raw("200") #raw("{\"challengeId\":\"8f2c1d40-...\",\"maskedEmail\":\"f***@saludya.local\",\"expiresAt\":\"2026-11-12T10:35:00Z\"}")], [Valida las credenciales y envía un código de verificación al correo; no revela si el correo existe], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/login")[Swagger]],
  table.cell(align: center)[2], [Completar inicio de sesión con el código], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login/verify")], [body: #raw("challengeId, code")], [#raw("{\"challengeId\":\"8f2c1d40-...\",\"code\":\"721305\"}")], [#raw("200") #raw("{\"accessToken\":\"eyJhbGciOiJIUzI1NiJ9...\",\"tokenType\":\"Bearer\",\"expiresAt\":\"2026-11-12T11:30:00Z\",\"userId\":15,\"role\":\"ADMISSION_STAFF\",\"patientId\":null}")], [Devuelve el token de acceso (JWT) y el rol del usuario (#raw("ADMISSION_STAFF") o #raw("SUPER_ADMIN"))], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/verifyLogin")[Swagger]],
  table.cell(align: center)[3], [Reenviar el código del desafío de login], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/login/resend")], [body: #raw("challengeId")], [#raw("{\"challengeId\":\"8f2c1d40-...\"}")], [#raw("200") · #emph[sin cuerpo]], [Genera y reenvía un nuevo código para el mismo desafío], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/resendLoginCode")[Swagger]],
  table.cell(align: center)[4], [Cerrar sesión (revoca el token actual)], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/logout")], [header: #raw("Authorization: Bearer <token>")], [#emph[(sin cuerpo)]], [#raw("200") · #emph[sin cuerpo]], [Revoca la sesión Bearer vigente; responde sin contenido], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/logout")[Swagger]],
  table.cell(align: center)[5], [Crear cuenta de personal de admisión], table.cell(align: center)[POST], [#raw("/api/v1/user-accounts/staff")], [header: #raw("Authorization (SUPER_ADMIN)") · body: #raw("dni, name, lastname, birthDate, phone, email")], [#raw("{\"dni\":\"70000002\",\"name\":\"Franco\",\"lastname\":\"Alanoca\",\"birthDate\":\"1999-03-02\",\"phone\":\"999888777\",\"email\":\"franco@saludya.local\"}")], [#raw("200") #raw("{\"id\":15,\"role\":\"ADMISSION_STAFF\",\"email\":\"franco@saludya.local\",\"active\":true,\"patientId\":null,\"dni\":\"70000002\",\"name\":\"Franco\",\"lastname\":\"Alanoca\",\"birthDate\":\"1999-03-02\",\"phone\":\"999888777\"}")], [Crea la cuenta del personal y envía una invitación para definir contraseña], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/staff")[Swagger]],
  tline,
)

#heading(level: 6)[Appointments & Booking] <sec:appointments-booking-2>
#metadata((src: "README.md", line: 9494, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9496, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[6], [Listar especialidades], table.cell(align: center)[GET], [#raw("/api/v1/specialties")], [—], [#raw("/api/v1/specialties")], [#raw("200") #raw("[{\"id\":1,\"name\":\"Medicina general\",\"description\":\"Atención médica primaria\"}]")], [Devuelve el catálogo de especialidades], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Specialties/getAllSpecialties")[Swagger]],
  table.cell(align: center)[7], [Listar doctores por especialidad], table.cell(align: center)[GET], [#raw("/api/v1/doctors")], [query: #raw("specialtyId") (obligatorio)], [#raw("/api/v1/doctors?specialtyId=1")], [#raw("200") #raw("[{\"id\":7,\"specialtyId\":1,\"name\":\"Ana\",\"lastname\":\"Rojas\"}]")], [Devuelve los doctores de la especialidad indicada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Doctors/getDoctorsBySpecialty")[Swagger]],
  table.cell(align: center)[8], [Slots de un doctor en una fecha], table.cell(align: center)[GET], [#raw("/api/v1/time-slots")], [query: #raw("doctorId, date") (obligatorios)], [#raw("/api/v1/time-slots?doctorId=7&date=2026-11-12")], [#raw("200") #raw("[{\"id\":31,\"doctorId\":7,\"date\":\"2026-11-12\",\"startHour\":\"09:00\",\"endHour\":\"09:30\",\"room\":\"Consultorio 3\",\"maxCapacity\":5,\"currentBookings\":2,\"status\":\"AVAILABLE\"}]")], [Devuelve los slots del doctor en la fecha indicada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotsByDoctorAndDate")[Swagger]],
  table.cell(align: center)[9], [Obtener un slot por id], table.cell(align: center)[GET], [#raw("/api/v1/time-slots/{id}")], [path: #raw("id")], [#raw("/api/v1/time-slots/31")], [#raw("200") #raw("{\"id\":31,\"doctorId\":7,\"date\":\"2026-11-12\",\"startHour\":\"09:00\",\"endHour\":\"09:30\",\"room\":\"Consultorio 3\",\"maxCapacity\":5,\"currentBookings\":2,\"status\":\"AVAILABLE\"}")], [Devuelve el slot solicitado con su disponibilidad], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotById")[Swagger]],
  table.cell(align: center)[10], [Editar un slot (doctor, horario y estado)], table.cell(align: center)[PUT], [#raw("/api/v1/time-slots/{id}")], [path: #raw("id") · body: #raw("doctorId, startHour, endHour, status")], [#raw("{\"doctorId\":7,\"startHour\":\"10:00\",\"endHour\":\"10:30\",\"status\":\"AVAILABLE\"}")], [#raw("200") #raw("{\"id\":31,\"doctorId\":7,\"startHour\":\"10:00\",\"endHour\":\"10:30\",\"status\":\"AVAILABLE\",...}")], [Edita los datos del slot y devuelve el recurso actualizado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlot")[Swagger]],
  table.cell(align: center)[11], [Actualizar la capacidad de un slot], table.cell(align: center)[PUT], [#raw("/api/v1/time-slots/{id}/capacity")], [path: #raw("id") · body: #raw("maxCapacity")], [#raw("{\"maxCapacity\":8}")], [#raw("200") #raw("{\"id\":31,\"maxCapacity\":8,\"currentBookings\":2,\"status\":\"AVAILABLE\",...}")], [Actualiza la capacidad máxima del slot], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlotCapacity")[Swagger]],
  table.cell(align: center)[12], [Listar citas con filtros], table.cell(align: center)[GET], [#raw("/api/v1/appointments")], [query: #raw("patientId, timeSlotId, doctorId, specialtyId, date, status")], [#raw("/api/v1/appointments?timeSlotId=31&date=2026-11-12&status=RESERVED")], [#raw("200") #raw("[{\"id\":142,\"timeSlotId\":31,\"patientId\":1,\"bookingOrder\":3,\"bookingCode\":\"RSV-000142\",\"status\":\"RESERVED\"}]")], [Devuelve las citas filtradas del bloque o de la jornada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointments")[Swagger]],
  table.cell(align: center)[13], [Listar citas canceladas del día], table.cell(align: center)[GET], [#raw("/api/v1/appointments")], [query: #raw("date, status=CANCELLED")], [#raw("/api/v1/appointments?date=2026-11-12&status=CANCELLED")], [#raw("200") #raw("[{\"id\":139,\"timeSlotId\":28,\"patientId\":4,\"status\":\"CANCELLED\"}]")], [Lista las citas canceladas de la jornada para identificar cupos liberados], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointments")[Swagger]],
  tline,
)

#heading(level: 6)[Arrival & QR Check-in] <sec:arrival-qr-check-in-2>
#metadata((src: "README.md", line: 9507, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9509, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[14], [Registrar check-in por token QR], table.cell(align: center)[POST], [#raw("/api/v1/check-ins/qr")], [body: #raw("qrToken")], [#raw("{\"qrToken\":\"eyJhbGciOiJIUzI1NiJ9.qr.14f...\"}")], [#raw("200") #raw("{\"checkInId\":15,\"appointmentId\":142,\"queueEntryId\":9,\"position\":3,\"totalInQueue\":8,\"status\":\"WAITING\"}")], [Registra la llegada, crea el ticket y la entrada en la cola; devuelve la posición], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckIn")[Swagger]],
  table.cell(align: center)[15], [Registrar check-in por código de reserva], table.cell(align: center)[POST], [#raw("/api/v1/check-ins/code")], [body: #raw("bookingCode")], [#raw("{\"bookingCode\":\"RSV-000142\"}")], [#raw("200") #raw("{\"checkInId\":16,\"appointmentId\":143,\"queueEntryId\":10,\"position\":4,\"totalInQueue\":8,\"status\":\"WAITING\"}")], [Alternativa manual: registra la llegada con el código de reserva], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckInByCode")[Swagger]],
  table.cell(align: center)[16], [Resolver la cola de un slot en una fecha], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues")], [query: #raw("timeSlotId, date") (obligatorios)], [#raw("/api/v1/attendance-queues?timeSlotId=31&date=2026-11-12")], [#raw("200") #raw("{\"id\":4,\"timeSlotId\":31,\"date\":\"2026-11-12\",\"status\":\"OPEN\"}")], [Devuelve la cola de atención del slot y fecha; error si no existe], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getQueue")[Swagger]],
  table.cell(align: center)[17], [Listar las entradas de una cola], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues/{id}/entries")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/entries")], [#raw("200") #raw("[{\"id\":9,\"attendanceQueueId\":4,\"checkInId\":15,\"position\":3,\"status\":\"WAITING\",\"calledAt\":null,\"attendedAt\":null}]")], [Lista las entradas (pacientes) de la cola], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getEntries")[Swagger]],
  table.cell(align: center)[18], [Posición actual en la cola], table.cell(align: center)[GET], [#raw("/api/v1/attendance-queues/{id}/position")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/position")], [#raw("200") #raw("{\"position\":3,\"totalInQueue\":8}")], [Devuelve la posición y el total de la cola], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getPosition_1")[Swagger]],
  table.cell(align: center)[19], [Llamar al siguiente paciente], table.cell(align: center)[POST], [#raw("/api/v1/attendance-queues/{id}/call-next")], [path: #raw("id")], [#raw("/api/v1/attendance-queues/4/call-next")], [#raw("200") #raw("{\"id\":9,\"attendanceQueueId\":4,\"checkInId\":15,\"position\":1,\"status\":\"CALLED\",\"calledAt\":\"2026-11-12T09:40:00Z\"}")], [Llama al siguiente paciente en espera y devuelve su entrada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/callNext")[Swagger]],
  table.cell(align: center)[20], [Iniciar la atención de una entrada llamada], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/start")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/start")], [#raw("200") #raw("{\"id\":9,\"attendanceQueueId\":4,\"checkInId\":15,\"position\":1,\"status\":\"IN_ATTENTION\",\"calledAt\":\"2026-11-12T09:40:00Z\",\"attendedAt\":null}")], [Cambia la entrada a #raw("IN_ATTENTION")], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/startAttention")[Swagger]],
  table.cell(align: center)[21], [Finalizar la atención de una entrada], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/finish")], [path: #raw("id")], [#raw("/api/v1/queue-entries/9/finish")], [#raw("200") #raw("{\"id\":9,\"attendanceQueueId\":4,\"status\":\"ATTENDED\",\"attendedAt\":\"2026-11-12T09:55:00Z\"}")], [Marca la entrada como atendida], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/finishAttention")[Swagger]],
  table.cell(align: center)[22], [Marcar una entrada como ausente], table.cell(align: center)[POST], [#raw("/api/v1/queue-entries/{id}/absent")], [path: #raw("id")], [#raw("/api/v1/queue-entries/10/absent")], [#raw("200") #raw("{\"id\":10,\"attendanceQueueId\":4,\"status\":\"ABSENT\"}")], [Marca al paciente como ausente y cierra su entrada], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/markAbsent")[Swagger]],
  tline,
)

#heading(level: 6)[Hospital Operations & Configuration] <sec:hospital-operations-configuration-2>
#metadata((src: "README.md", line: 9521, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9523, kind: "table"))
#table(
  columns: 9,
  align: (center, left, center, left, left, left, left, left, left),
  table.header(table.cell(align: center)[\#], [Acción implementada], table.cell(align: center)[Método], [Sintaxis de llamada (endpoint)], [Parámetros], [Petición (ejemplo)], [Respuesta (ejemplo)], [Explicación del response], [Documentación]),
  tline,
  table.cell(align: center)[23], [Leer la configuración del establecimiento], table.cell(align: center)[GET], [#raw("/api/v1/config")], [—], [#raw("/api/v1/config")], [#raw("200") #raw("{\"id\":1,\"maxCapacityPerSlot\":5,\"bookingOrderScope\":\"PER_SPECIALTY\",\"checkInToleranceMinutes\":15,\"postCallToleranceMinutes\":10,\"reassignmentResponseTimeoutMin\":5,\"bookingCutoffTime\":\"18:00\",\"cancellationDeadlineHours\":24,\"attendanceQueueVisible\":true,\"updatedAt\":\"2026-11-11T18:00:00Z\"}")], [Devuelve la configuración vigente del establecimiento], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getConfiguration")[Swagger]],
  table.cell(align: center)[24], [Actualizar la configuración del establecimiento], table.cell(align: center)[PUT], [#raw("/api/v1/config")], [body: #raw("maxCapacityPerSlot, bookingOrderScope, checkInToleranceMinutes, postCallToleranceMinutes, reassignmentResponseTimeoutMin, bookingCutoffTime, cancellationDeadlineHours, attendanceQueueVisible")], [#raw("{\"maxCapacityPerSlot\":6,\"checkInToleranceMinutes\":20,\"postCallToleranceMinutes\":10,\"reassignmentResponseTimeoutMin\":10,\"bookingCutoffTime\":\"18:00\",\"cancellationDeadlineHours\":48,\"attendanceQueueVisible\":true}")], [#raw("200") #raw("{\"id\":1,\"maxCapacityPerSlot\":6,...,\"updatedAt\":\"2026-11-12T09:15:00Z\"}")], [Actualiza la configuración y devuelve el recurso actualizado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/updateConfiguration")[Swagger]],
  table.cell(align: center)[25], [Obtener el panel de métricas del día], table.cell(align: center)[GET], [#raw("/api/v1/config/dashboard")], [query: #raw("date") (opcional)], [#raw("/api/v1/config/dashboard?date=2026-11-12")], [#raw("200") #raw("{\"configurationId\":1,\"metrics\":[{\"name\":\"scheduledToday\",\"value\":42},{\"name\":\"pendingToday\",\"value\":12},{\"name\":\"cancelledToday\",\"value\":7},{\"name\":\"attendedToday\",\"value\":28},{\"name\":\"absentToday\",\"value\":2}],\"externalDataAvailable\":false,...}")], [Devuelve las métricas operativas del día], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getDashboard")[Swagger]],
  table.cell(align: center)[26], [Generar un reporte por rango de fechas], table.cell(align: center)[GET], [#raw("/api/v1/config/reports")], [query: #raw("from, to, format") (obligatorios; #raw("format") por defecto #raw("JSON"))], [#raw("/api/v1/config/reports?from=2026-11-01&to=2026-11-12&format=CSV")], [#raw("200") #raw("{\"format\":\"CSV\",\"generatedAt\":\"2026-11-12T09:20:00Z\",\"content\":\"especialidad;reservas;canceladas;atendidas\\nMedicina general;18;2;14\\nPediatría;11;1;9\"}")], [Genera el reporte del rango indicado en el formato solicitado], [#link("http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/generateReport")[Swagger]],
  tline,
)

#heading(level: 5)[Evidencias de la documentación desplegada] <sec:evidencias-de-la-documentacion-desplegada>
#metadata((src: "README.md", line: 9530, kind: "heading", level: 5))

#metadata((src: "README.md", line: 9532))
A continuación se presentan las capturas de la documentación desplegada en Swagger UI para los controladores que consume la aplicación móvil administrativa. Cada captura muestra las operaciones disponibles del controlador y su protección mediante autenticación Bearer.

#heading(level: 6)[1. IAM - User accounts] <sec:1-iam-user-accounts>
#metadata((src: "README.md", line: 9534, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9536, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-iam-user-accounts.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-iam-user-accounts.png", alt: "Swagger UI - IAM User accounts", width: 100%)]]]

#metadata((src: "README.md", line: 9540))
#emph[Figura 201. Documentación desplegada del controlador IAM - User accounts en Swagger UI.]

#heading(level: 6)[2. Specialties] <sec:2-specialties>
#metadata((src: "README.md", line: 9542, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9544, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-specialties.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-specialties.png", alt: "Swagger UI - Specialties", width: 100%)]]]

#metadata((src: "README.md", line: 9548))
#emph[Figura 202. Documentación desplegada del controlador Specialties en Swagger UI.]

#heading(level: 6)[3. Doctors] <sec:3-doctors>
#metadata((src: "README.md", line: 9550, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9552, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-doctors.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-doctors.png", alt: "Swagger UI - Doctors", width: 100%)]]]

#metadata((src: "README.md", line: 9556))
#emph[Figura 203. Documentación desplegada del controlador Doctors en Swagger UI.]

#heading(level: 6)[4. Time Slots] <sec:4-time-slots>
#metadata((src: "README.md", line: 9558, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9560, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-time-slots.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-time-slots.png", alt: "Swagger UI - Time Slots", width: 100%)]]]

#metadata((src: "README.md", line: 9564))
#emph[Figura 204. Documentación desplegada del controlador Time Slots en Swagger UI.]

#heading(level: 6)[5. Appointments] <sec:5-appointments>
#metadata((src: "README.md", line: 9566, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9568, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-appointments.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-appointments.png", alt: "Swagger UI - Appointments", width: 100%)]]]

#metadata((src: "README.md", line: 9572))
#emph[Figura 205. Documentación desplegada del controlador Appointments en Swagger UI.]

#heading(level: 6)[6. Check-ins] <sec:6-check-ins>
#metadata((src: "README.md", line: 9574, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9576, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-check-ins.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-check-ins.png", alt: "Swagger UI - Check-ins", width: 100%)]]]

#metadata((src: "README.md", line: 9580))
#emph[Figura 206. Documentación desplegada del controlador Check-ins en Swagger UI.]

#heading(level: 6)[7. Attendance Queues] <sec:7-attendance-queues>
#metadata((src: "README.md", line: 9582, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9584, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-attendance-queues.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-attendance-queues.png", alt: "Swagger UI - Attendance Queues", width: 100%)]]]

#metadata((src: "README.md", line: 9588))
#emph[Figura 207. Documentación desplegada del controlador Attendance Queues en Swagger UI.]

#heading(level: 6)[8. Queue Entries] <sec:8-queue-entries>
#metadata((src: "README.md", line: 9590, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9592, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-queue-entries.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-queue-entries.png", alt: "Swagger UI - Queue Entries", width: 100%)]]]

#metadata((src: "README.md", line: 9596))
#emph[Figura 208. Documentación desplegada del controlador Queue Entries en Swagger UI.]

#heading(level: 6)[9. configuration-controller] <sec:9-configuration-controller>
#metadata((src: "README.md", line: 9598, kind: "heading", level: 6))

#metadata((src: "README.md", line: 9600, kind: "figure", img: "chapter-04/assets/sprint-2/endpoints/swagger-configuration.png"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/chapter-04/assets/sprint-2/endpoints/swagger-configuration.png", alt: "Swagger UI - configuration-controller", width: 100%)]]]

#metadata((src: "README.md", line: 9604))
#emph[Figura 209. Documentación desplegada del controlador configuration-controller en Swagger UI.]

#heading(level: 4)[4.2.2.8. Software Deployment Evidence for Sprint Review] <sec:4-2-2-8-software-deployment-evidence-for-sprint-review>
#metadata((src: "README.md", line: 9606, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9608))
El despliegue del backend, del Landing Page y de la aplicación Android ya se realizó en el Sprint 1 y se documentó en la sección 4.2.1.8. En este avance no se repite ese despliegue: la Figura 210 muestra la aplicación Android instalada y ejecutándose con el backend desplegado.

#metadata((src: "README.md", line: 9612))
#strong[Figura 210]

#metadata((src: "README.md", line: 9614))
#emph[Aplicación Android de SaludYa en ejecución]

#metadata((src: "README.md", line: 9616, kind: "figure", img: "assets/execution/sprint-1/android-inicio.png"))
#block(breakable: false)[#fit-image("/assets/execution/sprint-1/android-inicio.png", alt: "Aplicación Android de SaludYa en ejecución", width: 60%)]

#metadata((src: "README.md", line: 9618))
#emph[Nota. Captura de la aplicación Android instalada y ejecutándose con el backend desplegado.]

#metadata((src: "README.md", line: 9620))
El despliegue de la aplicación Flutter (personal y administración) no forma parte de este avance; queda pendiente para una entrega posterior.

#heading(level: 2)[4.3. Validation Interviews] <sec:4-3-validation-interviews>
#metadata((src: "README.md", line: 9622, kind: "heading", level: 2))

#heading(level: 3)[4.3.1. Diseño de Entrevistas] <sec:4-3-1-diseno-de-entrevistas>
#metadata((src: "README.md", line: 9624, kind: "heading", level: 3))

#metadata((src: "README.md", line: 9626))
En esta sección se presenta el diseño de las entrevistas de validación aplicadas a los segmentos objetivo de #strong[SaludYa]. Se elaboraron preguntas principales y complementarias orientadas a evaluar la comprensión de la propuesta de valor, la navegación, el diseño visual y la intención de uso de la #strong[Landing Page], considerando buenas prácticas de diseño de entrevistas. La información recolectada —características demográficas (edad, distrito de residencia, ocupación), habilidades, afinidad tecnológica, dispositivos preferidos, canales de interacción, objetivos y frustraciones— sirve como insumo para construir y sustentar los arquetipos (User Personas).

#metadata((src: "README.md", line: 9628))
Las entrevistas se dirigieron a los dos segmentos identificados: #strong[Segmento 1 — Pacientes de zonas urbanas periféricas] y #strong[Segmento 2 — Personal asistencial y administrativo de establecimientos públicos de salud]. Los bloques de preguntas fueron los siguientes.

#heading(level: 4)[Perfil del participante] <sec:perfil-del-participante>
#metadata((src: "README.md", line: 9630, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9632))
- ¿Cuál es su edad y distrito de residencia?
- ¿Con qué frecuencia usa el celular para trámites y qué tan cómodo se siente, en una escala del 1 al 10?
- ¿Cuál es su rol en el establecimiento de salud? (segmento personal)

#heading(level: 4)[Comprensión de la propuesta de valor] <sec:comprension-de-la-propuesta-de-valor>
#metadata((src: "README.md", line: 9636, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9638))
- Al abrir la página, ¿qué cree que ofrece SaludYa? Explíquelo con sus palabras.
- ¿Entendió para quién está dirigida la solución, es decir, pacientes y personal de salud?
- ¿El mensaje principal, “Citas médicas sin colas…”, le resulta claro?
- ¿Identificó qué problema resuelve la solución y cómo lo resuelve?

#heading(level: 4)[Navegación y arquitectura de la información] <sec:navegacion-y-arquitectura-de-la-informacion>
#metadata((src: "README.md", line: 9643, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9645))
- ¿Encontró fácilmente las secciones: Producto, Videos, Testimonios, Sobre nosotros y Descarga?
- ¿La organización de la información le pareció lógica y ordenada?
- ¿Usó el selector de idioma (español o inglés)? ¿Le resultó útil?
- ¿Faltó alguna sección que esperaba encontrar?

#heading(level: 4)[Diseño visual, usabilidad y diseño inclusivo] <sec:diseno-visual-usabilidad-y-diseno-inclusivo>
#metadata((src: "README.md", line: 9650, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9652))
- ¿El diseño le pareció claro y agradable a la vista?
- ¿El contraste, el tamaño de las letras y los botones le permitieron leer y usar la página con facilidad?
- ¿Los botones de acción, como descargar y conocer más, son visibles y fáciles de ubicar?
- ¿La página funcionó bien en su celular, en la versión móvil?

#heading(level: 4)[Contenido] <sec:contenido-2>
#metadata((src: "README.md", line: 9657, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9659))
- ¿Los testimonios influyeron en su confianza hacia SaludYa?
- ¿La sección de modelo de negocio o “sobre nosotros” aportó algo a su decisión?

#heading(level: 4)[Conversión e intención] <sec:conversion-e-intencion>
#metadata((src: "README.md", line: 9662, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9664))
- ¿Descargaría la aplicación? ¿Por qué sí o por qué no?
- ¿Qué cambiaría o agregaría para convencerlo de usar SaludYa?
- Del 1 al 5, ¿qué tan probable es que recomiende la página a otra persona?
- ¿Hay algo más que quiera comentar?

#heading(level: 3)[4.3.2. Registro de Entrevistas] <sec:4-3-2-registro-de-entrevistas>
#metadata((src: "README.md", line: 9669, kind: "heading", level: 3))

#metadata((src: "README.md", line: 9671))
Para cada segmento se realizaron entrevistas de validación de la #strong[Landing Page], registradas en video como evidencia. A continuación se presentan, para cada entrevista, los datos del participante, el enlace del video, la captura del cuadro de video, el timing de inicio y un resumen descriptivo de las respuestas, incluyendo las características objetivas y subjetivas del entrevistado.

#heading(level: 4)[Entrevista 1 — Segmento: Personal administrativo] <sec:entrevista-1-segmento-personal-administrativo>
#metadata((src: "README.md", line: 9673, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9675, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Detalle]),
  tline,
  [Nombre(s) y apellidos], [Alvaro],
  [Edad], [46 años],
  [Distrito], [Santa],
  [Ocupación \/ rol], [Personal administrativo del establecimiento de salud],
  [Entrevistador(a)], [Alisee],
  [Enlace del video], [#link("https://youtu.be/OYaoAsbkC0s")[https:\/\/youtu.be\/OYaoAsbkC0s]],
  [Inicio de la entrevista], [00:01],
  tline,
)

#metadata((src: "README.md", line: 9685, kind: "figure", img: "assets/Entrevistas%20landing%20page/Alisee.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Entrevistas landing page/Alisee.jpeg", alt: "Cuadro de video de la entrevista 1 (personal administrativo)", width: 70%)]]]

#metadata((src: "README.md", line: 9689))
#emph[Figura 211. Cuadro de video de la entrevista 1 — personal administrativo.]

#metadata((src: "README.md", line: 9691))
#strong[Resumen.] Alvaro es un adulto de 46 años, residente en el distrito de Santa, con rol administrativo en un establecimiento de salud. Usa el celular a diario para realizar trámites y califica su comodidad con el dispositivo en 7 de 10. Al explorar la Landing Page interpretó correctamente la propuesta de valor: que SaludYa ofrece soluciones al aglomeramiento del público y a la gestión de citas, aportando agilidad tanto al paciente como al personal de salud; además, el mensaje principal “Citas médicas sin colas” le resultó claro. En cuanto a la navegación, encontró las secciones de forma ordenada y la página se abrió por defecto en español. No echó en falta ninguna sección, considerándola completa. Sobre el diseño, lo percibió claro y agradable, y valoró que no fuera saturado en colores; el contraste, el tamaño de las letras y los botones le permitieron leer y usar la página con facilidad, incluso con una ligera dificultad visual. Verificó el funcionamiento en su celular Android (de gama no alta), donde la página cargó de forma veloz y correcta. Los testimonios de personas reales influyeron en su confianza y la sección “sobre nosotros” \/ modelo de negocio reforzó su decisión. Manifestó que descargaría, usaría y recomendaría la aplicación, y otorgó la máxima probabilidad de recomendación (5 de 5). No cambiaría nada y pidió que la aplicación mantenga un rendimiento ágil en equipos móviles. #strong[Características del arquetipo:] adulto, personal administrativo, usuario frecuente de móvil, orientado a la practicidad, valora la claridad visual y el bajo ruido cromático, prioriza la velocidad y la confianza (respaldada por testimonios), prefiere el español y usa un dispositivo Android de gama media\/baja.

#metadata((src: "README.md", line: 9693))
#strong[Transcripción.]

#metadata((src: "README.md", line: 9695))
#strong[Entrevistador:] Ah, buenas tardes. Bueno, vamos a empezar con la entrevista para la validación de la landing page. Bueno, eh, vamos a empezar con la presentación, así.

#metadata((src: "README.md", line: 9697))
#strong[Entrevistador:] Que le preguntaría, ¿cuál es su edad y subdistrito de residencia?

#metadata((src: "README.md", line: 9699))
#strong[Entrevistado:] Buenas tardes, joven. Mi edad es 46 años y mi distrito es Santa.

#metadata((src: "README.md", line: 9701))
#strong[Entrevistador:] Okay. ¿Con qué frecuencia usa el celular para trámites y qué tan cómodo se siente?

#metadata((src: "README.md", line: 9703))
#strong[Entrevistado:] Uso mi celular a diario para trámites y en una escala del 1 al 10 me sentiría en un siete de comodidad.

#metadata((src: "README.md", line: 9705))
#strong[Entrevistador:] Okay. ¿Y cuál es su rol en el establecimiento de salud? Eh, me encargo de la administración.

#metadata((src: "README.md", line: 9707))
#strong[Entrevistador:] Okay. Eh, al abrir la página, ¿qué cree que ofrece Salud?

#metadata((src: "README.md", line: 9709))
#strong[Entrevistado:] Por lo que he podido contemplar, están ofreciendo soluciones al aglomeramiento del público y a disipar, ¿no?, este tema de las citas, que es lo más tedioso que puede tener una persona cuando tiene alguna emergencia médica.

#metadata((src: "README.md", line: 9711))
#strong[Entrevistado:] Y por el lado del personal, o sea, por el lado de la institución de salud, eh, también brinda una agilidad para la atención de los pacientes.

#metadata((src: "README.md", line: 9713))
#strong[Entrevistador:] Okay. Y entonces, el mensaje principal, "citas médicas sin colas", ¿le resulta claro?

#metadata((src: "README.md", line: 9715))
#strong[Entrevistado:] Claro, este, clarísimo. Se refiere a, por lo que yo puedo entender y por lo que me parece que cualquier persona podría entender, es dejar de lado las colas y empezar a ir de una forma más práctica, ¿no?, para así conseguir el resultado de una buena atención.

#metadata((src: "README.md", line: 9717))
#strong[Entrevistador:] ¿Encontró fácilmente las secciones, como por ejemplo los productos, el testimonio, sobre nosotros, los videos?

#metadata((src: "README.md", line: 9719))
#strong[Entrevistado:] Sí, este, me parece una forma ordenada y con una facilidad para poder encontrar lo que uno necesita.

#metadata((src: "README.md", line: 9721))
#strong[Entrevistador:] ¿Usó quizás el selector de idioma para español o inglés, o lo habrá notado en la aplicación, eh, perdón, en la page?

#metadata((src: "README.md", line: 9723))
#strong[Entrevistado:] Hm, mira, este, yo lo abrí y salió en español de frente.

#metadata((src: "README.md", line: 9725))
#strong[Entrevistador:] Okay. Okay. Eh, ¿quizás faltó alguna sección que esperaba encontrar?

#metadata((src: "README.md", line: 9727))
#strong[Entrevistado:] Mira, la verdad es la primera vez que veo una app de este tipo y no, para mí está todo correcto.

#metadata((src: "README.md", line: 9729))
#strong[Entrevistador:] Okay. ¿El diseño le pareció claro y agradable a la vista?

#metadata((src: "README.md", line: 9731))
#strong[Entrevistado:] \[Resoplido\]

#metadata((src: "README.md", line: 9733))
#strong[Entrevistado:] Personalmente sí, porque he visto otras páginas que tienen diseños como que un poco más subidos de colores, más saturados, ¿no? Y eso como que me madrea un poco y me distrae, pero en el caso de tu página sí está todo bien.

#metadata((src: "README.md", line: 9735))
#strong[Entrevistador:] Okay. Y por ejemplo, el contraste, el tamaño de las letras y los botones, ¿le permitieron leer y utilizar la página con facilidad?

#metadata((src: "README.md", line: 9737))
#strong[Entrevistado:] Sí, estuvieron bien porque yo últimamente tengo ya poco de fallas en la visión, no creo que ya necesito anteojos, pero sí está bien.

#metadata((src: "README.md", line: 9739))
#strong[Entrevistador:] Okay. Y por ejemplo, los botones de acción, eh, como descargar y conocer más, eh, ¿fueron visibles y fáciles de ubicar?

#metadata((src: "README.md", line: 9741))
#strong[Entrevistado:] Sí, claro. Están a la vista. Se ven en la pantalla del celular.

#metadata((src: "README.md", line: 9743))
#strong[Entrevistador:] Okay. Entonces, la página le funcionó bien en su celular. Para hacer un resumen.

#metadata((src: "README.md", line: 9745))
#strong[Entrevistado:] Sí, este, a pesar que ahorita estoy con un Android que no es de muy alta gama, sí resultó todo veloz y correcto.

#metadata((src: "README.md", line: 9747))
#strong[Entrevistador:] Okay. ¿Quizás haya visto una parte acerca de los testimonios? Esos testimonios, ¿influyeron en su confianza hacia la aplicación Salud Jack?

#metadata((src: "README.md", line: 9749))
#strong[Entrevistado:] La verdad sí, porque uno siempre se tiene que basar también no solo en lo que uno ve, ¿no?, sino también en las pruebas de cada caso, de cada seguimiento que uno hace.

#metadata((src: "README.md", line: 9751))
#strong[Entrevistado:] Y al haber estos testimonios de personas reales que ya aprobaron, eh, sí, sí, sí, sí influyó.

#metadata((src: "README.md", line: 9753))
#strong[Entrevistador:] Okay. Y la sección de modelo de negocio o "sobre nosotros", ¿aportó algo a su decisión, por ejemplo, elegir nuestra aplicación?

#metadata((src: "README.md", line: 9755))
#strong[Entrevistado:] Claro, este, como te digo, no todo tiene un complemento, todo tiene que ser algo ya general y sí, sí, en medida. Sí.

#metadata((src: "README.md", line: 9757))
#strong[Entrevistador:] Okay. Y entonces, eh, para preguntar acerca de la aplicación directamente, ¿usted la descargaría?

#metadata((src: "README.md", line: 9759))
#strong[Entrevistado:] Sí, joven. Sí, sí. Me parece que es una aplicación muy práctica y sí la descargaría. Sí, la utilizaría y la recomendaría también.

#metadata((src: "README.md", line: 9761))
#strong[Entrevistador:] Claro, claro. Y del uno al cinco, ¿qué tan probable es que recomiende la página?

#metadata((src: "README.md", line: 9763))
#strong[Entrevistado:] Cinco. Cinco.

#metadata((src: "README.md", line: 9765))
#strong[Entrevistador:] Un cinco. Okay. Eh, ¿quizás usted cambiaría algo, agregaría algo para convencerlo de utilizar Salud Ya, o ya se siente realmente convencido?

#metadata((src: "README.md", line: 9767))
#strong[Entrevistado:] Yo no cambiaría nada. Para mí está bien tal y como está.

#metadata((src: "README.md", line: 9769))
#strong[Entrevistador:] Okay. Bueno, para terminar, ¿hay algo más que quiera comentar quizá de la landing page o de la aplicación?

#metadata((src: "README.md", line: 9771))
#strong[Entrevistado:] Este, sí, que de verdad cumpla, ¿no?, con las expectativas que yo tengo, sobre todo, ¿no? Y que sea este, ¿cómo te digo?, que no se vuelva lento, que sea práctico, que mantenga una velocidad adecuada para los equipos celulares.

#metadata((src: "README.md", line: 9773))
#strong[Entrevistador:] Bueno, eso sería todo por la entrevista de hoy. De todas formas, gracias por las respuestas y bueno, eso sería todo.

#metadata((src: "README.md", line: 9775))
#strong[Entrevistado:] Ya, joven, ya gracias por la entrevista. Estamos en contacto.

#heading(level: 4)[Entrevista 2 — Segmento: Paciente] <sec:entrevista-2-segmento-paciente>
#metadata((src: "README.md", line: 9777, kind: "heading", level: 4))

#metadata((src: "README.md", line: 9779, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Detalle]),
  tline,
  [Nombre(s) y apellidos], [Michelle],
  [Edad], [20 años],
  [Distrito], [Punta Hermosa],
  [Ocupación \/ rol], [Paciente],
  [Entrevistador(a)], [Neo],
  [Enlace del video], [#link("https://drive.google.com/file/d/19-pnt9joLZRH_xgGoZjRtWLqU26qJOTC/view?usp=sharing")[https:\/\/drive.google.com\/file\/d\/19-pnt9joLZRH\_xgGoZjRtWLqU26qJOTC\/view?usp=sharing]],
  [Inicio de la entrevista], [00:00],
  tline,
)

#metadata((src: "README.md", line: 9789, kind: "figure", img: "assets/Entrevistas%20landing%20page/Neo.jpeg"))
#align(center)[#align(center)[#block(breakable: false)[#fit-image("/assets/Entrevistas landing page/Neo.jpeg", alt: "Cuadro de video de la entrevista 2 (paciente)", width: 70%)]]]

#metadata((src: "README.md", line: 9793))
#emph[Figura 212. Cuadro de video de la entrevista 2 — paciente.]

#metadata((src: "README.md", line: 9795))
#strong[Resumen.] Michelle es una joven de 20 años, residente en Punta Hermosa y usuaria del servicio como paciente. Usa el celular con frecuencia para realizar trámites. Interpretó la propuesta de valor de SaludYa como una forma de agilizar las citas y ahorrar tiempo, entendió que está dirigida tanto a pacientes como al personal de salud, y le resultó claro el mensaje “Citas médicas sin colas”. Consideró la navegación intuitiva y la organización de la información lógica y ordenada, sin echar en falta secciones, y usó la página en español. Sobre el diseño, lo percibió claro e intuitivo, con un contraste, tamaños de letra y botones adecuados, y sin problemas en la versión móvil. Los testimonios influyeron en su confianza y la sección “sobre nosotros” \/ modelo de negocio le generó confianza. Indicó que descargaría la aplicación por la confianza y los testimonios, no cambiaría nada por considerarla completa, y su probabilidad de recomendación fue de 4 a 5. #strong[Características del arquetipo:] adulta joven (20 años), paciente, usuaria frecuente de móvil, valora la confianza y las recomendaciones de otras personas, prefiere el español y prioriza la rapidez y la simplicidad.

#metadata((src: "README.md", line: 9797))
#strong[Transcripción.]

#metadata((src: "README.md", line: 9799))
#strong[Entrevistador:] Buenos días. Hoy estamos con Michelle para la entrevista de validación de la Landing Page. Muy buenos días, Michelle. Gracias por participar.

#metadata((src: "README.md", line: 9801))
#strong[Michelle:] Buenos días, con gusto.

#metadata((src: "README.md", line: 9803))
#strong[Entrevistador:] Bueno, vamos a empezar con el perfil del participante. ¿Cuál es su edad y su distrito de residencia?

#metadata((src: "README.md", line: 9805))
#strong[Michelle:] Tengo 20 años y vivo en Punta Hermosa.

#metadata((src: "README.md", line: 9807))
#strong[Entrevistador:] ¿Con qué frecuencia usa el celular para trámites? ¿Qué tan cómodo se siente?

#metadata((src: "README.md", line: 9809))
#strong[Michelle:] Lo ocupo frecuentemente, pero no es tan común.

#metadata((src: "README.md", line: 9811))
#strong[Entrevistador:] ¿Y cuál es su rol en el establecimiento de salud?

#metadata((src: "README.md", line: 9813))
#strong[Michelle:] Eh… no, no pertenezco al establecimiento de salud. Soy paciente.

#metadata((src: "README.md", line: 9815))
#strong[Entrevistador:] Perfecto, gracias por la aclaración. Ahora, comprensión de la propuesta de valor. Al abrir la página, ¿qué cree que ofrece SaludYa? Explíquelo con sus palabras.

#metadata((src: "README.md", line: 9817))
#strong[Michelle:] Agilizar las citas y ahorrar tiempo.

#metadata((src: "README.md", line: 9819))
#strong[Entrevistador:] ¿Entendió para quién está dirigida la solución, es decir, pacientes y personal de salud?

#metadata((src: "README.md", line: 9821))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9823))
#strong[Entrevistador:] ¿El mensaje principal, "Citas médicas sin colas…", le resulta claro?

#metadata((src: "README.md", line: 9825))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9827))
#strong[Entrevistador:] ¿Identificó qué problema resuelve y cómo lo resuelve?

#metadata((src: "README.md", line: 9829))
#strong[Michelle:] Sí, para agilizar el tiempo.

#metadata((src: "README.md", line: 9831))
#strong[Entrevistador:] Muy bien. Pasamos a navegación y arquitectura de la información. ¿Encontró fácilmente las secciones: Producto, Videos, Testimonios, Sobre nosotros, Descarga?

#metadata((src: "README.md", line: 9833))
#strong[Michelle:] Sí, es intuitiva.

#metadata((src: "README.md", line: 9835))
#strong[Entrevistador:] ¿La organización de la información le pareció lógica y ordenada?

#metadata((src: "README.md", line: 9837))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9839))
#strong[Entrevistador:] ¿Usó el selector de idioma, español o inglés? ¿Le resultó útil?

#metadata((src: "README.md", line: 9841))
#strong[Michelle:] Idioma español.

#metadata((src: "README.md", line: 9843))
#strong[Entrevistador:] ¿Faltó alguna sección que esperaba encontrar?

#metadata((src: "README.md", line: 9845))
#strong[Michelle:] No.

#metadata((src: "README.md", line: 9847))
#strong[Entrevistador:] Muy bien. Ahora, diseño visual, usabilidad y diseño inclusivo. ¿El diseño le pareció claro y agradable?

#metadata((src: "README.md", line: 9849))
#strong[Michelle:] Sí, es intuitivo.

#metadata((src: "README.md", line: 9851))
#strong[Entrevistador:] ¿El contraste, el tamaño de las letras y los botones le permitieron leer y usar la página con facilidad?

#metadata((src: "README.md", line: 9853))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9855))
#strong[Entrevistador:] ¿Los botones de acción, como descargar y conocer más, son visibles y fáciles de ubicar?

#metadata((src: "README.md", line: 9857))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9859))
#strong[Entrevistador:] ¿La página funcionó bien en su celular, en la versión móvil?

#metadata((src: "README.md", line: 9861))
#strong[Michelle:] Sí, no he tenido ningún problema.

#metadata((src: "README.md", line: 9863))
#strong[Entrevistador:] Perfecto. Ahora, contenido. ¿Los testimonios influyeron en su confianza hacia SaludYa?

#metadata((src: "README.md", line: 9865))
#strong[Michelle:] Sí.

#metadata((src: "README.md", line: 9867))
#strong[Entrevistador:] ¿La sección de modelo de negocio o "sobre nosotros" aportó algo a su decisión?

#metadata((src: "README.md", line: 9869))
#strong[Michelle:] Sí, me da confianza.

#metadata((src: "README.md", line: 9871))
#strong[Entrevistador:] Muy bien. Conversión e intención. ¿Descargaría la aplicación? ¿Por qué sí o por qué no?

#metadata((src: "README.md", line: 9873))
#strong[Michelle:] Sí, porque me genera confianza y por los testimonios que había escuchado.

#metadata((src: "README.md", line: 9875))
#strong[Entrevistador:] ¿Qué cambiaría o agregaría para convencerlo de usar SaludYa?

#metadata((src: "README.md", line: 9877))
#strong[Michelle:] Pues creo que está muy completa.

#metadata((src: "README.md", line: 9879))
#strong[Entrevistador:] Del 1 al 5, ¿qué tan probable es que recomiende la página a otra persona?

#metadata((src: "README.md", line: 9881))
#strong[Michelle:] 4, quizá 5.

#metadata((src: "README.md", line: 9883))
#strong[Entrevistador:] Muy bien. Para cerrar, ¿hay algo más que quiera comentar?

#metadata((src: "README.md", line: 9885))
#strong[Michelle:] No.

#metadata((src: "README.md", line: 9887))
#strong[Entrevistador:] Bueno, eso sería todo por la entrevista de hoy. Muchas gracias por las respuestas, Michelle. Eso sería todo.

#metadata((src: "README.md", line: 9889))
#strong[Michelle:] Gracias a ustedes. Estamos en contacto.

#heading(level: 3)[4.3.3. Evaluaciones según heurísticas] <sec:4-3-3-evaluaciones-segun-heuristicas>
#metadata((src: "README.md", line: 9891, kind: "heading", level: 3))

#metadata((src: "README.md", line: 9893))
En esta sección se presentan las evaluaciones de la experiencia de usuario de #strong[SaludYa] aplicando el formato de #strong[Evaluación de User Experience según Heurísticas] (heurísticas de usabilidad, arquitectura de información y diseño inclusivo). Las evaluaciones fueron realizadas por el equipo #strong[RouteGuard] y se organizan en dos bloques: (1) la aplicación Android para pacientes y (2) la aplicación Flutter para el personal de admisión y la administración del establecimiento. A continuación se registran los hallazgos, su severidad y las recomendaciones para cada problema identificado.

#heading(level: 3)[Evaluación 1 — Aplicación Android (paciente)] <sec:evaluacion-1-aplicacion-android-paciente>
#metadata((src: "README.md", line: 9895, kind: "heading", level: 3))

#metadata((src: "README.md", line: 9897))
#strong[UX Heuristics & Principles Evaluation — Usability · Inclusive Design · Information Architecture]

#metadata((src: "README.md", line: 9901))
#strong[Tabla 86]

#metadata((src: "README.md", line: 9903))
#emph[Datos de la evaluación]

#metadata((src: "README.md", line: 9905, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Valor]),
  tline,
  [CARRERA], [Ingeniería de Software],
  [CURSO], [1ACC0238 Aplicaciones para Dispositivos Móviles],
  [NRC], [4945],
  [PROFESORES], [Mayta Guillermo, Jorge Luis],
  [AUDITOR], [RouteGuard (Marcelo Pareja, Mathias de la Cruz, Manuel Francia, Nickolas Ramirez)],
  [CLIENTE(S)], [Paula Montoya y Neo Ramos (grupo auditado: RuwaLabs)],
  tline,
)

#metadata((src: "README.md", line: 9914))
#emph[Nota. Elaboración del equipo RouteGuard; la evaluación se realizó sobre los mock-ups de SaludYa.]

#metadata((src: "README.md", line: 9916))
#strong[SITE o APP A EVALUAR]

#metadata((src: "README.md", line: 9918))
#strong[SaludYa] — aplicación móvil Android para pacientes. La evaluación cubre los mock-ups de las secciones #strong[01 · Registro e inicio de sesión], #strong[02 · Perfil y menores], #strong[03 · Inicio y reservas], #strong[04 · Check-in y atención] y #strong[05 · Configuración] del #link("https://www.figma.com/design/jPJKqqqvre7HN5jwOPVvKM/REVISION-DE-HEURISTICAS---Mobile-Application-Mockups?node-id=57-626")[archivo de Figma].

#metadata((src: "README.md", line: 9920))
#strong[TAREAS A EVALUAR]

#metadata((src: "README.md", line: 9922))
El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas:

#metadata((src: "README.md", line: 9924))
+ Registro de un usuario nuevo (pasos 1 a 3 y verificación de correo)
+ Verificación de identidad con DNI durante el registro
+ Inicio de sesión de un paciente
+ Recuperación de contraseña por enlace al correo
+ Solicitud de ayuda cuando se perdió el acceso al correo
+ Consulta del perfil y de los datos personales del paciente
+ Vinculación de un menor y verificación de su identidad
+ Consulta de la lista y el detalle de menores vinculados
+ Consulta de citas pendientes desde el inicio
+ Consulta del detalle de una cita y cancelación de una reserva
+ Registro de llegada escaneando el QR del establecimiento
+ Consulta de la posición en la cola y del ticket digital
+ Atención de la llamada al consultorio y salida de la cola
+ Registro de llegada de un menor y consulta de su ticket
+ Recuperación de errores de llegada (QR no válido, fuera de plazo, ventana no habilitada, inasistencia)
+ Cambio de celular y de correo con verificación por código
+ Consulta del detalle de un menor, sincronización de datos y desvinculación
+ Uso de la vista del representado («Hola, Mateo»)
+ Filtrado del historial de citas por fecha
+ Inicio de una reserva: elegir especialidad, beneficiario y fecha
+ Cierre de sesión

#metadata((src: "README.md", line: 9946))
#strong[No están incluidas] en esta versión de la evaluación las siguientes tareas:

#metadata((src: "README.md", line: 9948))
+ Registro de personal por el Super Admin
+ Selección de horario y confirmación final de la reserva
+ Notificaciones y reasignación (sección 06)
+ Recuperación de contraseña por código (pantallas ocultas en el prototipo)
+ Cambio de contraseña desde Configuración (la pantalla no está en el prototipo)
+ Sección 09 · Variantes interactivas y estados
+ Flujos de Personal y de Administración (ver Evaluación 2)

#metadata((src: "README.md", line: 9956))
#strong[Alcance de la evaluación.] La evaluación integra los hallazgos de las secciones 01 a 05. Los problemas de las secciones 04 y 05 que ya estaban cubiertos por los de las secciones 01 a 03 no se repiten.

#metadata((src: "README.md", line: 9958))
#strong[ESCALA DE SEVERIDAD]

#metadata((src: "README.md", line: 9960))
Los errores se puntúan tomando en cuenta la siguiente escala de severidad:

#metadata((src: "README.md", line: 9962, kind: "table"))
#table(
  columns: 2,
  align: (center, left),
  table.header(table.cell(align: center)[Nivel], [Descripción]),
  tline,
  table.cell(align: center)[1], [#strong[Problema superficial:] puede ser fácilmente superado por el usuario y ocurre con muy poca frecuencia. No necesita ser arreglado a no ser que exista disponibilidad de tiempo.],
  table.cell(align: center)[2], [#strong[Problema menor:] puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debería asignar una prioridad baja de cara al siguiente release.],
  table.cell(align: center)[3], [#strong[Problema mayor:] ocurre frecuentemente o los usuarios no son capaces de resolverlo. Es importante que sea corregido y se le debe asignar una prioridad alta.],
  table.cell(align: center)[4], [#strong[Problema muy grave:] un error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento.],
  tline,
)

#metadata((src: "README.md", line: 9971))
#strong[Tabla 87]

#metadata((src: "README.md", line: 9973))
#emph[TABLA RESUMEN de la evaluación heurística]

#metadata((src: "README.md", line: 9975, kind: "table"))
#table(
  columns: 4,
  align: (center, left, center, left),
  table.header(table.cell(align: center)[\#], [Problema], table.cell(align: center)[Escala de severidad], [Heurística \/ Principio violado(a)]),
  tline,
  table.cell(align: center)[\---], [\---], table.cell(align: center)[\---], [\---],
  table.cell(align: center)[1], [El registro indica "PASO 3 DE 3" pero aún falta la verificación del correo], table.cell(align: center)[2], [Usability: Visibilidad del estado del sistema],
  table.cell(align: center)[2], [El mensaje "Correo verificado" dice que se validó el número], table.cell(align: center)[2], [Usability: Consistencia y estándares],
  table.cell(align: center)[3], [El login pide correo pero el mensaje de error habla de documento], table.cell(align: center)[3], [Usability: Consistencia y estándares],
  table.cell(align: center)[4], [Los campos de contraseña no muestran requisitos], table.cell(align: center)[3], [Usability: Prevención de errores],
  table.cell(align: center)[5], ["Reenviar código" es un texto plano sin estado ni tiempo de espera], table.cell(align: center)[2], [Usability: Visibilidad del estado del sistema],
  table.cell(align: center)[6], [Toda la interfaz está solo en español, sin selector de idioma], table.cell(align: center)[2], [Inclusive Design: Ofrece opciones],
  table.cell(align: center)[7], [Nombres distintos para la misma acción o pantalla ("Reservar una cita", "Reservar cita", "Reserva tu cita", "Mis citas")], table.cell(align: center)[1], [Information Architecture: Is it usable?],
  table.cell(align: center)[8], [El paciente llamado no ve cuánto tiempo le queda para llegar], table.cell(align: center)[3], [Usability: Visibilidad del estado del sistema],
  table.cell(align: center)[9], ["Has sido atendida" usa género fijo y no considera a quien representa a un menor], table.cell(align: center)[2], [Inclusive Design: Considera la situación],
  table.cell(align: center)[10], [El mismo ícono se usa para estados positivos, neutros y negativos], table.cell(align: center)[2], [Usability: Consistencia y estándares],
  table.cell(align: center)[11], [Avisos y errores terminan en "Entendido" sin una acción para recuperarse], table.cell(align: center)[2], [Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores],
  table.cell(align: center)[12], [Los campos de solo lectura se ven como campos editables], table.cell(align: center)[2], [Usability: Consistencia y estándares],
  table.cell(align: center)[13], [La pantalla que confirma el cambio de celular se titula "Verificar correo"], table.cell(align: center)[2], [Usability: Consistencia entre el sistema y el mundo real],
  table.cell(align: center)[14], ["Sincronizar" es un término técnico y una acción manual poco clara], table.cell(align: center)[2], [Usability: Consistencia entre el sistema y el mundo real],
  table.cell(align: center)[15], [El mensaje "Revisa el dato ingresado" no dice qué campo falló], table.cell(align: center)[2], [Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores],
  table.cell(align: center)[16], [Configuración no ofrece idioma, notificaciones ni opciones de accesibilidad], table.cell(align: center)[2], [Inclusive Design: Ofrece opciones],
  tline,
)

#metadata((src: "README.md", line: 9995))
#emph[Nota. Elaboración del equipo RouteGuard sobre los mock-ups de SaludYa.]

#metadata((src: "README.md", line: 9997))
#strong[DESCRIPCIÓN DE PROBLEMAS]

#heading(level: 3)[PROBLEMA \#1: El registro indica "PASO 3 DE 3" pero aún falta la verificación del correo] <sec:problema-1-el-registro-indica-paso-3-de-3-pero-aun-falta-la-verificacion-del-correo>
#metadata((src: "README.md", line: 9999, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10001))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Visibilidad del estado del sistema

#metadata((src: "README.md", line: 10004))
#strong[Problema:]
La pantalla "03 · Registro · Datos de acceso" muestra "PASO 3 DE 3", pero al pulsar "Verificar correo" el usuario llega a la pantalla "04 · Registro · Verificar correo", que no tiene indicador de paso. El usuario cree que terminó y encuentra un paso más, por lo que no sabe cuánto falta para crear su cuenta.

#metadata((src: "README.md", line: 10009))
#strong[Figura 213]

#metadata((src: "README.md", line: 10011))
#emph[Registro - Datos de acceso]

#metadata((src: "README.md", line: 10013, kind: "figure", img: "chapter-04/assets/heuristicas/01-registro-datos-acceso.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/01-registro-datos-acceso.png", alt: "Registro - Datos de acceso", width: 60%)]

#metadata((src: "README.md", line: 10015))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10019))
#strong[Figura 214]

#metadata((src: "README.md", line: 10021))
#emph[Registro - Verificar correo]

#metadata((src: "README.md", line: 10023, kind: "figure", img: "chapter-04/assets/heuristicas/02-registro-verificar-correo.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/02-registro-verificar-correo.png", alt: "Registro - Verificar correo", width: 60%)]

#metadata((src: "README.md", line: 10025))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10027))
#strong[Recomendación:]
Pasar a "PASO 4 DE 4" o mostrar que la verificación del correo forma parte del paso 3, y mantener el indicador en la pantalla de verificación.

#heading(level: 3)[PROBLEMA \#2: El mensaje "Correo verificado" dice que se validó el número] <sec:problema-2-el-mensaje-correo-verificado-dice-que-se-valido-el-numero>
#metadata((src: "README.md", line: 10030, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10032))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia y estándares

#metadata((src: "README.md", line: 10035))
#strong[Problema:]
El diálogo "Registro · Correo validado" tiene el título "Correo verificado", pero el texto indica "Tu número fue validado correctamente". El usuario no sabe si se verificó su correo o su celular, y el mensaje puede hacerle pensar que debe verificar otro dato.

#metadata((src: "README.md", line: 10040))
#strong[Figura 215]

#metadata((src: "README.md", line: 10042))
#emph[Diálogo correo verificado]

#metadata((src: "README.md", line: 10044, kind: "figure", img: "chapter-04/assets/heuristicas/03-dialogo-correo-verificado.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/03-dialogo-correo-verificado.png", alt: "Diálogo correo verificado", width: 60%)]

#metadata((src: "README.md", line: 10046))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10048))
#strong[Recomendación:]
Cambiar el texto a "Tu correo fue validado correctamente" para que coincida con el título y con el paso realizado.

#heading(level: 3)[PROBLEMA \#3: El login pide correo pero el mensaje de error habla de documento] <sec:problema-3-el-login-pide-correo-pero-el-mensaje-de-error-habla-de-documento>
#metadata((src: "README.md", line: 10051, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10053))
#strong[Severidad:] 3
#strong[Heurística violada:] Usabilidad - Consistencia y estándares

#metadata((src: "README.md", line: 10056))
#strong[Problema:]
La pantalla "05 · Login · Paciente" solicita correo electrónico y contraseña, pero el diálogo "Credenciales incorrectas" dice "El documento o la contraseña son incorrectos". Además, el registro empieza con el DNI, por lo que el usuario no tiene claro con qué dato debe ingresar. Esto genera reintentos fallidos y frustración.

#metadata((src: "README.md", line: 10061))
#strong[Figura 216]

#metadata((src: "README.md", line: 10063))
#emph[Login paciente]

#metadata((src: "README.md", line: 10065, kind: "figure", img: "chapter-04/assets/heuristicas/04-login-paciente.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/04-login-paciente.png", alt: "Login paciente", width: 60%)]

#metadata((src: "README.md", line: 10067))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10071))
#strong[Figura 217]

#metadata((src: "README.md", line: 10073))
#emph[Diálogo credenciales incorrectas]

#metadata((src: "README.md", line: 10075, kind: "figure", img: "chapter-04/assets/heuristicas/05-dialogo-credenciales-incorrectas.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/05-dialogo-credenciales-incorrectas.png", alt: "Diálogo credenciales incorrectas", width: 60%)]

#metadata((src: "README.md", line: 10077))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10079))
#strong[Recomendación:]
Unificar el identificador de acceso (correo o DNI) en el login y en sus mensajes, e indicar en el registro con qué dato se ingresará después.

#heading(level: 3)[PROBLEMA \#4: Los campos de contraseña no muestran requisitos] <sec:problema-4-los-campos-de-contrasena-no-muestran-requisitos>
#metadata((src: "README.md", line: 10082, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10084))
#strong[Severidad:] 3
#strong[Heurística violada:] Usabilidad - Prevención de errores

#metadata((src: "README.md", line: 10087))
#strong[Problema:]
Las pantallas "03 · Registro · Datos de acceso" y "10 · Recuperación · Nueva contraseña" piden crear una contraseña sin indicar longitud mínima, caracteres requeridos ni nivel de seguridad. El usuario descubre las reglas solo al fallar, y el único aviso previsto es el diálogo de contraseñas diferentes.

#metadata((src: "README.md", line: 10092))
#strong[Figura 218]

#metadata((src: "README.md", line: 10094))
#emph[Registro - Datos de acceso]

#metadata((src: "README.md", line: 10096, kind: "figure", img: "chapter-04/assets/heuristicas/01-registro-datos-acceso.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/01-registro-datos-acceso.png", alt: "Registro - Datos de acceso", width: 60%)]

#metadata((src: "README.md", line: 10098))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10102))
#strong[Figura 219]

#metadata((src: "README.md", line: 10104))
#emph[Recuperación - Nueva contraseña]

#metadata((src: "README.md", line: 10106, kind: "figure", img: "chapter-04/assets/heuristicas/06-recuperacion-nueva-contrasena.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/06-recuperacion-nueva-contrasena.png", alt: "Recuperación - Nueva contraseña", width: 60%)]

#metadata((src: "README.md", line: 10108))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10110))
#strong[Recomendación:]
Mostrar bajo el campo los requisitos de la contraseña y un indicador de seguridad, y validar mientras el usuario escribe.

#heading(level: 3)[PROBLEMA \#5: "Reenviar código" es un texto plano sin estado ni tiempo de espera] <sec:problema-5-reenviar-codigo-es-un-texto-plano-sin-estado-ni-tiempo-de-espera>
#metadata((src: "README.md", line: 10113, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10115))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Visibilidad del estado del sistema

#metadata((src: "README.md", line: 10118))
#strong[Problema:]
En "04 · Registro · Verificar correo" la acción "Reenviar código" es un texto de 18 px de alto que no indica si ya se envió, cuánto falta para poder reenviarlo ni la vigencia del código. El usuario no sabe si debe esperar o pulsarlo de nuevo.

#metadata((src: "README.md", line: 10123))
#strong[Figura 220]

#metadata((src: "README.md", line: 10125))
#emph[Registro - Verificar correo]

#metadata((src: "README.md", line: 10127, kind: "figure", img: "chapter-04/assets/heuristicas/02-registro-verificar-correo.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/02-registro-verificar-correo.png", alt: "Registro - Verificar correo", width: 60%)]

#metadata((src: "README.md", line: 10129))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10131))
#strong[Recomendación:]
Mostrar un contador ("Reenviar en 00:30"), confirmar el envío con un aviso y presentar la acción como un botón con área táctil adecuada.

#heading(level: 3)[PROBLEMA \#6: Toda la interfaz está solo en español, sin selector de idioma] <sec:problema-6-toda-la-interfaz-esta-solo-en-espanol-sin-selector-de-idioma>
#metadata((src: "README.md", line: 10134, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10136))
#strong[Severidad:] 2
#strong[Heurística violada:] Inclusive Design - Ofrece opciones

#metadata((src: "README.md", line: 10139))
#strong[Problema:]
En las pantallas revisadas todos los textos están en español y no hay una opción visible para cambiar de idioma. El proyecto requiere internacionalización (i18n) con inglés (en\_US) y español latinoamericano (es\_419), y el idioma por defecto de la interfaz debe ser el inglés.

#metadata((src: "README.md", line: 10144))
#strong[Figura 221]

#metadata((src: "README.md", line: 10146))
#emph[Dashboard inicio]

#metadata((src: "README.md", line: 10148, kind: "figure", img: "chapter-04/assets/heuristicas/07-dashboard-inicio.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/07-dashboard-inicio.png", alt: "Dashboard inicio", width: 60%)]

#metadata((src: "README.md", line: 10150))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10152))
#strong[Recomendación:]
Incluir en "Configuración" un selector de idioma (English \/ Español), definir inglés como idioma por defecto y preparar las cadenas para traducción.

#heading(level: 3)[PROBLEMA \#7: Nombres distintos para la misma acción o pantalla ("Reservar una cita", "Reservar cita", "Reserva tu cita", "Mis citas")] <sec:problema-7-nombres-distintos-para-la-misma-accion-o-pantalla-reservar-una-cita-reservar-cita-reserva-tu-cita-mis-citas>
#metadata((src: "README.md", line: 10155, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10157))
#strong[Severidad:] 1
#strong[Heurística violada:] Information Architecture - Is it usable?

#metadata((src: "README.md", line: 10160))
#strong[Problema:]
La acción de reservar aparece como "Reservar una cita" (botón de inicio), "Reservar cita" (navegación y estado vacío) y "Reserva tu cita" (título). La lista de citas se llama "Citas pendientes" y en la pantalla de error "Mis citas". Estas variaciones pueden hacer dudar si se trata de la misma función.

#metadata((src: "README.md", line: 10165))
#strong[Figura 222]

#metadata((src: "README.md", line: 10167))
#emph[Dashboard inicio]

#metadata((src: "README.md", line: 10169, kind: "figure", img: "chapter-04/assets/heuristicas/07-dashboard-inicio.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/07-dashboard-inicio.png", alt: "Dashboard inicio", width: 60%)]

#metadata((src: "README.md", line: 10171))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10175))
#strong[Figura 223]

#metadata((src: "README.md", line: 10177))
#emph[Error de carga]

#metadata((src: "README.md", line: 10179, kind: "figure", img: "chapter-04/assets/heuristicas/21-error-carga.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/21-error-carga.png", alt: "Error de carga", width: 60%)]

#metadata((src: "README.md", line: 10181))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10185))
#strong[Figura 224]

#metadata((src: "README.md", line: 10187))
#emph[Reserva - Especialidades]

#metadata((src: "README.md", line: 10189, kind: "figure", img: "chapter-04/assets/heuristicas/18-reserva-especialidad.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/18-reserva-especialidad.png", alt: "Reserva - Especialidades", width: 60%)]

#metadata((src: "README.md", line: 10191))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10193))
#strong[Recomendación:]
Definir un sistema de etiquetas y aplicar el mismo nombre en botones, navegación y títulos.

#heading(level: 3)[PROBLEMA \#8: El paciente llamado no ve cuánto tiempo le queda para llegar] <sec:problema-8-el-paciente-llamado-no-ve-cuanto-tiempo-le-queda-para-llegar>
#metadata((src: "README.md", line: 10196, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10198))
#strong[Severidad:] 3
#strong[Heurística violada:] Usabilidad - Visibilidad del estado del sistema

#metadata((src: "README.md", line: 10201))
#strong[Problema:]
En "A05 · Llamada a consultorio" el mensaje dice "Acércate dentro del plazo indicado por el establecimiento: 5 minutos" y solo muestra la hora de la llamada ("Llamada registrada: 09:15"). No hay contador regresivo ni hora límite, aunque el personal sí ve "Quedan 02:30" en su pantalla. Si el paciente no llega a tiempo, "A11 · Fuera del plazo" le avisa recién cuando la cita ya quedó como inasistencia. El paciente puede perder su turno sin haber visto cuánto tiempo tenía.

#metadata((src: "README.md", line: 10206))
#strong[Figura 225]

#metadata((src: "README.md", line: 10208))
#emph[A05 - Llamada a consultorio]

#metadata((src: "README.md", line: 10210, kind: "figure", img: "chapter-04/assets/heuristicas/A05-llamada-a-consultorio.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A05-llamada-a-consultorio.png", alt: "A05 - Llamada a consultorio", width: 60%)]

#metadata((src: "README.md", line: 10212))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10216))
#strong[Figura 226]

#metadata((src: "README.md", line: 10218))
#emph[A11 - Fuera del plazo]

#metadata((src: "README.md", line: 10220, kind: "figure", img: "chapter-04/assets/heuristicas/A11-fuera-del-plazo.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A11-fuera-del-plazo.png", alt: "A11 - Fuera del plazo", width: 60%)]

#metadata((src: "README.md", line: 10222))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10224))
#strong[Recomendación:]
Mostrar en A05 un contador regresivo y la hora límite ("Llega antes de las 09:20"), enviar una notificación al llamar y otra cuando falten 2 minutos. En A11 explicar cómo recuperar el turno.

#heading(level: 3)[PROBLEMA \#9: "Has sido atendida" usa género fijo y no considera a quien representa a un menor] <sec:problema-9-has-sido-atendida-usa-genero-fijo-y-no-considera-a-quien-representa-a-un-menor>
#metadata((src: "README.md", line: 10227, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10229))
#strong[Severidad:] 2
#strong[Heurística violada:] Diseño inclusivo - Considera la situación

#metadata((src: "README.md", line: 10232))
#strong[Problema:]
"A07 · Atención finalizada" dice "Has sido atendida", con género femenino fijo. La app la usan hombres y personas de otros géneros, y además un adulto puede ver los tickets de un menor (A15 · Ticket de menor, que es de Mateo). El mensaje no se adapta a ninguno de esos casos.

#metadata((src: "README.md", line: 10237))
#strong[Figura 227]

#metadata((src: "README.md", line: 10239))
#emph[A07 - Atención finalizada]

#metadata((src: "README.md", line: 10241, kind: "figure", img: "chapter-04/assets/heuristicas/A07-atencion-finalizada.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A07-atencion-finalizada.png", alt: "A07 - Atención finalizada", width: 60%)]

#metadata((src: "README.md", line: 10243))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10247))
#strong[Figura 228]

#metadata((src: "README.md", line: 10249))
#emph[A15 - Ticket de menor]

#metadata((src: "README.md", line: 10251, kind: "figure", img: "chapter-04/assets/heuristicas/A15-ticket-de-menor.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A15-ticket-de-menor.png", alt: "A15 - Ticket de menor", width: 60%)]

#metadata((src: "README.md", line: 10253))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10255))
#strong[Recomendación:]
Usar un texto neutro ("Tu atención finalizó") o personalizarlo según el beneficiario ("La atención de Mateo finalizó").

#heading(level: 3)[PROBLEMA \#10: El mismo ícono se usa para estados positivos, neutros y negativos] <sec:problema-10-el-mismo-icono-se-usa-para-estados-positivos-neutros-y-negativos>
#metadata((src: "README.md", line: 10258, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10260))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia y estándares

#metadata((src: "README.md", line: 10263))
#strong[Problema:]
La cruz médica verde aparece igual en "A03 · Salida registrada", "A06 · Sin llegada registrada", "A07 · Atención finalizada", "A16 · Turno ausente" y "C12 · Sin menores". Un resultado positivo (atendida) y uno negativo (inasistencia) se ven iguales, y el usuario debe leer el texto para saber qué pasó. En los diálogos de error se usa otro estilo (alerta roja), por lo que el criterio tampoco es uniforme.

#metadata((src: "README.md", line: 10268))
#strong[Figura 229]

#metadata((src: "README.md", line: 10270))
#emph[A07 - Atención finalizada]

#metadata((src: "README.md", line: 10272, kind: "figure", img: "chapter-04/assets/heuristicas/A07-atencion-finalizada.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A07-atencion-finalizada.png", alt: "A07 - Atención finalizada", width: 60%)]

#metadata((src: "README.md", line: 10274))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10278))
#strong[Figura 230]

#metadata((src: "README.md", line: 10280))
#emph[A16 - Turno ausente]

#metadata((src: "README.md", line: 10282, kind: "figure", img: "chapter-04/assets/heuristicas/A16-turno-ausente.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A16-turno-ausente.png", alt: "A16 - Turno ausente", width: 60%)]

#metadata((src: "README.md", line: 10284))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10286))
#strong[Recomendación:]
Usar un ícono distinto por tipo de estado (check para éxito, reloj para espera, alerta para problema) y combinar ícono, color y texto.

#heading(level: 3)[PROBLEMA \#11: Avisos y errores terminan en "Entendido" sin una acción para recuperarse] <sec:problema-11-avisos-y-errores-terminan-en-entendido-sin-una-accion-para-recuperarse>
#metadata((src: "README.md", line: 10289, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10291))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Ayudar a reconocer, diagnosticar y recuperarse de errores

#metadata((src: "README.md", line: 10294))
#strong[Problema:]
"C15 · Código vencido" dice "Solicita un nuevo código para completar el cambio", pero su único botón es "Entendido", así que el usuario debe cerrar el diálogo y buscar "Reenviar código". "C18 · Vínculo no acreditado" remite a "admisión" sin ningún canal de contacto. "A11 · Fuera del plazo" y "A16 · Turno ausente" informan la inasistencia, pero solo ofrecen "Entendido" o "Ver mis citas", sin reprogramar ni contactar. El usuario queda sin siguiente paso.

#metadata((src: "README.md", line: 10299))
#strong[Figura 231]

#metadata((src: "README.md", line: 10301))
#emph[C15 - Código vencido]

#metadata((src: "README.md", line: 10303, kind: "figure", img: "chapter-04/assets/heuristicas/C15-codigo-vencido.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C15-codigo-vencido.png", alt: "C15 - Código vencido", width: 60%)]

#metadata((src: "README.md", line: 10305))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10309))
#strong[Figura 232]

#metadata((src: "README.md", line: 10311))
#emph[C18 - Vínculo no acreditado]

#metadata((src: "README.md", line: 10313, kind: "figure", img: "chapter-04/assets/heuristicas/C18-vinculo-no-acreditado.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C18-vinculo-no-acreditado.png", alt: "C18 - Vínculo no acreditado", width: 60%)]

#metadata((src: "README.md", line: 10315))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10319))
#strong[Figura 233]

#metadata((src: "README.md", line: 10321))
#emph[A16 - Turno ausente]

#metadata((src: "README.md", line: 10323, kind: "figure", img: "chapter-04/assets/heuristicas/A16-turno-ausente.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/A16-turno-ausente.png", alt: "A16 - Turno ausente", width: 60%)]

#metadata((src: "README.md", line: 10325))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10327))
#strong[Recomendación:]
Ofrecer la acción de recuperación en el mismo diálogo ("Solicitar nuevo código", "Reservar de nuevo", "Contactar a admisión" con teléfono o dirección) y reservar "Entendido" para avisos que no requieren acción.

#heading(level: 3)[PROBLEMA \#12: Los campos de solo lectura se ven como campos editables] <sec:problema-12-los-campos-de-solo-lectura-se-ven-como-campos-editables>
#metadata((src: "README.md", line: 10330, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10332))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia y estándares

#metadata((src: "README.md", line: 10335))
#strong[Problema:]
En "C02 · Mis datos", "Nombre" y "Documento" (solo lectura) tienen el mismo cuadro blanco que "Celular" y "Correo", que sí se pueden cambiar. En estos últimos, la única parte accionable es el pequeño texto "Editar →" dentro del cuadro. El usuario toca el nombre y no pasa nada, y puede no notar el enlace "Editar". La nota que lo explica ("Los datos de identidad verificados se muestran para consulta") está al final y en letra pequeña.

#metadata((src: "README.md", line: 10340))
#strong[Figura 234]

#metadata((src: "README.md", line: 10342))
#emph[C02 - Mis datos]

#metadata((src: "README.md", line: 10344, kind: "figure", img: "chapter-04/assets/heuristicas/C02-mis-datos.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C02-mis-datos.png", alt: "C02 - Mis datos", width: 60%)]

#metadata((src: "README.md", line: 10346))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10348))
#strong[Recomendación:]
Mostrar los datos de solo lectura como texto (sin cuadro) o con estilo deshabilitado y un ícono de candado. Hacer que todo el campo editable sea tocable y con un ícono de lápiz visible.

#heading(level: 3)[PROBLEMA \#13: La pantalla que confirma el cambio de celular se titula "Verificar correo"] <sec:problema-13-la-pantalla-que-confirma-el-cambio-de-celular-se-titula-verificar-correo>
#metadata((src: "README.md", line: 10351, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10353))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia entre el sistema y el mundo real

#metadata((src: "README.md", line: 10356))
#strong[Problema:]
"C05 · Confirmar cambio por correo" se titula "Verificar correo", pero su texto dice "...enviado a tu correo registrado para confirmar el cambio de celular". El usuario que quiere cambiar el celular lee que debe "verificar el correo" y puede creer que cambió algo del correo. "C06" usa el mismo título para verificar realmente un correo nuevo, así que dos tareas distintas comparten pantalla de aspecto idéntico.

#metadata((src: "README.md", line: 10361))
#strong[Figura 235]

#metadata((src: "README.md", line: 10363))
#emph[C05 - Confirmar cambio por correo]

#metadata((src: "README.md", line: 10365, kind: "figure", img: "chapter-04/assets/heuristicas/C05-confirmar-cambio-por-correo.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C05-confirmar-cambio-por-correo.png", alt: "C05 - Confirmar cambio por correo", width: 60%)]

#metadata((src: "README.md", line: 10367))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10371))
#strong[Figura 236]

#metadata((src: "README.md", line: 10373))
#emph[C06 - Verificar correo]

#metadata((src: "README.md", line: 10375, kind: "figure", img: "chapter-04/assets/heuristicas/C06-verificar-correo.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C06-verificar-correo.png", alt: "C06 - Verificar correo", width: 60%)]

#metadata((src: "README.md", line: 10377))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10379))
#strong[Recomendación:]
Titular cada pantalla según la tarea ("Confirmar cambio de celular" y "Verificar tu nuevo correo") y repetir el dato que se está cambiando.

#heading(level: 3)[PROBLEMA \#14: "Sincronizar" es un término técnico y una acción manual poco clara] <sec:problema-14-sincronizar-es-un-termino-tecnico-y-una-accion-manual-poco-clara>
#metadata((src: "README.md", line: 10382, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10384))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia entre el sistema y el mundo real

#metadata((src: "README.md", line: 10387))
#strong[Problema:]
"C07 · Parientes vinculados" ofrece "Sincronizar vínculos" y "C08 · Detalle del menor" ofrece "Sincronizar datos". No se explica qué se sincroniza, con qué ni cuándo conviene hacerlo. Una persona no técnica no sabe si debe pulsarlo, y la sincronización debería ser automática. El resultado ("C13 · Vínculos sincronizados") tampoco aclara qué cambió.

#metadata((src: "README.md", line: 10392))
#strong[Figura 237]

#metadata((src: "README.md", line: 10394))
#emph[C07 - Parientes vinculados]

#metadata((src: "README.md", line: 10396, kind: "figure", img: "chapter-04/assets/heuristicas/C07-parientes-vinculados.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C07-parientes-vinculados.png", alt: "C07 - Parientes vinculados", width: 60%)]

#metadata((src: "README.md", line: 10398))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10402))
#strong[Figura 238]

#metadata((src: "README.md", line: 10404))
#emph[C08 - Detalle del menor]

#metadata((src: "README.md", line: 10406, kind: "figure", img: "chapter-04/assets/heuristicas/C08-detalle-del-menor.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C08-detalle-del-menor.png", alt: "C08 - Detalle del menor", width: 60%)]

#metadata((src: "README.md", line: 10408))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10410))
#strong[Recomendación:]
Reemplazarlo por una actualización automática o por un texto comprensible ("Actualizar datos de Mateo") con una línea que explique para qué sirve, y mostrar la fecha de la última actualización.

#heading(level: 3)[PROBLEMA \#15: El mensaje "Revisa el dato ingresado" no dice qué campo falló] <sec:problema-15-el-mensaje-revisa-el-dato-ingresado-no-dice-que-campo-fallo>
#metadata((src: "README.md", line: 10413, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10415))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Ayudar a reconocer, diagnosticar y recuperarse de errores

#metadata((src: "README.md", line: 10418))
#strong[Problema:]
"C17 · Dato inválido" dice "Ingresa un correo válido o un celular de 9 dígitos, según el campo". El mismo mensaje sirve para dos pantallas distintas y obliga al usuario a deducir cuál es el suyo. Además, aparece en un diálogo que tapa el campo con error.

#metadata((src: "README.md", line: 10423))
#strong[Figura 239]

#metadata((src: "README.md", line: 10425))
#emph[C17 - Dato inválido]

#metadata((src: "README.md", line: 10427, kind: "figure", img: "chapter-04/assets/heuristicas/C17-dato-invalido.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C17-dato-invalido.png", alt: "C17 - Dato inválido", width: 60%)]

#metadata((src: "README.md", line: 10429))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10431))
#strong[Recomendación:]
Mostrar el error junto al campo con un mensaje específico ("El celular debe tener 9 dígitos" o "Ingresa un correo válido, por ejemplo #link("mailto:nombre@correo.com")[nombre\@correo.com]") y validar mientras se escribe.

#heading(level: 3)[PROBLEMA \#16: Configuración no ofrece idioma, notificaciones ni opciones de accesibilidad] <sec:problema-16-configuracion-no-ofrece-idioma-notificaciones-ni-opciones-de-accesibilidad>
#metadata((src: "README.md", line: 10434, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10436))
#strong[Severidad:] 2
#strong[Heurística violada:] Diseño inclusivo - Ofrece opciones

#metadata((src: "README.md", line: 10439))
#strong[Problema:]
"C01 · Configuración" solo tiene cuatro botones iguales: "Mis datos", "Parientes vinculados", "Cambiar contraseña" y "Cerrar sesión". No hay selector de idioma (el proyecto exige español e inglés), ajustes de notificaciones ni opciones de accesibilidad como tamaño de texto o contraste. "Cerrar sesión" tiene el mismo peso visual que las funciones de navegación.

#metadata((src: "README.md", line: 10442))
#strong[Relación con otros hallazgos:] el selector de idioma ya se reportó en el problema \#6; este problema amplía el hallazgo a las opciones de notificación y accesibilidad.

#metadata((src: "README.md", line: 10446))
#strong[Figura 240]

#metadata((src: "README.md", line: 10448))
#emph[C01 - Configuración]

#metadata((src: "README.md", line: 10450, kind: "figure", img: "chapter-04/assets/heuristicas/C01-configuracion.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/C01-configuracion.png", alt: "C01 - Configuración", width: 60%)]

#metadata((src: "README.md", line: 10452))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10454))
#strong[Recomendación:]
Agregar un selector de idioma (inglés por defecto), preferencias de notificación y tamaño de texto, y separar "Cerrar sesión" del resto como acción distinta.

#metadata((src: "README.md", line: 10457))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#heading(level: 3)[Evaluación 2 — Aplicación Flutter (personal y administración)] <sec:evaluacion-2-aplicacion-flutter-personal-y-administracion>
#metadata((src: "README.md", line: 10459, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10461))
#strong[UX Heuristics & Principles Evaluation — Usability · Inclusive Design · Information Architecture]

#metadata((src: "README.md", line: 10465))
#strong[Tabla 88]

#metadata((src: "README.md", line: 10467))
#emph[Datos de la evaluación]

#metadata((src: "README.md", line: 10469, kind: "table"))
#table(
  columns: 2,
  align: (left, left),
  table.header([Campo], [Valor]),
  tline,
  [CARRERA], [Ingeniería de Software],
  [CURSO], [1ACC0238 Aplicaciones para Dispositivos Móviles],
  [NRC], [4945],
  [PROFESORES], [Mayta Guillermo, Jorge Luis],
  [AUDITOR], [RouteGuard (Marcelo Pareja, Mathias de la Cruz, Manuel Francia, Nickolas Ramirez)],
  [CLIENTE(S)], [Paula Montoya y Neo Ramos (grupo auditado: RuwaLabs)],
  tline,
)

#metadata((src: "README.md", line: 10478))
#emph[Nota. Elaboración del equipo RouteGuard; la evaluación se realizó sobre los mock-ups de SaludYa.]

#metadata((src: "README.md", line: 10480))
#strong[SITE o APP A EVALUAR]

#metadata((src: "README.md", line: 10482))
#strong[SaludYa] — aplicación Flutter para el personal de admisión y la administración del establecimiento. La evaluación cubre los mock-ups de las secciones #strong[07 · Citas y atención · Personal] y #strong[08 · Configuración e indicadores · Administración] del #link("https://www.figma.com/design/jPJKqqqvre7HN5jwOPVvKM/REVISION-DE-HEURISTICAS---Mobile-Application-Mockups?node-id=57-626")[archivo de Figma].

#metadata((src: "README.md", line: 10484))
#strong[TAREAS A EVALUAR]

#metadata((src: "README.md", line: 10486))
El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas:

#metadata((src: "README.md", line: 10488))
+ Consultar el inicio del personal (citas pendientes y canceladas)
+ Consultar el calendario operativo y los bloques del día
+ Consultar, editar y guardar un bloque de atención
+ Elegir especialidad, profesional y horario
+ Gestionar la cola presencial (llamar, iniciar y terminar atención)
+ Marcar a un paciente como ausente
+ Registrar la llegada de un paciente por QR o por código manual
+ Consultar citas canceladas y pacientes con reserva
+ Consultar y editar las reglas del establecimiento (capacidad, tolerancia, plazos, intervalos)
+ Consultar indicadores diarios y demanda por especialidad
+ Exportar un reporte por rango de fechas

#metadata((src: "README.md", line: 10500))
#strong[No están incluidas] en esta versión de la evaluación las siguientes tareas:

#metadata((src: "README.md", line: 10502))
+ Flujos del paciente (ver Evaluación 1)
+ Sección 09 · Variantes interactivas y estados
+ Gestión de cuentas del personal (registro por el Super Admin)

#metadata((src: "README.md", line: 10506))
#strong[Alcance de la evaluación.] La evaluación se concentra en los problemas propios de las pantallas de personal y administración.

#metadata((src: "README.md", line: 10508))
#strong[ESCALA DE SEVERIDAD]

#metadata((src: "README.md", line: 10510))
Los errores se puntúan tomando en cuenta la siguiente escala de severidad:

#metadata((src: "README.md", line: 10512, kind: "table"))
#table(
  columns: 2,
  align: (center, left),
  table.header(table.cell(align: center)[Nivel], [Descripción]),
  tline,
  table.cell(align: center)[1], [#strong[Problema superficial:] puede ser fácilmente superado por el usuario y ocurre con muy poca frecuencia. No necesita ser arreglado a no ser que exista disponibilidad de tiempo.],
  table.cell(align: center)[2], [#strong[Problema menor:] puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debería asignar una prioridad baja de cara al siguiente release.],
  table.cell(align: center)[3], [#strong[Problema mayor:] ocurre frecuentemente o los usuarios no son capaces de resolverlo. Es importante que sea corregido y se le debe asignar una prioridad alta.],
  table.cell(align: center)[4], [#strong[Problema muy grave:] un error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento.],
  tline,
)

#metadata((src: "README.md", line: 10521))
#strong[Tabla 89]

#metadata((src: "README.md", line: 10523))
#emph[TABLA RESUMEN de la evaluación heurística]

#metadata((src: "README.md", line: 10525, kind: "table"))
#table(
  columns: 4,
  align: (center, left, center, left),
  table.header(table.cell(align: center)[\#], [Problema], table.cell(align: center)[Escala de severidad], [Heurística \/ Principio violado(a)]),
  tline,
  table.cell(align: center)[1], [Los estados de bloques, turnos y pacientes se distinguen solo por texto verde], table.cell(align: center)[2], [Inclusive Design: Proporciona experiencias comparables],
  table.cell(align: center)[2], [Editar un bloque no muestra qué reservas se verán afectadas], table.cell(align: center)[3], [Usability: Prevención de errores],
  table.cell(align: center)[3], [Elegir profesional y horario no indica la tarea ni la selección actual], table.cell(align: center)[2], [Usability: Visibilidad del estado del sistema],
  table.cell(align: center)[4], ["Terminar atención" se ejecuta sin confirmación ni opción de deshacer], table.cell(align: center)[2], [Usability: Libertad y control del usuario],
  table.cell(align: center)[5], ["Marcar ausente" es el botón más llamativo y su confirmación usa otro color], table.cell(align: center)[2], [Usability: Prevención de errores],
  table.cell(align: center)[6], [La pestaña "Cita" con ícono de QR se confunde con "Calendario"], table.cell(align: center)[2], [Information Architecture: Is it findable?],
  table.cell(align: center)[7], [Las reglas del establecimiento están repartidas en tres lugares], table.cell(align: center)[2], [Information Architecture: Is it findable?],
  table.cell(align: center)[8], ["Prioridad de reasignación: Por especialidad" contradice la nota que la explica], table.cell(align: center)[2], [Usability: Consistencia entre el sistema y el mundo real],
  table.cell(align: center)[9], [El mensaje de validación de capacidad mezcla reglas que no corresponden], table.cell(align: center)[2], [Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores],
  table.cell(align: center)[10], [Los indicadores no muestran un control para cambiar la fecha o el periodo], table.cell(align: center)[2], [Usability: Visibilidad del estado del sistema],
  table.cell(align: center)[11], [Descargar un reporte requiere dos pasos y no indica formato ni archivo], table.cell(align: center)[2], [Usability: Eficiencia de uso],
  tline,
)

#metadata((src: "README.md", line: 10539))
#emph[Nota. Elaboración del equipo RouteGuard sobre los mock-ups de SaludYa.]

#metadata((src: "README.md", line: 10541))
#strong[DESCRIPCIÓN DE PROBLEMAS]

#heading(level: 3)[PROBLEMA \#1: Los estados de bloques, turnos y pacientes se distinguen solo por texto verde] <sec:problema-1-los-estados-de-bloques-turnos-y-pacientes-se-distinguen-solo-por-texto-verde>
#metadata((src: "README.md", line: 10543, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10545))
#strong[Severidad:] 2
#strong[Heurística violada:] Diseño inclusivo - Proporciona experiencias comparables

#metadata((src: "README.md", line: 10548))
#strong[Problema:]
En "P04 · Bloques de hoy" los estados "Abierto →" y "Completo →" se muestran con el mismo texto verde pequeño, así que un bloque lleno no se distingue de uno con cupos. Pasa lo mismo en "P11 · Cola presencial" ("En atención" y "En espera") y en "P20 · Pacientes con reserva" ("Llegada registrada", "Pendiente de llegada" y "En atención"). Para escanear rápido una lista de decenas de ítems hay que leer cada texto, y una persona con daltonismo no tiene otra pista.

#metadata((src: "README.md", line: 10553))
#strong[Figura 241]

#metadata((src: "README.md", line: 10555))
#emph[P04 - Bloques de hoy]

#metadata((src: "README.md", line: 10557, kind: "figure", img: "chapter-04/assets/heuristicas/P04-bloques-de-hoy.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P04-bloques-de-hoy.png", alt: "P04 - Bloques de hoy", width: 60%)]

#metadata((src: "README.md", line: 10559))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10563))
#strong[Figura 242]

#metadata((src: "README.md", line: 10565))
#emph[P11 - Cola presencial]

#metadata((src: "README.md", line: 10567, kind: "figure", img: "chapter-04/assets/heuristicas/P11-cola-presencial.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P11-cola-presencial.png", alt: "P11 - Cola presencial", width: 60%)]

#metadata((src: "README.md", line: 10569))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10573))
#strong[Figura 243]

#metadata((src: "README.md", line: 10575))
#emph[P20 - Pacientes con reserva]

#metadata((src: "README.md", line: 10577, kind: "figure", img: "chapter-04/assets/heuristicas/P20-pacientes-con-reserva.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P20-pacientes-con-reserva.png", alt: "P20 - Pacientes con reserva", width: 60%)]

#metadata((src: "README.md", line: 10579))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10581))
#strong[Recomendación:]
Usar etiquetas tipo "chip" con ícono, forma y color distintos por estado (por ejemplo, rojo con candado para "Completo", verde para "Abierto") y separar el estado de la flecha de navegación.

#heading(level: 3)[PROBLEMA \#2: Editar un bloque no muestra qué reservas se verán afectadas] <sec:problema-2-editar-un-bloque-no-muestra-que-reservas-se-veran-afectadas>
#metadata((src: "README.md", line: 10584, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10586))
#strong[Severidad:] 3
#strong[Heurística violada:] Usabilidad - Prevención de errores

#metadata((src: "README.md", line: 10589))
#strong[Problema:]
"P05" indica que el bloque 09:00–09:30 tiene "Capacidad: 8 · Reservas: 8". En "P07 · Editar bloque" se puede cambiar la hora, la especialidad, el profesional y el estado, y solo hay "Confirmar cambios" y "Cancelar". No se muestra cuántos pacientes se afectan ni cuáles, y si hay conflicto "P23" solo dice "El cambio entra en conflicto con reservas confirmadas o con otro bloque del profesional", sin indicar cuál. Un cambio mal hecho puede mover o cancelar citas de hasta 8 pacientes sin que el personal lo sepa.

#metadata((src: "README.md", line: 10594))
#strong[Figura 244]

#metadata((src: "README.md", line: 10596))
#emph[P07 - Editar bloque]

#metadata((src: "README.md", line: 10598, kind: "figure", img: "chapter-04/assets/heuristicas/P07-editar-bloque.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P07-editar-bloque.png", alt: "P07 - Editar bloque", width: 60%)]

#metadata((src: "README.md", line: 10600))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10604))
#strong[Figura 245]

#metadata((src: "README.md", line: 10606))
#emph[P23 - Cambio incompatible]

#metadata((src: "README.md", line: 10608, kind: "figure", img: "chapter-04/assets/heuristicas/P23-cambio-incompatible.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P23-cambio-incompatible.png", alt: "P23 - Cambio incompatible", width: 60%)]

#metadata((src: "README.md", line: 10610))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10612))
#strong[Recomendación:]
Mostrar, antes de confirmar, un resumen del impacto ("Afecta a 8 reservas") con la lista y las opciones (notificar, reasignar, cancelar). En P23 indicar la reserva o el bloque exacto con el que hay conflicto.

#heading(level: 3)[PROBLEMA \#3: Elegir profesional y horario no indica la tarea ni la selección actual] <sec:problema-3-elegir-profesional-y-horario-no-indica-la-tarea-ni-la-seleccion-actual>
#metadata((src: "README.md", line: 10615, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10617))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Visibilidad del estado del sistema

#metadata((src: "README.md", line: 10620))
#strong[Problema:]
"P08 · Elegir profesional", "P09 · Elegir horario" y "P10 · Horario por profesional" no dicen para qué se elige (¿reasignar una cita?, ¿crear una reserva?, ¿consultar?). En P08 cada tarjeta tiene "Seleccionar →" pero ninguna muestra estado seleccionado antes de "Continuar". En P09 y P10 el horario elegido solo se indica con el texto pequeño "· Seleccionado", sin resaltar la tarjeta. Además, P09 y P10 son casi idénticas.

#metadata((src: "README.md", line: 10625))
#strong[Figura 246]

#metadata((src: "README.md", line: 10627))
#emph[P08 - Elegir profesional]

#metadata((src: "README.md", line: 10629, kind: "figure", img: "chapter-04/assets/heuristicas/P08-elegir-profesional.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P08-elegir-profesional.png", alt: "P08 - Elegir profesional", width: 60%)]

#metadata((src: "README.md", line: 10631))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10635))
#strong[Figura 247]

#metadata((src: "README.md", line: 10637))
#emph[P09 - Elegir horario]

#metadata((src: "README.md", line: 10639, kind: "figure", img: "chapter-04/assets/heuristicas/P09-elegir-horario.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P09-elegir-horario.png", alt: "P09 - Elegir horario", width: 60%)]

#metadata((src: "README.md", line: 10641))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10645))
#strong[Figura 248]

#metadata((src: "README.md", line: 10647))
#emph[P10 - Horario por profesional]

#metadata((src: "README.md", line: 10649, kind: "figure", img: "chapter-04/assets/heuristicas/P10-horario-por-profesional.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P10-horario-por-profesional.png", alt: "P10 - Horario por profesional", width: 60%)]

#metadata((src: "README.md", line: 10651))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10653))
#strong[Recomendación:]
Indicar la tarea en el título o subtítulo ("Reasignar cita de Lucía Torres"), resaltar la tarjeta elegida (borde, fondo, check) y fusionar P09 y P10 en un solo selector.

#heading(level: 3)[PROBLEMA \#4: "Terminar atención" se ejecuta sin confirmación ni opción de deshacer] <sec:problema-4-terminar-atencion-se-ejecuta-sin-confirmacion-ni-opcion-de-deshacer>
#metadata((src: "README.md", line: 10656, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10658))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Libertad y control del usuario

#metadata((src: "README.md", line: 10661))
#strong[Problema:]
En "P11 · Cola presencial" el botón principal "Terminar atención de N.º 1" cierra la atención y retira al paciente de la cola ("P17 · Atención finalizada" aparece después). No hay confirmación previa ni un "Deshacer", y el botón está a solo 14 px de "Llamar al siguiente". Un toque equivocado deja a un paciente fuera de la cola sin forma visible de revertirlo.

#metadata((src: "README.md", line: 10666))
#strong[Figura 249]

#metadata((src: "README.md", line: 10668))
#emph[P11 - Cola presencial]

#metadata((src: "README.md", line: 10670, kind: "figure", img: "chapter-04/assets/heuristicas/P11-cola-presencial.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P11-cola-presencial.png", alt: "P11 - Cola presencial", width: 60%)]

#metadata((src: "README.md", line: 10672))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10676))
#strong[Figura 250]

#metadata((src: "README.md", line: 10678))
#emph[P17 - Atención finalizada]

#metadata((src: "README.md", line: 10680, kind: "figure", img: "chapter-04/assets/heuristicas/P17-atencion-finalizada.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P17-atencion-finalizada.png", alt: "P17 - Atención finalizada", width: 60%)]

#metadata((src: "README.md", line: 10682))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10684))
#strong[Recomendación:]
Pedir confirmación breve ("¿Terminar la atención de María Pérez?") o mostrar un aviso con "Deshacer" durante unos segundos, y separar mejor los dos botones.

#heading(level: 3)[PROBLEMA \#5: "Marcar ausente" es el botón más llamativo y su confirmación usa otro color] <sec:problema-5-marcar-ausente-es-el-boton-mas-llamativo-y-su-confirmacion-usa-otro-color>
#metadata((src: "README.md", line: 10687, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10689))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Prevención de errores

#metadata((src: "README.md", line: 10692))
#strong[Problema:]
En "P13 · Plazo de llamada vencido" el botón rojo relleno "Marcar ausente" está arriba y es el más prominente, mientras "Iniciar atención" (la opción que puede ser correcta si el paciente llegó) es un botón de borde. Luego, en "P16 · Confirmar ausencia" el botón "Confirmar ausencia" es verde, el color de las acciones positivas, aunque es una acción que libera el cupo y marca inasistencia. El color no es coherente y la confirmación se ve igual que cualquier otra.

#metadata((src: "README.md", line: 10697))
#strong[Figura 251]

#metadata((src: "README.md", line: 10699))
#emph[P13 - Plazo de llamada vencido]

#metadata((src: "README.md", line: 10701, kind: "figure", img: "chapter-04/assets/heuristicas/P13-plazo-de-llamada-vencido.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P13-plazo-de-llamada-vencido.png", alt: "P13 - Plazo de llamada vencido", width: 60%)]

#metadata((src: "README.md", line: 10703))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10707))
#strong[Figura 252]

#metadata((src: "README.md", line: 10709))
#emph[P16 - Confirmar ausencia]

#metadata((src: "README.md", line: 10711, kind: "figure", img: "chapter-04/assets/heuristicas/P16-confirmar-ausencia.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P16-confirmar-ausencia.png", alt: "P16 - Confirmar ausencia", width: 60%)]

#metadata((src: "README.md", line: 10713))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10715))
#strong[Recomendación:]
Dar prioridad visual a "Iniciar atención" y dejar "Marcar ausente" como acción secundaria de advertencia. En P16 usar el mismo color de advertencia en "Confirmar ausencia" y dejar "Volver" como opción segura destacada.

#heading(level: 3)[PROBLEMA \#6: La pestaña "Cita" con ícono de QR se confunde con "Calendario"] <sec:problema-6-la-pestana-cita-con-icono-de-qr-se-confunde-con-calendario>
#metadata((src: "README.md", line: 10718, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10720))
#strong[Severidad:] 2
#strong[Heurística violada:] Arquitectura de información - Is it findable?

#metadata((src: "README.md", line: 10723))
#strong[Problema:]
La barra inferior del personal tiene "Inicio", "Calendario", "Cita" y "Configuración". "Calendario" y "Cita" se refieren casi a lo mismo (citas), pero "Cita" abre la cola de atención y el registro de llegada, y su ícono es un QR. El ícono de "Configuración" es un sol. Quien busca la cola de atención no sabe si está en "Calendario" o en "Cita".

#metadata((src: "README.md", line: 10728))
#strong[Figura 253]

#metadata((src: "README.md", line: 10730))
#emph[P11 - Cola presencial]

#metadata((src: "README.md", line: 10732, kind: "figure", img: "chapter-04/assets/heuristicas/P11-cola-presencial.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P11-cola-presencial.png", alt: "P11 - Cola presencial", width: 60%)]

#metadata((src: "README.md", line: 10734))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10738))
#strong[Figura 254]

#metadata((src: "README.md", line: 10740))
#emph[P01 - Inicio del personal]

#metadata((src: "README.md", line: 10742, kind: "figure", img: "chapter-04/assets/heuristicas/P01-inicio-del-personal.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/P01-inicio-del-personal.png", alt: "P01 - Inicio del personal", width: 60%)]

#metadata((src: "README.md", line: 10744))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10746))
#strong[Recomendación:]
Renombrar según la tarea ("Cola" o "Atención"), usar un ícono acorde (personas en fila) y cambiar el sol por un engranaje.

#heading(level: 3)[PROBLEMA \#7: Las reglas del establecimiento están repartidas en tres lugares] <sec:problema-7-las-reglas-del-establecimiento-estan-repartidas-en-tres-lugares>
#metadata((src: "README.md", line: 10749, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10751))
#strong[Severidad:] 2
#strong[Heurística violada:] Arquitectura de información - Is it findable?

#metadata((src: "README.md", line: 10754))
#strong[Problema:]
"H01 · Configuración general" muestra cuatro reglas (capacidad, tolerancia de llegada, plazo después de la llamada, respuesta a reasignación) y un botón "Ver más reglas". "H02 · Más reglas" muestra otras cuatro (hora límite para reservar, anticipación para cancelar, prioridad de reasignación, posición de cola visible) y un botón aparte "Intervalos de atención" que abre "H13". Todas son reglas del mismo tipo, pero están en tres niveles. Para ver o cambiar una regla hay que recordar en cuál se encuentra.

#metadata((src: "README.md", line: 10759))
#strong[Figura 255]

#metadata((src: "README.md", line: 10761))
#emph[H01 - Configuración general]

#metadata((src: "README.md", line: 10763, kind: "figure", img: "chapter-04/assets/heuristicas/H01-configuracion-general.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H01-configuracion-general.png", alt: "H01 - Configuración general", width: 60%)]

#metadata((src: "README.md", line: 10765))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10769))
#strong[Figura 256]

#metadata((src: "README.md", line: 10771))
#emph[H02 - Reglas adicionales]

#metadata((src: "README.md", line: 10773, kind: "figure", img: "chapter-04/assets/heuristicas/H02-reglas-adicionales.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H02-reglas-adicionales.png", alt: "H02 - Reglas adicionales", width: 60%)]

#metadata((src: "README.md", line: 10775))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10777))
#strong[Recomendación:]
Reunir todas las reglas en una sola lista agrupada por tema (Reservas, Llegada y atención, Reasignación) con buscador o secciones, y dejar la edición como destino de cada fila.

#heading(level: 3)[PROBLEMA \#8: "Prioridad de reasignación: Por especialidad" contradice la nota que la explica] <sec:problema-8-prioridad-de-reasignacion-por-especialidad-contradice-la-nota-que-la-explica>
#metadata((src: "README.md", line: 10780, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10782))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Consistencia entre el sistema y el mundo real

#metadata((src: "README.md", line: 10785))
#strong[Problema:]
En "H02" la tarjeta indica "Prioridad de reasignación: Por especialidad", pero la nota inferior dice "La prioridad de reasignación sigue el orden de reserva. La atención sigue el orden de llegada". No se entiende cuál es el criterio real (especialidad u orden de reserva), y la nota, que es la única explicación, está en letra pequeña. Una regla de este tipo afecta a muchos pacientes.

#metadata((src: "README.md", line: 10790))
#strong[Figura 257]

#metadata((src: "README.md", line: 10792))
#emph[H02 - Reglas adicionales]

#metadata((src: "README.md", line: 10794, kind: "figure", img: "chapter-04/assets/heuristicas/H02-reglas-adicionales.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H02-reglas-adicionales.png", alt: "H02 - Reglas adicionales", width: 60%)]

#metadata((src: "README.md", line: 10796))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10798))
#strong[Recomendación:]
Definir un solo criterio y expresarlo claro ("Se reasigna primero a quien reservó antes, dentro de la misma especialidad"), con la explicación junto a la regla y en un tamaño legible.

#heading(level: 3)[PROBLEMA \#9: El mensaje de validación de capacidad mezcla reglas que no corresponden] <sec:problema-9-el-mensaje-de-validacion-de-capacidad-mezcla-reglas-que-no-corresponden>
#metadata((src: "README.md", line: 10801, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10803))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Ayudar a reconocer, diagnosticar y recuperarse de errores

#metadata((src: "README.md", line: 10806))
#strong[Problema:]
"H05 · Validación de regla" dice "La capacidad debe ser mayor que cero. La tolerancia de llegada no puede superar la duración del intervalo. Revisa los campos antes de guardar". Al editar la capacidad, el segundo mensaje no tiene relación y el usuario no sabe cuál de las dos reglas falló. Además aparece como diálogo, tapando el campo.

#metadata((src: "README.md", line: 10811))
#strong[Figura 258]

#metadata((src: "README.md", line: 10813))
#emph[H05 - Validación de regla]

#metadata((src: "README.md", line: 10815, kind: "figure", img: "chapter-04/assets/heuristicas/H05-validacion-de-regla.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H05-validacion-de-regla.png", alt: "H05 - Validación de regla", width: 60%)]

#metadata((src: "README.md", line: 10817))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10819))
#strong[Recomendación:]
Mostrar solo el mensaje que corresponde al campo editado, junto al campo y en rojo ("La capacidad debe ser mayor que 0").

#heading(level: 3)[PROBLEMA \#10: Los indicadores no muestran un control para cambiar la fecha o el periodo] <sec:problema-10-los-indicadores-no-muestran-un-control-para-cambiar-la-fecha-o-el-periodo>
#metadata((src: "README.md", line: 10822, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10824))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Visibilidad del estado del sistema

#metadata((src: "README.md", line: 10827))
#strong[Problema:]
"H06 · Indicadores del día" y "H07 · Demanda" muestran una fecha fija ("Mar 6 oct 2026") sin ningún control visible para cambiarla, aunque "H09 · Periodo sin datos" muestra otra fecha ("1 oct 2026") y "H08" permite elegir un rango para exportar. En las pantallas revisadas no se ve cómo la administración puede consultar otro día o semana, que es el uso básico de un panel de indicadores.

#metadata((src: "README.md", line: 10832))
#strong[Figura 259]

#metadata((src: "README.md", line: 10834))
#emph[H06 - Indicadores diarios]

#metadata((src: "README.md", line: 10836, kind: "figure", img: "chapter-04/assets/heuristicas/H06-indicadores-diarios.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H06-indicadores-diarios.png", alt: "H06 - Indicadores diarios", width: 60%)]

#metadata((src: "README.md", line: 10838))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10842))
#strong[Figura 260]

#metadata((src: "README.md", line: 10844))
#emph[H09 - Periodo sin datos]

#metadata((src: "README.md", line: 10846, kind: "figure", img: "chapter-04/assets/heuristicas/H09-periodo-sin-datos.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H09-periodo-sin-datos.png", alt: "H09 - Periodo sin datos", width: 60%)]

#metadata((src: "README.md", line: 10848))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10850))
#strong[Recomendación:]
Agregar un selector de fecha o periodo visible en la cabecera de los indicadores (con atajos como "Hoy", "Ayer", "Últimos 7 días") y reflejar el periodo elegido en el título.

#heading(level: 3)[PROBLEMA \#11: Descargar un reporte requiere dos pasos y no indica formato ni archivo] <sec:problema-11-descargar-un-reporte-requiere-dos-pasos-y-no-indica-formato-ni-archivo>
#metadata((src: "README.md", line: 10853, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10855))
#strong[Severidad:] 2
#strong[Heurística violada:] Usabilidad - Eficiencia de uso

#metadata((src: "README.md", line: 10858))
#strong[Problema:]
En "H08" el usuario elige "Descargar PDF" o "Descargar CSV", y luego "H11 · Exportación preparada" muestra un diálogo con otro botón "Descargar archivo". El segundo paso es redundante y el diálogo no repite qué archivo es (PDF o CSV), el periodo, el nombre ni el tamaño.

#metadata((src: "README.md", line: 10863))
#strong[Figura 261]

#metadata((src: "README.md", line: 10865))
#emph[H08 - Exportación]

#metadata((src: "README.md", line: 10867, kind: "figure", img: "chapter-04/assets/heuristicas/H08-exportacion.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H08-exportacion.png", alt: "H08 - Exportación", width: 60%)]

#metadata((src: "README.md", line: 10869))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10873))
#strong[Figura 262]

#metadata((src: "README.md", line: 10875))
#emph[H11 - Exportación preparada]

#metadata((src: "README.md", line: 10877, kind: "figure", img: "chapter-04/assets/heuristicas/H11-exportacion-preparada.png"))
#block(breakable: false)[#fit-image("/chapter-04/assets/heuristicas/H11-exportacion-preparada.png", alt: "H11 - Exportación preparada", width: 60%)]

#metadata((src: "README.md", line: 10879))
#emph[Nota. Captura del mock-up de SaludYa evaluada por el equipo RouteGuard.]

#metadata((src: "README.md", line: 10881))
#strong[Recomendación:]
Iniciar la descarga al tocar el botón de formato (con una barra de progreso si demora) y mostrar el nombre del archivo y el formato en la confirmación.

#metadata((src: "README.md", line: 10884))
#v(2pt)
#line(length: 100%, stroke: 0.6pt + rgb("#c6d0dc"))
#v(2pt)

#metadata((src: "README.md", line: 10886))
#pagebreak()

#heading(level: 1)[Conclusiones] <sec:conclusiones>
#metadata((src: "README.md", line: 10888, kind: "heading", level: 1))

#heading(level: 2)[Conclusiones y recomendaciones] <sec:conclusiones-y-recomendaciones>
#metadata((src: "README.md", line: 10890, kind: "heading", level: 2))

#metadata((src: "README.md", line: 10892))
A partir del análisis realizado y de la validación de las hipótesis planteadas, se presentan las siguientes conclusiones y recomendaciones:

#heading(level: 3)[Conclusiones] <sec:conclusiones-2>
#metadata((src: "README.md", line: 10894, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10896))
- La problemática planteada sobre la ineficiencia en el acceso a citas en establecimientos públicos de salud se confirmó a través del análisis de contexto y entrevistas, demostrando que la dependencia exclusiva de canales presenciales o telefónicos genera colas prolongadas y desinformación.
- El supuesto de negocio respecto a la demanda no atendida por soluciones digitales fue validado con éxito, dado que todos los pacientes entrevistados consideraron de alta utilidad consultar la disponibilidad de cupos en tiempo real desde sus dispositivos.
- Al contrastar las suposiciones con el comportamiento real del segmento de pacientes, se evidenció que la mayoría no ha utilizado aplicaciones médicas previamente. Sin embargo, se sienten cómodos realizando trámites desde sus celulares, lo que confirma la viabilidad de adopción de la plataforma.
- Las hipótesis operativas orientadas a mejorar el control del flujo de atención fueron validadas por el personal administrativo, quienes confirmaron que la gestión manual actual mediante cuadernos y hojas de cálculo provoca pérdida de información y desorganización operativa.
- Se concluye que la lista de espera dinámica y las notificaciones automatizadas responden directamente a los criterios de éxito del proyecto, asegurando el reaprovechamiento de cupos cancelados y mitigando los viajes innecesarios de los usuarios.
- La hipótesis sobre la reducción del tiempo de espera percibido es respaldada por la estructuración técnica del sistema, el cual incluye un mecanismo de registro de llegada (#emph[check-in]) por código QR diseñado para descongestionar las ventanillas físicas.

#heading(level: 3)[Recomendaciones] <sec:recomendaciones>
#metadata((src: "README.md", line: 10908, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10910))
- #strong[Despliegue incremental basado en el Product Backlog:] Se recomienda ejecutar la priorización del MVP definida en los Sprints 1 y 2, liberando inicialmente el motor de reservas (#emph[Appointments & Booking]), la validación de identidad y el #emph[check-in] por QR, debido a que estos componentes representan el núcleo de valor para descongestionar el flujo presencial de pacientes.
- #strong[Evolución hacia la Reprogramación Inteligente:] Para futuras versiones, se recomienda integrar un sistema de sugerencias inteligentes de horarios y la posibilidad de reprogramación automática, con el objetivo de resolver de manera proactiva los cruces de agenda y mejorar la experiencia del módulo central de citas.
- #strong[Ampliación de mecanismos de Check-in:] A partir de las oportunidades identificadas en el contexto #emph[Arrival & QR Check-in], se recomienda evaluar en futuras versiones mecanismos alternativos de validación, como el reconocimiento facial, para facilitar el acceso de pacientes que no cuenten con un dispositivo móvil al momento de su atención.

#metadata((src: "README.md", line: 10916))
#pagebreak()

#heading(level: 1)[Bibliografía] <sec:bibliografia>
#metadata((src: "README.md", line: 10918, kind: "heading", level: 1))

#metadata((src: "README.md", line: 10920))
Ministerio de Salud (MINSA). (2017, 16 de mayo). #emph[Nuevo sistema “Web colas” reduce el tiempo de espera en hospitales]. Recuperado de #link("https://www.gob.pe/institucion/minsa/noticias/13263-nuevo-sistema-web-colas-reduce-el-tiempo-de-espera-en-hospitales")[https:\/\/www.gob.pe\/institucion\/minsa\/noticias\/13263-nuevo-sistema-web-colas-reduce-el-tiempo-de-espera-en-hospitales]

#metadata((src: "README.md", line: 10922))
Ministerio de Salud (MINSA). (2023, 19 de septiembre). #emph[Minsa reduce tiempos de espera por atención en establecimientos de salud de Lima Metropolitana]. Recuperado de #link("https://www.gob.pe/institucion/minsa/noticias/831946-minsa-reduce-tiempos-de-espera-por-atencion-en-establecimientos-de-salud-de-lima-metropolitana")[https:\/\/www.gob.pe\/institucion\/minsa\/noticias\/831946-minsa-reduce-tiempos-de-espera-por-atencion-en-establecimientos-de-salud-de-lima-metropolitana]

#metadata((src: "README.md", line: 10924))
Ministerio de Salud (MINSA). (2024, 1 de marzo). #emph[Minsa fortalece sistema de “Citas en Línea”]. Recuperado de #link("https://www.gob.pe/institucion/minsa/noticias/914419-minsa-fortalece-sistema-de-citas-en-linea")[https:\/\/www.gob.pe\/institucion\/minsa\/noticias\/914419-minsa-fortalece-sistema-de-citas-en-linea]

#metadata((src: "README.md", line: 10926))
Ministerio de Salud (MINSA). (2025, 2 de agosto). #emph[Hospital San Juan de Lurigancho: más de 93 000 pacientes accedieron a sus citas por teléfono en el primer semestre de 2025]. Recuperado de #link("https://www.gob.pe/institucion/minsa/noticias/1224054-hospital-san-juan-de-lurigancho-mas-de-93-000-pacientes-accedieron-a-sus-citas-por-telefono-en-el-primer-semestre-de-2025")[https:\/\/www.gob.pe\/institucion\/minsa\/noticias\/1224054-hospital-san-juan-de-lurigancho-mas-de-93-000-pacientes-accedieron-a-sus-citas-por-telefono-en-el-primer-semestre-de-2025]

#metadata((src: "README.md", line: 10928))
Presidencia del Consejo de Ministros (PCM). (2026). #emph[Obtener cita médica en un establecimiento del Minsa]. Plataforma del Estado Peruano. Recuperado de #link("https://www.gob.pe/20621-obtener-cita-medica-en-un-establecimiento-del-minsa")[https:\/\/www.gob.pe\/20621-obtener-cita-medica-en-un-establecimiento-del-minsa]

#metadata((src: "README.md", line: 10930))
World Health Organization (WHO). (2025). #emph[Global strategy on digital health 2020–2027]. World Health Organization. Recuperado de #link("https://www.who.int/publications/i/item/9789240116870")[https:\/\/www.who.int\/publications\/i\/item\/9789240116870]

#metadata((src: "README.md", line: 10932))
#pagebreak()

#heading(level: 1)[Anexos] <sec:anexos>
#metadata((src: "README.md", line: 10933, kind: "heading", level: 1))

#heading(level: 2)[Anexo A: Vídeos de entrevistas realizadas] <sec:anexo-a-videos-de-entrevistas-realizadas>
#metadata((src: "README.md", line: 10935, kind: "heading", level: 2))

#metadata((src: "README.md", line: 10937))
Para la identificación de necesidades de los usuarios, se entrevistó a una pequeña parte del conjunto que forma a los segmentos objetivos.

#heading(level: 3)[Segmento objetivo 1: Pacientes de zonas urbanas periféricas que acuden a establecimientos públicos de salud] <sec:segmento-objetivo-1-pacientes-de-zonas-urbanas-perifericas-que-acuden-a-establecimientos-publicos-de-salud-2>
#metadata((src: "README.md", line: 10939, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10941))
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQA1UOjt3ewoT49AZwwO8GtcASfbhFc_OfiWOZ0V9ZzQUvU?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=VApkCW")[Entrevista \#1]
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQCq6uLH5lxNSpoxEAN9q1qfAVF0qgEoHWEvug_aNrID100?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=sXQwSj")[Entrevista \#2]
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQAAwi-Crd0UR6aM_vPtIyU8AY5rcOh7FEgLdmqvsNkC1bU?e=JGBM7r&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D")[Entrevista \#3]

#heading(level: 3)[Segmento objetivo 2: Personal asistencial y administrativo de establecimientos públicos de salud] <sec:segmento-objetivo-2-personal-asistencial-y-administrativo-de-establecimientos-publicos-de-salud-2>
#metadata((src: "README.md", line: 10947, kind: "heading", level: 3))

#metadata((src: "README.md", line: 10949))
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQDwPo3p7nHzTo_3Q8Hdq5zRASpKzhsImRgOPsWf4awAsOU?e=pY3MtU&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D")[Entrevista \#1]
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQBrqsrdMO0-QLVyjU8m37RyAcAk6_JKY5ZmpVbMa0_eAk8?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=Rr8mOi")[Entrevista \#2]
- #link("https://upcedupe-my.sharepoint.com/:v:/g/personal/u202319950_upc_edu_pe/IQAxoPDUIPTuQou-upR_hnBwARbOntKKq5_cv4dAcDxMApU?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6IldlYiJ9fQ%3D%3D&e=JfXt3p")[Entrevista \#3]
