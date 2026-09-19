<div align="center">

<img src="https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png" alt="Logo UPC" width="150">

### Universidad Peruana de Ciencias Aplicadas
### Carrera de Ingeniería de Software

**1ACC0238**  
**Aplicaciones para Dispositivos Móviles**

**NRC**  
4945

**Informe del Trabajo Final**

**Docente**  
Mayta Guillermo, Jorge Luis

**Equipo**  
RuwaLabs

**Proyecto**  
SaludYa

**Integrantes**

| Código     | Apellidos y Nombres |
|:-----------| :--- |
| [Código]   | Aguilar Untiveros, Rodrigo Fabrizio |
| u202319950 | Meza Solórzano, Didier Sebastian |
| u20241d934 | Montoya Nina, Paula Fernanda |
| [Código]   | Ramos Mera, Neo Daniel |
| u202624323 | Torres Juárez, Alisee Muriel |

**Período 202620**  
**Agosto 2026**

</div>

---
# Registro de Versiones del Informe

| Versión | Fecha    | Autor                            | Descripción de modificación                                                                                                                                                                |
|:--------|:---------|:---------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1.0.0   | 09-11-26 | Montoya Nina Paula Fernanda      | Se agregó la estructura base del documento, la Carátula, registro de versiones y el formato inicial del Student Outcome.                                                                   |
| 1.1.0   | 09-11-26 | Meza Solórzano, Didier Sebastian | Se desarrolló el Solution Profile, el proceso Lean UX, los segmentos objetivo, el análisis competitivo y el diseño, registro y análisis de entrevistas de SaludYa (secciones 1.2 a 2.2.3). |
| 1.2.0   | 08-09-26 | Torres Juárez, Alisee Muriel     | Se desarrolló el Needfinding y la especificación de requisitos (secciones 2.3 a 2.4.4).                                                                                                    |

---

# Project Report Collaboration Insights

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
          <li><strong>AV1:</strong> [Describir acciones específicas]</li>
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
          <li><strong>AV1:</strong> [Describir acciones específicas]</li>
        </ul>
      </td>
      <td width="25%">
        <p><strong>AV1:</strong><br>
        [Redactar conclusión grupal sobre cómo el equipo actualizó conceptos en esta entrega]</p>
      </td>
    </tr>
    <tr>
      <td>
        Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software.
      </td>
      <td>
        <strong>Aguilar Untiveros, Rodrigo Fabrizio</strong>
        <ul>
          <li><strong>AV1:</strong> [Describir acciones específicas]</li>
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
          <li><strong>AV1:</strong> Como equipo, actualizamos de forma práctica nuestros conocimientos en el análisis y modelado de software, integrando metodologías como Lean UX, EventStorming y Domain-Driven Design (DDD). Esto nos permitió diseñar una arquitectura sólida, documentada con diagramas tácticos, estratégicos y de bases de datos, alineando la solución tecnológica a las necesidades reales del sector salud.]</li>
        </ul>
      </td>
      <td>
        <p><strong>AV1:</strong><br> El equipo reconoció que el aprendizaje autónomo es un pilar fundamental en el desarrollo del proyecto. La exigencia de investigar y dominar nuevas herramientas tecnológicas, técnicas de entrevistas y patrones arquitectónicos nos demostró que la actualización constante es la única vía para proponer soluciones de software de calidad.</p>
      </td>
    </tr>
  </tbody>
</table>

---


