<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png" alt="Logo UPC" width="150">
</div>

<p align="center"><strong>Universidad Peruana de Ciencias Aplicadas</strong></p>
<p align="center"><strong>Carrera de Ingeniería de Software</strong></p>

<br>

<p align="center"><strong>1ACC0238</strong></p>
<p align="center"><strong>Aplicaciones para Dispositivos Móviles</strong></p>
<p align="center">NRC</p>
<p align="center"><strong>4945</strong></p>

<h2 align="center">Informe del Trabajo Final</h2>

<p align="center">Docente</p>
<p align="center"><strong>Mayta Guillermo, Jorge Luis</strong></p>

<br>

<p align="center">Equipo</p>
<p align="center"><strong>RuwaLabs</strong></p>
<p align="center">Proyecto</p>
<p align="center"><strong>SaludYa</strong></p>

<br>

<p align="center"><strong>Integrantes</strong></p>

<table align="center">
  <tr><th>Código</th><th>Apellidos y nombres</th></tr>
  <tr><td>u202318309</td><td>Aguilar Untiveros, Rodrigo Fabrizio</td></tr>
  <tr><td>u202319950</td><td>Meza Solórzano, Didier Sebastian</td></tr>
  <tr><td>u20241d934</td><td>Montoya Nina, Paula Fernanda</td></tr>
  <tr><td>u20241e418</td><td>Ramos Mera, Neo Daniel</td></tr>
  <tr><td>u202624323</td><td>Torres Juárez, Alisee Muriel</td></tr>
</table>

<p align="center"><strong>Período 202620</strong></p>
<p align="center"><strong>Septiembre 2026</strong></p>


---
# Registro de Versiones del Informe

| Versión | Fecha | Autor | Descripción de modificación |
| :--- | :--- | :--- | :--- |
| 1.0.0 | 08-28-26 | Montoya Nina, Paula Fernanda | Se agregó la estructura base del documento, la Carátula, registro de versiones y el formato inicial del Student Outcome. |
| 1.1.0 | 09-02-26 | Meza Solórzano, Didier Sebastian | Se creó la estructura de carpetas y archivos base del informe (chapter-01 a chapter-06, conclusions, bibliography y glossary). |
| 1.2.0 | 09-13-26 | Aguilar Untiveros, Rodrigo Fabrizio | Se agregó la sección de Software Architecture del Capítulo II: Context Level Diagrams, Container Level Diagrams, Deployment Diagrams, Context Mapping, Bounded Context Canvases, Domain Message Flows Modeling y Candidate Context Discovery. |
| 1.3.0 | 09-16-26 | Meza Solórzano, Didier Sebastian | Se agregó la evidencia de la entrevista 6 y las evidencias de entrevistas del Capítulo II. |
| 1.4.0 | 09-17-26 | Meza Solórzano, Didier Sebastian | Se agregó la evidencia de las entrevistas 5 y 2 del Capítulo II. |
| 1.5.0 | 09-17-26 | Aguilar Untiveros, Rodrigo Fabrizio | Se actualizó el Capítulo II incorporando las dos colas complementarias (Booking Order y Attendance Queue): EventStorming, Candidate Context Discovery, Domain Message Flows, Bounded Context Canvases, Context Mapping, Container Level Diagram y sus diagramas asociados. |
| 1.6.0 | 09-18-26 | Torres Juárez, Alisee Muriel | Se documentó el bounded context de Identity & Access Management (capas Domain, Interface, Application e Infrastructure), se refactorizaron encabezados de sección, se revisó la numeración y se mejoraron las descripciones de los diagramas del Capítulo II. |
| 1.7.0 | 09-18-26 | Meza Solórzano, Didier Sebastian | Se agregó información adicional del Capítulo II y se actualizó el nombre del capítulo. |


# Project Report Collaboration Insights

<img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/432e94f6b93c83a2322a5b4c06819037c6236dbc/assets/insight_av1_1.jpg?raw=true">

<img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/432e94f6b93c83a2322a5b4c06819037c6236dbc/assets/insight_av1_2.jpg?raw=true">

<img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/432e94f6b93c83a2322a5b4c06819037c6236dbc/assets/insight_av1_3.jpg?raw=true">

