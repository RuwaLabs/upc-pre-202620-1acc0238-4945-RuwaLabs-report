### 4.1.3. Source Code Style Guide & Conventions

En esta sección se establecen las convenciones de estilo y nomenclatura que el equipo **RuwaLabs** adopta para el desarrollo de la solución **SaludYa**, compuesta por el Landing Page, las aplicaciones móviles (pacientes y personal de salud) y los servicios web. El objetivo es garantizar la legibilidad, mantenibilidad y consistencia del código a lo largo del ciclo de vida del proyecto, así como facilitar la colaboración entre los miembros del equipo.

Todas las convenciones se aplican en **inglés** para nombres de archivos, variables, funciones, clases y comentarios, siguiendo las buenas prácticas de la industria y las guías oficiales de cada tecnología.

#### Landing Page

El Landing Page se desarrolla con **HTML5, CSS3 y JavaScript (ES6+)**, aplicando las siguientes convenciones:

| Elemento | Convención | Ejemplo |
|:---|:---|:---|
| Archivos HTML | kebab-case | `index.html` |
| Archivos CSS | kebab-case | `styles.css`, `responsive.css` |
| Archivos JS | kebab-case | `i18n.js`, `main.js` |
| Carpetas | kebab-case | `assets/css/`, `assets/img/`, `assets/locales/` |
| Variables CSS | kebab-case con prefijo `--` | `--color-primary`, `--space-4` |
| Clases CSS | BEM simplificado (bloque__elemento--modificador) | `.hero__title`, `.card--active` |
| IDs HTML | kebab-case | `#primary-nav`, `#hero-title` |
| Variables JS | camelCase | `currentLang`, `headerHeight` |
| Constantes JS | UPPER_SNAKE_CASE | `DEFAULT_LANG`, `STORAGE_KEY` |
| Funciones JS | camelCase | `detectInitialLang()`, `applyTranslations()` |
| Atributos `data-*` | kebab-case | `data-i18n`, `data-i18n-attr`, `data-lang` |

Se adoptan las guías **Google HTML/CSS Style Guide** y **HTML Style Guide and Coding Conventions** (W3Schools), con las siguientes reglas adicionales:

- Indentación de 2 espacios.
- Uso de comillas dobles en HTML y comillas simples en JavaScript.
- Punto y coma obligatorio al final de cada sentencia en JavaScript.
- Declaración de variables con `const` por defecto y `let` cuando sea necesario; se evita `var`.
- Uso de `"use strict"` en cada archivo JavaScript.
- Comentarios en inglés con formato `/* ... */` para bloques y `// ...` para líneas.
- Separación de responsabilidades: estructura (HTML), presentación (CSS) y comportamiento (JS).
- Uso de `aria-*` y roles semánticos para accesibilidad.

#### Aplicaciones móviles

Las aplicaciones móviles se desarrollan con **Kotlin** (Android nativo) y **Kotlin Multiplatform (KMP)** para la lógica compartida con iOS, siguiendo las convenciones oficiales del lenguaje:

| Elemento | Convención | Ejemplo |
|:---|:---|:---|
| Clases | PascalCase | `AppointmentRepository`, `PatientViewModel` |
| Interfaces | PascalCase con prefijo descriptivo | `AppointmentRepository` |
| Funciones | camelCase | `getAvailableSlots()` |
| Variables | camelCase | `availableSlots`, `patientId` |
| Constantes | UPPER_SNAKE_CASE | `MAX_WAITING_LIST_SIZE` |
| Paquetes | minúsculas separadas por punto | `pe.edu.upc.saludya.appointments` |
| Archivos Kotlin | PascalCase | `AppointmentViewModel.kt` |
| Recursos XML | snake_case | `activity_main.xml`, `ic_check_in.xml` |
| Strings | snake_case | `app_name`, `btn_reserve` |

Se adoptan las guías **Android Kotlin Style Guide** y **Kotlin Coding Conventions**, con las siguientes reglas adicionales:

- Indentación de 4 espacios.
- Longitud máxima de línea: 100 caracteres.
- Uso de `val` por defecto y `var` solo cuando sea necesario.
- Uso de `data class` para modelos de dominio.
- Uso de `sealed class` para estados de UI.
- Uso de corrutinas para operaciones asíncronas.
- Nomenclatura en inglés para todos los identificadores.
- Comentarios KDoc para clases y funciones públicas.

#### Servicios web

Los servicios web se desarrollan con **Spring Boot** (Java) y **OpenAPI Specification** para la documentación, siguiendo las convenciones oficiales:

| Elemento | Convención | Ejemplo |
|:---|:---|:---|
| Clases | PascalCase | `AppointmentController`, `PatientService` |
| Métodos | camelCase | `createAppointment()`, `findPatientById()` |
| Variables | camelCase | `appointmentId`, `patientName` |
| Constantes | UPPER_SNAKE_CASE | `MAX_APPOINTMENTS_PER_DAY` |
| Paquetes | minúsculas separadas por punto | `pe.edu.upc.saludya.appointments` |
| Endpoints REST | kebab-case en plural | `/api/v1/appointments`, `/api/v1/patients` |
| Archivos `.feature` (Gherkin) | kebab-case | `reserve-appointment.feature` |
| Tablas de base de datos | snake_case en plural | `appointments`, `patients` |
| Columnas de base de datos | snake_case | `created_at`, `patient_id` |

Se adoptan las guías **Google Java Style Guide** y **Spring Boot Features**, con las siguientes reglas adicionales:

- Indentación de 4 espacios.
- Uso de anotaciones de Spring (`@RestController`, `@Service`, `@Repository`).
- Uso de DTOs para la transferencia de datos entre capas.
- Uso de `Optional` para valores que pueden ser nulos.
- Documentación de endpoints con **OpenAPI** y **Swagger UI**.
- Criterios de aceptación en **Gherkin** con estructura Given-When-Then.

#### Convenciones de commits y ramas

El equipo aplica **Conventional Commits** para los mensajes de commit y **GitFlow** para la gestión de ramas:

| Tipo | Uso |
|:---|:---|
| `feat` | Nueva funcionalidad |
| `fix` | Corrección de error |
| `docs` | Cambios en documentación |
| `style` | Formato sin cambios de lógica |
| `refactor` | Reestructuración sin cambiar comportamiento |
| `test` | Añadir o modificar pruebas |
| `chore` | Tareas de mantenimiento |

| Rama | Uso |
|:---|:---|
| `main` | Versión estable en producción |
| `develop` | Rama de integración |
| `feature/<nombre>` | Nuevas funcionalidades |
| `release/<versión>` | Preparación de release |
| `hotfix/<nombre>` | Correcciones urgentes |

Los releases se nombran aplicando **Semantic Versioning** (`MAJOR.MINOR.PATCH`).