URL de la Organización de Github del equipo RuwaLabs: [RuwaLabs](https://github.com/RuwaLabs)

URL del Repositorio del Project Report: [upc-pre-202620-1acc0238-4945-RuwaLabs-report](https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report)

---

# Contenido

- [Registro de Versiones del Informe](#registro-de-versiones-del-informe)
- [Project Report Collaboration Insights](#project-report-collaboration-insights)
- [Contenido](#contenido)
- [Student Outcome](#student-outcome)
- [Capítulo I: Presentación](#capítulo-i-presentación)
  - [1.1. Startup Profile](#11-startup-profile)
    - [1.1.1. Descripción de la Startup](#111-descripción-de-la-startup)
    - [1.1.2. Perfiles de integrantes del equipo](#112-perfiles-de-integrantes-del-equipo)
  - [1.2. Solution Profile](#12-solution-profile)
    - [1.2.1. Antecedentes y problemática](#121-antecedentes-y-problemática)
    - [1.2.2. Lean UX Process](#122-lean-ux-process)
      - [1.2.2.1. Lean UX Problem Statements](#1221-lean-ux-problem-statements)
      - [1.2.2.2. Lean UX Assumptions](#1222-lean-ux-assumptions)
      - [1.2.2.3. Lean UX Hypothesis Statements](#1223-lean-ux-hypothesis-statements)
      - [1.2.2.4. Lean UX Canvas](#1224-lean-ux-canvas)
  - [1.3. Segmentos objetivo](#13-segmentos-objetivo)
- [Capítulo II: Requirements Development and Software Solution Design](#capítulo-ii-requirements-development-and-software-solution-design)
  - [2.1. Competidores](#21-competidores)
    - [2.1.1. Análisis competitivo](#211-análisis-competitivo)
    - [2.1.2. Estrategias y tácticas frente a competidores](#212-estrategias-y-tácticas-frente-a-competidores)
  - [2.2. Entrevistas](#22-entrevistas)
    - [2.2.1. Diseño de entrevistas](#221-diseño-de-entrevistas)
    - [2.2.2. Registro de entrevistas](#222-registro-de-entrevistas)
    - [2.2.3. Análisis de entrevistas](#223-análisis-de-entrevistas)
  - [2.3. Needfinding](#23-needfinding)
    - [2.3.1. User Personas](#231-user-personas)
    - [2.3.2. User Task Matrix](#232-user-task-matrix)
    - [2.3.3. User Journey Mapping](#233-user-journey-mapping)
    - [2.3.4. Empathy Mapping](#234-empathy-mapping)
    - [2.3.5. Big Picture EventStorming](#235-big-picture-eventstorming)
    - [2.3.6. Ubiquitous Language](#236-ubiquitous-language)
  - [2.4. Requirements specification](#24-requirements-specification)
    - [2.4.1. User Stories](#241-user-stories)
    - [2.4.2. Impact Mapping](#242-impact-mapping)
    - [2.4.3. Product Backlog](#243-product-backlog)
  - [2.5. Strategic-Level Domain-Driven Design](#25-strategic-level-domain-driven-design)
    - [2.5.1. EventStorming](#251-eventstorming)
      - [2.5.1.1. Candidate Context Discovery](#2511-candidate-context-discovery)
      - [2.5.1.2. Domain Message Flows Modeling](#2512-domain-message-flows-modeling)
      - [2.5.1.3. Bounded Context Canvases](#2513-bounded-context-canvases)
    - [2.5.2. Context Mapping](#252-context-mapping)
    - [2.5.3. Software Architecture](#253-software-architecture)
      - [2.5.3.1. Software Architecture Context Level Diagrams](#2531-software-architecture-context-level-diagrams)
      - [2.5.3.2. Software Architecture Container Level Diagrams](#2532-software-architecture-container-level-diagrams)
      - [2.5.3.3. Software Architecture Deployment Diagrams](#2533-software-architecture-deployment-diagrams)
  - [2.6. Tactical-Level Domain-Driven Design](#26-tactical-level-domain-driven-design)
    - [2.6.x. Bounded Context: <Bounded Context Name>](#26x-bounded-context-bounded-context-name)
      - [2.6.x.1. Domain Layer](#26x1-domain-layer)
      - [2.6.x.2. Interface Layer](#26x2-interface-layer)
      - [2.6.x.3. Application Layer](#26x3-application-layer)
      - [2.6.x.4 Infrastructure Layer](#26x4-infrastructure-layer)
      - [2.6.x.5. Bounded Context Software Architecture Component Level Diagrams](#26x5-bounded-context-software-architecture-component-level-diagrams)
      - [2.6.x.6. Bounded Context Software Architecture Code Level Diagrams](#26x6-bounded-context-software-architecture-code-level-diagrams)
        - [2.6.x.6.1. Bounded Context Domain Layer Class Diagrams](#26x61-bounded-context-domain-layer-class-diagrams)
        - [2.6.x.6.2. Bounded Context Database Design Diagram](#26x62-bounded-context-database-design-diagram)
- [Conclusiones](#conclusiones)
- [Bibliografía](#bibliografía)
- [Anexos](#anexos)

---

# Student Outcome

El curso contribuye al cumplimiento del Student Outcome ABET:

**ABET - EAC - Student Outcome 7**

**Criterio:** *La capacidad de adquirir y aplicar nuevos conocimientos según sea necesario, utilizando estrategias de aprendizaje apropiadas.*

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 7.

<table>
  <thead>
    <tr>
      <th>Criterio específico</th>
      <th>Acciones realizadas</th>
      <th>Conclusiones</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td width="25%">
        Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y en especial para su proyecto en soluciones de software.
      </td>
      <td width="50%">
        <strong>Aguilar Untiveros, Rodrigo Fabrizio</strong>
        <ul>
          <li><strong>AV1:</strong> Apliqué nuevos conocimientos sobre EventStorming, Candidate Context Discovery, Domain Message Flows Modeling, Bounded Context Canvases, Context Mapping y el modelo C4 para documentar la arquitectura de SaludYa. Asimismo, incorporé los conceptos de las dos colas complementarias del dominio (Booking Order y Attendance Queue), refinando los bounded contexts existentes y actualizando los diagramas de EventStorming, Context Mapping y Container Level Diagram.</li>
        </ul>
       <strong>Meza Solórzano, Didier Sebastian</strong>
<ul>
  <li><strong>AV1:</strong> Apliqué nuevos conocimientos sobre la técnica 5W2H, el diagrama de Ishikawa, la metodología Lean UX, el análisis competitivo y el diseño de entrevistas para desarrollar de principio a fin la problemática, la solución y la validación con usuarios de SaludYa.</li>
</ul>
        <strong>Montoya Nina, Paula Fernanda</strong>
        <ul>
          <li><strong>AV1:</strong> Investigué y apliqué conceptos avanzados de arquitectura de software para documentar el diseño a nivel de código de los Bounded Contexts. Esto incluyó la definición técnica de controladores, servicios y repositorios, plasmando esta lógica de negocio en diagramas relacionales de base de datos y diagramas de clases precisos para el proyecto.</li>
        </ul> 
        <strong>Ramos Mera, Neo Daniel</strong>
        <ul>
          <li><strong>AV1:</strong> Apliqué nuevos conocimientos sobre el modelado táctico de Domain-Driven Design (DDD), estructurando correctamente las capas de Dominio, Aplicación, Interfaz e Infraestructura. Asimismo, aprendí y utilicé estándares de modelado C4 y UML para elaborar los diagramas de componentes, clases y base de datos de los Bounded Contexts asignados.
</li>
        </ul>
        <strong>Torres Juárez, Alisee Muriel</strong>
        <ul>
          <li><strong>AV1:</strong> Apliqué nuevos conocimientos sobre EventStorming, diagramas de usuario y la redacción de User Stories para desarrollar de principio a fin la problemática, la solución y la validación de SaludYa </li>
        </ul>
      </td>
      <td width="25%">
        <p><strong>AV1:</strong><br>
        Como equipo, actualizamos de forma práctica nuestros conocimientos en el análisis y modelado de software, integrando metodologías como Lean UX, EventStorming y Domain-Driven Design (DDD). Esto nos permitió diseñar una arquitectura sólida, documentada con diagramas tácticos, estratégicos y de bases de datos, alineando la solución tecnológica a las necesidades reales del sector salud.</p>
      </td>
    </tr>
    <tr>
      <td>
        Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software.
      </td>
      <td>
        <strong>Aguilar Untiveros, Rodrigo Fabrizio</strong>
        <ul>
          <li><strong>AV1:</strong> Reconocí la necesidad de investigar de forma autónoma técnicas de modelado estratégico y táctico que no había aplicado antes, como EventStorming y Domain-Driven Design, para sustentar con criterios arquitectónicos sólidos el diseño de SaludYa. La correcta delimitación de los bounded contexts y la identificación de las dos colas del dominio me exigieron un análisis profundo para alinear el lenguaje ubicuo con la arquitectura del sistema.</li>
        </ul>
        <strong>Meza Solórzano, Didier Sebastian</strong>
<ul>
  <li><strong>AV1:</strong> Reconocí la necesidad de seguir aprendiendo de forma autónoma metodologías que no había aplicado antes, como Lean UX y el diseño de entrevistas cualitativas, para poder sustentar con información real el desarrollo de SaludYa.</li>
</ul>
        <strong>Montoya Nina, Paula Fernanda</strong>
        <ul>
          <li><strong>AV1:</strong> Comprendí que diseñar soluciones de software requiere una constante actualización en metodologías como DDD. Buscar y estudiar información sobre patrones de integración y persistencia por mi cuenta me permitió resolver problemas técnicos complejos al definir las capas de infraestructura y dominio de SaludYa.
</li>
        </ul>
        <strong>Ramos Mera, Neo Daniel</strong>
        <ul>
          <li><strong>AV1:</strong> Reconocí la importancia de investigar de manera autónoma sobre arquitectura hexagonal y patrones de diseño. Entendí que este aprendizaje continuo es indispensable para definir correctamente entidades, agregados y repositorios, garantizando que el diseño del software sea escalable y mantenible en el entorno profesional.</li>
        </ul>
        <strong>Torres Juárez, Alisee Muriel</strong>
        <ul>
          <li><strong>AV1:</strong> Reconocí la importancia de poner en práctica herramientas y metodologías que no había aplicado antes —como el EventStorming, los diagramas de usuario y la estructuración de User Stories para sustentar y modelar con precisión el desarrollo de SaludYa. La correcta definición de las User Stories técnicas, me exigió un análisis mucho más profundo para alinear los eventos del sistema con la arquitectura tecnológica</li>
        </ul>
      </td>
      <td>
        <p><strong>AV1:</strong><br> El equipo reconoció que el aprendizaje autónomo es un pilar fundamental en el desarrollo del proyecto. La exigencia de investigar y dominar nuevas herramientas tecnológicas, técnicas de entrevistas y patrones arquitectónicos nos demostró que la actualización constante es la única vía para proponer soluciones de software de calidad.</p>
      </td>
    </tr>
  </tbody>
</table>

# Capítulo 1: Presentación #

## _1.1. Startup Profile_ ##

En esta sección, se presenta una descripción general de RuwaLabs, startup orientada al desarrollo de soluciones digitales que buscan atender problemáticas reales mediante el uso de la tecnología, considerando las necesidades de los usuarios y las características del contexto en el que se desenvuelven.

### 1.1.1. Descripción de la Startup ###

En el contexto actual, donde el acceso oportuno a los servicios de salud representa un desafío para diversos sectores de la población, especialmente en establecimientos públicos de salud con una alta demanda de pacientes, RuwaLabs propone desarrollar soluciones tecnológicas orientadas a mejorar la experiencia de atención y optimizar los procesos relacionados con la gestión de citas médicas.

RuwaLabs es una startup comprometida con el desarrollo de soluciones digitales innovadoras, enfocadas en facilitar el acceso a servicios y mejorar procesos mediante el uso de tecnologías móviles. Como parte de esta iniciativa, se desarrolla **SaludYa**, una solución compuesta por aplicaciones móviles dirigidas tanto a pacientes como al personal asistencial y administrativo de establecimientos públicos de salud.

SaludYa busca reducir las dificultades asociadas a la gestión tradicional de citas médicas, como las largas colas presenciales, la alta demanda de cupos y la falta de información sobre la disponibilidad de atención. Para ello, la solución contempla funcionalidades como la reserva digital de citas, lista de espera dinámica, recordatorios de atención, gestión de citas de familiares y check-in mediante código QR.

Asimismo, SaludYa busca facilitar la gestión interna de los establecimientos de salud mediante herramientas que permitan al personal administrar citas y pacientes, visualizar el estado de la atención y mejorar el aprovechamiento de los cupos disponibles.

<table>
    <tr>
        <td> <b>Misión</b> </td>
        <td> <b>Visión</b> </td>
        <td> <b>Valores</b> </td>
    </tr>
    <tr>
        <td> Desarrollar soluciones tecnológicas accesibles e innovadoras que permitan mejorar la experiencia de los usuarios y optimizar procesos relacionados con servicios de atención, utilizando la tecnología como herramienta para resolver necesidades reales. </td>
        <td> Ser una startup reconocida por desarrollar soluciones digitales innovadoras que contribuyan a mejorar el acceso a servicios esenciales y la eficiencia de los procesos mediante el uso de tecnologías móviles. </td>
        <td> Innovación, accesibilidad, compromiso, responsabilidad y orientación al usuario. </td>
    </tr>
</table>

### 1.1.2. Perfiles de los integrantes del equipo ###

En esta sección, se presentan los perfiles de los integrantes del equipo, incluyendo sus habilidades y conocimientos técnicos relevantes para el desarrollo de **SaludYa**.

<table>
    <tr>
        <td> Foto </td>
        <td> Integrante </td>
        <td> Código </td>
        <td> Carrera </td>
        <td> Habilidades y conocimientos técnicos </td>
    </tr>
    <tr>
        <td> <img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/chapter-01/chapter-01/assets/foto_rodrigo.jpg?raw=true" alt="Foto de Rodrigo" style="max-height:40px; display:block; margin:6px auto 0;"> </td>
        <td>Aguilar Untiveros, Rodrigo Fabrizio</td>
        <td>u202318309</td>
        <td> Ingeniería de Software </td>
        <td>Soy estudiante de Ingeniería de Software interesado en el desarrollo de aplicaciones móviles y en la construcción de soluciones tecnológicas que resuelvan necesidades reales de las personas. Me considero una persona responsable, organizada y con facilidad para trabajar en equipo, además de comprometida con la mejora continua y la aplicación de buenas prácticas de desarrollo. Durante el proyecto busco fortalecer mis conocimientos técnicos y aportar en la implementación de una solución funcional y de calidad.</td>
    </tr>
        <td> <img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/chapter-01/chapter-01/assets/foto_didier.jpg?raw=true" alt="Foto de Didier" style="max-height:40px; display:block; margin:6px auto 0;"> </td>
        <td>Meza Solórzano, Didier Sebastian</td>
        <td>u202319950</td>
        <td> Ingeniería de Software </td>
        <td>Soy estudiante de Ingeniería de Software con interés en el desarrollo de aplicaciones móviles y soluciones tecnológicas orientadas a resolver problemas reales. Me considero una persona responsable, comprometida y con disposición para trabajar en equipo. Asimismo, busco aplicar buenas prácticas de desarrollo y mejorar continuamente mis conocimientos técnicos durante el desarrollo de proyectos.</td>
    </tr>
    <tr>
        <td> <img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/chapter-01/chapter-01/assets/foto_paula.jpg?raw=true" alt="Foto de Paula" style="max-height:40px; display:block; margin:6px auto 0;"> </td>
        <td>Montoya Nina, Paula Fernanda</td>
        <td>u20241d934</td>
        <td> Ingeniería de Software </td>
        <td>Mi nombre es Paula Fernanda Montoya Nina, tengo 19 años y curso el 6.º ciclo de la carrera de Ingeniería de Software, con código u20241D934. Tengo un enfoque de trabajo que prioriza la planificación y el orden estructural antes de iniciar cualquier implementación técnica. Mis fortalezas son la organización de flujos de trabajo eficiente y, además, puedo desempeñar múltiples roles dentro de un proyecto, ya sea en frontend o backend, aunque prefiero dedicarme a la gestión de datos. Mi propósito es profundizar mis conocimientos en la arquitectura de Software, además de mejorar mi capacidad de colaboración en equipo para contribuir activamente en la creación de soluciones tecnológicas.</td>
    </tr>
    <tr>
        <td> <img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/chapter-01/chapter-01/assets/foto_neo.jpeg?raw=true" alt="Foto de Neo" style="max-height:40px; display:block; margin:6px auto 0;"> </td>
        <td>Ramos Mera, Neo Daniel</td>
        <td> u20241e418 </td>
        <td> Ingeniería de Software </td>
        <td> Mi nombre es Neo Daniel Ramos Mera, soy de la carrera de Ingeniería de Software del sexto ciclo. Me considero una persona responsable, atenta y también bastante cooperativa. La comunicación y el trabajo en equipo son fundamentales para alcanzar el éxito en cualquier proyecto. Mis áreas fuertes son la red y el backend, mi meta es especializarme en un campo en el que pueda trabajar con estos puntos. Aspiro a participar en proyectos desafiantes que reten mis habilidades y conocimientos. </td>
    </tr>
    <tr>
        <td> <img src="https://github.com/RuwaLabs/upc-pre-202620-1acc0238-4945-RuwaLabs-report/blob/chapter-01/chapter-01/assets/foto_alisee.jpg?raw=true" alt="Foto de Alisee" style="max-height:40px; display:block; margin:6px auto 0;"> </td>
        <td>Torres Juárez, Alisee Muriel</td>
        <td> U202624323 </td>
        <td> Ingeniería de Software </td>
        <td> Soy Alisee Muriel Torres Juárez, estudiante de Ingeniería de Software enfocada en la creación de soluciones tecnológicas que simplifiquen y agilicen procesos. Destaco por mi resiliencia, perseverancia y alta capacidad de adaptabilidad ante nuevos desafíos </td>
    </tr>
</table>

## 1.2. Solution Profile

En esta sección se describe el perfil de la solución propuesta por RuwaLabs, incluyendo los antecedentes y la problemática que aborda. Asimismo, se utiliza la técnica de las **5W's y 2H's** para comprender mejor el contexto, las necesidades de los usuarios y las condiciones en las que se presenta el problema.

La aplicación lleva por nombre **"SaludYa"**. El propósito de la aplicación se centra en la gestión eficiente de citas médicas en establecimientos públicos de salud, permitiendo a los pacientes acceder de forma oportuna a la reserva, seguimiento y *check-in* de sus atenciones. Al mismo tiempo, brinda al personal asistencial y administrativo herramientas para gestionar citas, pacientes y el flujo de atención.

Finalmente, **"SaludYa"** busca convertirse en una herramienta clave para conectar la gestión del paciente con la operación del establecimiento de salud, ayudando a reducir las colas presenciales, aprovechar mejor los cupos disponibles y facilitar el seguimiento de la atención. Además, permitirá contar con información oportuna y mejorar la experiencia general de acceso a los servicios de salud.

<p align="center">
  <img
    src="https://i.imgur.com/7aTgCkT.jpeg"
    alt="Icono de SaludYa"
    width="500"
  />
</p>

### 1.2.1. Antecedentes y problemática

En esta sección se presentan los antecedentes y la problemática que la solución propuesta busca abordar. Para ello, se utiliza la técnica de las **5W's y 2H's** para realizar un análisis detallado del problema y el **diagrama de Ishikawa** para identificar sus principales causas raíz.

#### Antecedentes

En los establecimientos públicos de salud existe una alta demanda de atención médica, lo que puede generar dificultades para acceder oportunamente a una cita. Los pacientes pueden encontrarse con procesos presenciales, disponibilidad limitada de cupos, tiempos de espera elevados y poca información sobre las citas disponibles. Estas dificultades pueden afectar especialmente a las personas que deben trasladarse desde zonas urbanas periféricas hacia establecimientos públicos de salud.

Actualmente, el acceso a una cita médica en establecimientos del **Ministerio de Salud (MINSA)** puede realizarse mediante diferentes canales, como la atención presencial, vía telefónica y determinados servicios digitales. La existencia de estos canales representa un avance en la digitalización del proceso; sin embargo, todavía existen oportunidades para integrar la gestión de citas, la disponibilidad de cupos, las cancelaciones, las listas de espera y el seguimiento de la atención en una experiencia única para el paciente y el personal del establecimiento.

El MINSA ha implementado iniciativas orientadas a reducir los tiempos de espera y facilitar la gestión de citas. Por ejemplo, en 2017 se implementó el sistema **"Web Colas"** en el Hospital de Emergencias Villa El Salvador, permitiendo consultar información relacionada con los tiempos de atención y la cantidad de pacientes en espera (MINSA, 2017). Esta iniciativa evidencia la necesidad de utilizar herramientas digitales para mejorar la organización de la atención y disminuir las dificultades asociadas a las colas presenciales.

Asimismo, en 2023 el MINSA informó sobre diferentes acciones destinadas a reducir los tiempos de espera en establecimientos de salud de Lima Metropolitana, entre ellas sistemas de gestión de citas, listas de espera y atención mediante plataformas web (MINSA, 2023).

En 2024, el MINSA también informó sobre el fortalecimiento del sistema de **"Citas en Línea"**, mediante el cual se generaron citas digitales en establecimientos de primer nivel de atención (MINSA, 2024). Este tipo de iniciativas demuestra que existe una tendencia hacia la digitalización del acceso a los servicios de salud.

Por otro lado, durante el primer semestre de 2025, el Hospital San Juan de Lurigancho registró más de **93 000 pacientes** que accedieron a sus citas mediante canales telefónicos (MINSA, 2025), evidenciando la demanda por mecanismos alternativos que faciliten el acceso a la atención médica.

A nivel internacional, la **Organización Mundial de la Salud (OMS)** reconoce el potencial de la salud digital para fortalecer los sistemas sanitarios, mejorar su eficiencia y contribuir a un acceso más equitativo a servicios de salud de calidad.

Frente a esta problemática, surge **"SaludYa"**, una solución tecnológica compuesta por dos aplicaciones móviles: una orientada a pacientes y otra dirigida al personal asistencial y administrativo. La solución está diseñada para reducir las colas presenciales, aprovechar mejor los cupos disponibles y facilitar el seguimiento de la atención en establecimientos públicos de salud.

#### Técnica de las 5W's y 2H's

##### What?

**¿Cuál es el problema?**

Existe dificultad para acceder de manera oportuna y eficiente a citas médicas en establecimientos públicos de salud debido a la disponibilidad limitada de cupos, los procesos presenciales y la falta de información actualizada sobre las citas disponibles.

**¿Cuál es la relación con la persona en cuestión?**

Los pacientes, especialmente aquellos que residen en zonas urbanas periféricas, enfrentan directamente esta situación al buscar una atención oportuna. Por otro lado, el personal asistencial y administrativo es responsable de gestionar las citas y el flujo de atención del establecimiento.

##### When?

**¿Cuándo sucede el problema?**

La problemática se presenta principalmente durante la búsqueda y programación de una cita, especialmente en periodos de alta demanda o cuando existe una cantidad limitada de cupos. También puede presentarse el día de la atención debido a la congestión y los tiempos de espera.

**¿Cuándo utiliza el cliente el producto?**

Los usuarios utilizan **SaludYa** como parte de su proceso habitual de búsqueda de disponibilidad, reserva de citas, seguimiento de su atención y *check-in* al llegar al establecimiento de salud.

##### Where?

**¿Dónde está el cliente cuando usa el producto?**

Los pacientes pueden acceder a la aplicación desde sus hogares, centros de trabajo o estudio, e incluso durante su desplazamiento hacia el establecimiento de salud. Por su parte, el personal asistencial y administrativo utiliza la solución dentro de los establecimientos públicos de salud.

**¿A dónde se dirige?**

La problemática afecta principalmente a pacientes que utilizan establecimientos públicos de salud, en especial a quienes residen en zonas urbanas periféricas y buscan un acceso más oportuno a la atención médica.

**¿Dónde surge el problema?**

El problema surge en establecimientos públicos de salud que aún dependen parcialmente de procesos presenciales o telefónicos, especialmente en las áreas relacionadas con admisión, gestión de citas y atención de pacientes.

##### Who?

**¿Quiénes están involucrados?**

Los principales involucrados son:

- Los pacientes que utilizan los establecimientos públicos de salud.
- Los pacientes que residen en zonas urbanas periféricas.
- El personal administrativo encargado de gestionar las citas.
- El personal asistencial encargado de atender a los pacientes.
- Los establecimientos públicos de salud que administran los procesos de atención.

##### Why?

**¿Cuál es la causa del problema?**

Las principales causas están relacionadas con:

- La alta demanda de atención médica.
- La disponibilidad limitada de cupos.
- La dependencia de procesos presenciales o telefónicos.
- La falta de información en tiempo real sobre la disponibilidad de citas.
- La gestión limitada de cancelaciones y reprogramaciones.
- La ausencia de una gestión eficiente de listas de espera.
- La existencia de procesos administrativos fragmentados.

##### How?

**¿En qué condiciones los clientes usan nuestros productos?**

Los pacientes suelen consultar diferentes canales para encontrar una cita disponible, trasladarse al establecimiento de salud o comunicarse telefónicamente. Estas acciones se realizan muchas veces en contextos de alta demanda, tiempos de espera elevados e información limitada sobre la disponibilidad de citas.

**¿Cómo prefieren los clientes acceder a nuestro producto?**

Los usuarios prefieren una aplicación móvil intuitiva que les permita consultar la disponibilidad de citas, reservar una atención, recibir recordatorios y realizar el seguimiento de su atención sin necesidad de trasladarse previamente al establecimiento o realizar llamadas telefónicas.

**¿Qué llevó al cliente a llegar a esta situación?**

La dependencia de procesos presenciales y telefónicos, la falta de información en tiempo real sobre la disponibilidad de citas y la ausencia de una gestión integrada de cupos, cancelaciones y listas de espera han llevado a los pacientes y al personal de salud a requerir soluciones digitales que permitan optimizar el acceso y la gestión de la atención.

##### How much?

**¿Cuánto impacto genera este problema en los establecimientos de salud?**

El impacto de esta problemática es significativo, ya que genera costos de tiempo y desplazamiento para los pacientes y una mayor carga operativa para el personal de los establecimientos de salud.

Además, las iniciativas implementadas por el MINSA para digitalizar las citas y reducir los tiempos de espera evidencian la importancia de optimizar estos procesos mediante herramientas tecnológicas.

### Diagrama de Ishikawa - Análisis de Causas

El **diagrama de Ishikawa**, también conocido como diagrama de espina de pescado o diagrama de causa-efecto, permite identificar y visualizar de manera sistemática las múltiples causas que contribuyen al problema central:

> **"Dificultad en el acceso oportuno y eficiente a citas médicas en establecimientos públicos de salud".**

Este análisis estructurado facilita la comprensión integral del problema y orienta el desarrollo de soluciones específicas para cada categoría de causas identificadas.

<p align="center">
  <img
    src="https://i.imgur.com/V84h3fK.jpeg"
    alt="Diagrama de Ishikawa"
    width="700"
  />
</p>

El diagrama identifica **seis categorías principales de causas** que contribuyen al problema:

- **Tecnología:** Sistemas de citas obsoletos o inexistentes, plataformas que pueden presentar dificultades ante una alta demanda, falta de integración entre módulos y problemas de conectividad en determinados establecimientos.

- **Procesos:** Asignación manual de citas, falta de estandarización en la gestión de turnos, procesos burocráticos que pueden generar colas presenciales y dificultades para gestionar cancelaciones o reprogramaciones.

- **Personas:** Falta de capacitación del personal administrativo, resistencia al cambio hacia herramientas digitales, diferentes niveles de conocimiento digital de los usuarios y disponibilidad limitada de personal frente a una alta demanda.

- **Métodos:** Utilización de registros manuales, ausencia de mecanismos de priorización, falta de seguimiento de pacientes en listas de espera y posibles duplicidades o inconsistencias en los registros.

- **Entorno:** Infraestructura limitada, alta demanda de pacientes, condiciones socioeconómicas que pueden dificultar el acceso y distancia entre el domicilio del paciente y el establecimiento de salud.

- **Medición:** Falta de indicadores relacionados con el ausentismo, tiempos de espera y satisfacción de los pacientes, así como disponibilidad limitada de reportes para apoyar la mejora continua.

### 1.2.2. Lean UX Process ###

#### 1.2.2.1. Lean UX Problem Statement ####

Actualmente, tanto los pacientes como el personal asistencial y administrativo de los establecimientos públicos de salud enfrentan dificultades por la dependencia de procesos presenciales y telefónicos que no permiten conocer en tiempo real la disponibilidad de citas, gestionar cancelaciones o listas de espera, ni dar seguimiento eficiente a la atención. Esto genera problemas como colas prolongadas, cupos desaprovechados, desinformación sobre la disponibilidad de citas y una carga operativa elevada para el personal. Además, muchos pacientes no cuentan con mecanismos accesibles que les permitan orientar el tipo de atención que podrían requerir antes de acudir al establecimiento.

¿Cómo podríamos diseñar una solución digital integral que permita a los pacientes reservar y gestionar sus citas médicas en tiempo real, acceder a listas de espera dinámicas y recibir orientación inicial sobre sus síntomas, mientras se brinda al personal asistencial y administrativo herramientas para gestionar el flujo de atención y aprovechar mejor los cupos disponibles?

#### 1.2.2.2. Lean UX Assumptions ####
##### 1.2.2.2.1 Business Assumptions #####

- Existe una demanda no atendida de pacientes en establecimientos públicos de salud que requieren mecanismos digitales para acceder a citas médicas de forma oportuna.
- Las dificultades de acceso a citas están vinculadas a la dependencia de procesos presenciales y telefónicos, generando una necesidad urgente de digitalización.
- El personal asistencial y administrativo de los establecimientos está interesado en herramientas que faciliten la gestión de citas y el flujo de pacientes.
- Los establecimientos públicos de salud buscan reducir tiempos de espera y mejorar el aprovechamiento de sus cupos disponibles.
- Existen iniciativas del MINSA orientadas a la digitalización de citas, lo que evidencia una tendencia favorable para la adopción de SaludYa.
  
##### 1.2.2.2.2 Business Outcomes #####

- Queremos que los establecimientos de salud reduzcan en un 30% las colas presenciales durante los primeros 6 meses de implementación.
- Buscamos aumentar en un 25% el aprovechamiento de los cupos disponibles mediante la gestión de listas de espera y cancelaciones.
- Queremos reducir en un 35% el tiempo promedio que el personal dedica a la gestión manual de citas, en un plazo de 3 meses.
- Esperamos que el 50% de los establecimientos piloto recomienden la herramienta a otras sedes dentro de los primeros 3 meses de uso.

##### 1.2.2.2.3 User Assumptions #####

- Los pacientes no cuentan actualmente con mecanismos digitales integrados, sino con canales presenciales o telefónicos fragmentados.
- Tienen interés en acceder a información oportuna sobre la disponibilidad de citas, pero no siempre cuentan con los medios para hacerlo.
- Necesitan una solución simple, rápida y accesible desde su dispositivo móvil que no requiera desplazamientos innecesarios.
- Les preocupa perder su turno o no ser informados sobre cambios en su cita.
- Valoran contar con recordatorios y una orientación inicial sobre el tipo de atención que podrían requerir.

##### 1.2.2.2.4 User Outcomes #####

- El 80% de los pacientes reportan una reducción en el tiempo dedicado a gestionar sus citas después de 3 meses de uso.
- El 70% de los pacientes disminuyen sus desplazamientos innecesarios al establecimiento gracias a la reserva y el seguimiento digital.
- Reducir en un 30% el tiempo de espera percibido por los pacientes en el establecimiento gracias al check-in mediante código QR.
- El 65% del personal administrativo reporta una mejora en el control del flujo de pacientes y el aprovechamiento de cupos.
- El 70% de los usuarios completan el proceso de reserva de una cita sin asistencia técnica en menos de 5 minutos.

##### 1.2.2.2.5 Features #####

- Si implementamos una funcionalidad que permita a los pacientes consultar disponibilidad y reservar citas médicas en tiempo real, entonces se reducirán los desplazamientos innecesarios y las colas presenciales.
- Si los pacientes cuentan con una lista de espera dinámica y reciben notificaciones ante cupos liberados por cancelaciones, entonces se aprovechará mejor la disponibilidad existente y se reducirán los tiempos de espera.
- Si el personal asistencial y administrativo dispone de una aplicación que les permita visualizar el flujo de pacientes y gestionar cambios o cancelaciones, entonces podrán optimizar la atención y reducir la carga operativa asociada a la gestión manual de citas.

#### 1.2.2.3. Lean UX Hypothesis Statements ####

- **Hypothesis Statement 1**
**Creemos que** lograremos una reducción en las colas presenciales y un mejor aprovechamiento de los cupos disponibles.
**Sabremos que** si los pacientes
**Obtienen** visibilidad en tiempo real sobre la disponibilidad de citas y la posibilidad de unirse a una lista de espera dinámica
**Cuando veamos** una solución digital que permita reservar, gestionar y recibir notificaciones sobre sus citas médicas.

- **Hypothesis Statement 2**
**Creemos que** lograremos un aumento en la satisfacción de los pacientes y una reducción en los tiempos de espera percibidos.
**Sabremos que** los pacientes
**Cuando veamos** mejor acceso a recordatorios, orientación inicial sobre síntomas y check-in mediante código QR
**Con** una funcionalidad que agilice su llegada y atención en el establecimiento.

- **Hypothesis Statement 3**
**Creemos que** lograremos una mejora en el control del flujo de atención y una reducción en la carga operativa del personal.
**Sabremos que** si el personal asistencial y administrativo
**Obtiene** la capacidad de gestionar cambios, cancelaciones y el estado de las atenciones en tiempo real
**Cuando veamos** con una aplicación que centralice la información de pacientes y citas programadas.

#### 1.2.2.4. Lean UX Canvas ####

El Lean UX Canvas es una herramienta metodológica que permite sintetizar y visualizar de manera estructurada los elementos clave del proyecto SaludYa. Este canvas facilita la comprensión integral del problema de negocio, las soluciones propuestas, los usuarios objetivo y los resultados esperados, proporcionando una base sólida para el desarrollo ágil del producto.

<p align="center">
  <img src="https://i.imgur.com/ESmSAsu.jpeg" alt="lean_ux_canvas"/>
  <p align="center">Lean Ux Canvas</p>
</p>

La imagen presenta una matriz dividida en ocho secciones que abordan desde la identificación del problema de acceso a citas médicas hasta los beneficios específicos para pacientes y personal de salud. Aquí se define el problema de negocio relacionado con la dificultad de acceso oportuno a citas médicas en establecimientos públicos de salud, seguido de las ideas de solución que incluyen la reserva digital de citas, la lista de espera dinámica y el check-in mediante código QR. Los resultados empresariales se enfocan en mejorar la percepción de RuwaLabs y ayudar a los establecimientos públicos de salud a reducir colas y optimizar el aprovechamiento de sus cupos disponibles.

## _1.3. Segmentos objetivos_ ##

A continuación, se determinan los segmentos objetivos a los que va dirigida la propuesta de solución **SaludYa** para la gestión de citas médicas en establecimientos públicos de salud.

**Segmento objetivo 1: Pacientes de zonas urbanas periféricas que acuden a establecimientos públicos de salud**

- **Datos demográficos:**
  - Edad: Entre 18 y 65 años, incluyendo adultos que gestionan sus propias citas y las de familiares o dependientes (hijos, adultos mayores).
  - Ocupación: Diversa, incluyendo personas que trabajan, estudian o se dedican a labores del hogar.
  - Lugar de residencia: Zonas urbanas periféricas de Lima Metropolitana, Perú.
- **Perfil:** Pacientes que acuden con cierta frecuencia a postas, centros de salud o establecimientos materno-infantiles públicos, y que muchas veces también gestionan la atención médica de familiares o personas a su cargo.
- **Problema:** La dependencia de procesos presenciales o telefónicos para conseguir una cita genera tiempos de espera elevados, cupos limitados, desinformación sobre la disponibilidad y el riesgo de perder citas ya conseguidas por falta de recordatorios.
- **Necesidad:** Una solución digital accesible desde el celular que permita reservar citas médicas, conocer la disponibilidad en tiempo real, recibir notificaciones cuando se libere un cupo y gestionar tanto sus propias citas como las de sus familiares o dependientes.

**Segmento objetivo 2: Personal asistencial y administrativo de establecimientos públicos de salud**

- **Datos demográficos:**
  - Edad: Mayores de 18 años.
  - Ocupación: Personal administrativo, de admisión, enfermeros y técnicos de establecimientos públicos de salud.
  - Lugar de residencia: Lima Metropolitana, Perú.
- **Perfil:** Personal responsable de la gestión de citas, la atención de pacientes y el control del flujo de atención dentro de los establecimientos públicos de salud.
- **Problema:** La asignación manual de cupos, la gestión de cancelaciones, el control de pacientes que no se presentan y el seguimiento de la sala de espera generan una carga operativa elevada y dificultan la visualización del estado de la atención en tiempo real.
- **Necesidad:** Una herramienta digital que centralice la gestión de citas y pacientes, permita visualizar en tiempo real el estado de la atención y la demanda, y facilite el control de cancelaciones, inasistencias y listas de espera.



---


