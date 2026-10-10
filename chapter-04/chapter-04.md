<!-- Sección 4.2.1.7 — ubicar bajo el Sprint correspondiente dentro del capítulo 4. -->

#### 4.2.1.7. Services Documentation Evidence for Sprint Review

En esta sección se presenta la evidencia de la documentación de los **Web Services** del backend de SaludYa correspondiente a este Sprint. La documentación se generó con **springdoc-openapi (OpenAPI 3)** a partir de las anotaciones del código y se encuentra **desplegada y navegable** en Swagger UI, lo que permite consultar cada operación y ejecutarla con datos de muestra mediante la opción *Try it out*. Se documentaron los servicios de los cinco *bounded contexts* del sistema —**Identity & Access Management**, **Appointments & Booking**, **Arrival & QR Check-in**, **Reassignment** y **Hospital Operations & Configuration**—, alcanzando **62 operaciones** distribuidas en **53 rutas**.

La especificación OpenAPI se publica en `/v3/api-docs` y se exportó al repositorio de Web Services (`docs/api/openapi.json`) para su versionado. La API utiliza **autenticación HTTP Bearer con JWT** (esquema `bearerAuth`); los endpoints públicos (registro, inicio de sesión, verificación de identidad y recuperación de cuenta) están marcados con `@SecurityRequirements` y no requieren token, mientras que el resto exige un token vigente obtenido tras el inicio de sesión.

- **Swagger UI (documentación desplegada):** http://3.129.217.49:8080/swagger-ui/index.html
- **Especificación OpenAPI (JSON):** http://3.129.217.49:8080/v3/api-docs
- **Repositorio de Web Services:** https://github.com/RuwaLabs/backend-saludya

##### Tabla de endpoints documentados

A continuación se detalla, para cada endpoint, la acción implementada, el verbo HTTP y la sintaxis de llamada, los parámetros admitidos, un ejemplo de petición y de respuesta con datos de muestra, la explicación de la respuesta y el enlace a su documentación desplegada. La URL base es `http://3.129.217.49:8080`.

| # | Acción implementada | Método | Sintaxis de llamada (endpoint) | Parámetros | Petición (ejemplo) | Respuesta (ejemplo) | Explicación del response | Documentación |
|:--:|:--|:--:|:--|:--|:--|:--|:--|:--|
| 1 | Enviar código de verificación antes de registrar la cuenta | POST | `/api/v1/user-accounts/send-verification-code` | body: `email` | `{"email":"kevin.huaman@gmail.com"}` | `202` · *sin cuerpo* | Acepta la solicitud y envía un código de 6 dígitos al correo; no revela si el correo ya existe | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/sendVerificationCode) |
| 2 | Registrar al paciente verificado | POST | `/api/v1/user-accounts` | body: `dni, name, lastname, birthDate, phone, email, password, code` | `{"dni":"74218365","name":"Kevin","lastname":"Huamán","birthDate":"2003-05-14","phone":"987654321","email":"kevin.huaman@gmail.com","password":"SaludYa#2026","code":"483920"}` | `201` `{"id":1,"userId":10,"dni":"74218365","name":"Kevin","lastname":"Huamán","birthDate":"2003-05-14","phone":"987654321"}` | Crea la cuenta y devuelve el recurso del paciente; el header `Location` apunta al recurso creado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/register) |
| 3 | Iniciar sesión (valida credenciales y envía código) | POST | `/api/v1/user-accounts/login` | body: `email, password` | `{"email":"kevin.huaman@gmail.com","password":"SaludYa#2026"}` | `200` `{"challengeId":"8f2c1d40-...","maskedEmail":"k***@gmail.com","expiresAt":"2026-10-09T10:35:00Z"}` | Valida las credenciales y devuelve el desafío con el correo enmascarado; un mensaje único cubre credenciales inválidas | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/login) |
| 4 | Completar inicio de sesión con el código | POST | `/api/v1/user-accounts/login/verify` | body: `challengeId, code` | `{"challengeId":"8f2c1d40-...","code":"721305"}` | `200` `{"accessToken":"eyJhbGciOiJIUzI1NiJ9...","tokenType":"Bearer","expiresAt":"2026-10-09T11:30:00Z","userId":10,"role":"PATIENT","patientId":1}` | Devuelve el token de acceso (JWT) y los identificadores del paciente y su rol | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/verifyLogin) |
| 5 | Reenviar el código del desafío de login | POST | `/api/v1/user-accounts/login/resend` | body: `challengeId` | `{"challengeId":"8f2c1d40-..."}` | `202` · *sin cuerpo* | Genera y reenvía un nuevo código para el mismo desafío | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/resendLoginCode) |
| 6 | Cerrar sesión (revoca el token actual) | POST | `/api/v1/user-accounts/logout` | header: `Authorization: Bearer <token>` | *(sin cuerpo)* | `204` · *sin cuerpo* | Revoca la sesión Bearer vigente; responde sin contenido | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/logout) |
| 7 | Solicitar enlace de recuperación de contraseña | POST | `/api/v1/user-accounts/recover-password` | body: `email` | `{"email":"kevin.huaman@gmail.com"}` | `202` `{"message":"If an active account exists, a recovery email will be sent."}` | Confirma la recepción de forma genérica, sin revelar si el correo está registrado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/recover) |
| 8 | Restablecer contraseña con el enlace de recuperación | POST | `/api/v1/user-accounts/reset-password` | body: `token, password, confirmPassword` | `{"token":"d41d8cd98f00...","password":"Nueva#2026","confirmPassword":"Nueva#2026"}` | `204` · *sin cuerpo* | Canjea el enlace de un solo uso y revoca las sesiones previas; responde sin contenido | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/reset) |
| 9 | Cambiar la contraseña usando la actual | POST | `/api/v1/user-accounts/change-password` | header: `Authorization` · body: `currentPassword, password, confirmPassword` | `{"currentPassword":"SaludYa#2026","password":"Nueva#2026","confirmPassword":"Nueva#2026"}` | `204` · *sin cuerpo* | Actualiza la contraseña del usuario autenticado; responde sin contenido | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/change) |
| 10 | Leer la cuenta y el perfil propios | GET | `/api/v1/user-accounts/me` | header: `Authorization` | *(sin cuerpo)* | `200` `{"id":10,"role":"PATIENT","email":"kevin.huaman@gmail.com","active":true,"patientId":1,"dni":"74218365","name":"Kevin","lastname":"Huamán","birthDate":"2003-05-14","phone":"987654321"}` | Devuelve el perfil de la cuenta autenticada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/me) |
| 11 | Leer un perfil por id | GET | `/api/v1/user-accounts/{id}` | path: `id` · header: `Authorization` | `/api/v1/user-accounts/10` | `200` `{"id":10,"role":"PATIENT","email":"kevin.huaman@gmail.com","active":true,"patientId":1,...}` | Devuelve el perfil propio; un SUPER_ADMIN puede consultar otra cuenta | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/get) |
| 12 | Actualizar correo y celular | PUT | `/api/v1/user-accounts/{id}` | path: `id` · body: `email, phone` | `{"email":"kevin.nuevo@gmail.com","phone":"987111222"}` | `200` `{"id":10,"email":"kevin.nuevo@gmail.com","phone":"987111222",...}` | Actualiza solo correo y celular; la identidad y el rol permanecen inmutables | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/update) |
| 13 | Crear cuenta de personal de admisión | POST | `/api/v1/user-accounts/staff` | header: `Authorization (SUPER_ADMIN)` · body: `dni, name, lastname, birthDate, phone, email` | `{"dni":"70000002","name":"Franco","lastname":"Alanoca","birthDate":"1999-03-02","phone":"999888777","email":"franco@saludya.local"}` | `201` `{"id":15,"role":"ADMISSION_STAFF","email":"franco@saludya.local","active":true,"patientId":null,...}` | Crea la cuenta del personal y envía una invitación para definir contraseña | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20User%20accounts/staff) |
| 14 | Verificar identidad por DNI y nombre | POST | `/api/v1/identity-verifications` | body: `dni, name, lastname` | `{"dni":"74218365","name":"Kevin","lastname":"Huamán"}` | `200` `{"verified":true}` | Indica si el DNI existe y el nombre completo coincide con el registro oficial | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Identity%20verification/verify) |
| 15 | Comprobar si un DNI es conocido | POST | `/api/v1/identity-verifications/exists` | body: `dni` | `{"dni":"74218365"}` | `200` `{"exists":true}` | Indica si el DNI es conocido por el proveedor de identidad | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Identity%20verification/exists) |
| 16 | Leer el perfil de paciente | GET | `/api/v1/patients/{id}` | path: `id` · header: `Authorization` | `/api/v1/patients/1` | `200` `{"id":1,"userId":10,"dni":"74218365","name":"Kevin","lastname":"Huamán","birthDate":"2003-05-14","phone":"987654321"}` | Devuelve el paciente propio o un menor vinculado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/get_1) |
| 17 | Actualizar datos de contacto del paciente | PUT | `/api/v1/patients/{id}` | path: `id` · body: `email, phone` | `{"email":"kevin.nuevo@gmail.com","phone":"987111222"}` | `200` `{"id":1,"userId":10,"dni":"74218365","name":"Kevin",...}` | Actualiza el contacto del paciente propio y devuelve el recurso actualizado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/update_1) |
| 18 | Listar menores vinculados | GET | `/api/v1/patients/{id}/minors` | path: `id` · header: `Authorization` | `/api/v1/patients/1/minors` | `200` `[{"id":5,"patientId":88,"tutorId":1}]` | Lista los vínculos de tutoría del paciente autenticado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Patients/minors) |
| 19 | Vincular a un menor verificado | POST | `/api/v1/patient-minors` | header: `Authorization` · body: `dni, name, lastname, birthDate, confirmFiliation` | `{"dni":"76543210","name":"Ana","lastname":"Torres","birthDate":"2015-08-20","confirmFiliation":true}` | `201` `{"id":5,"patientId":88,"tutorId":1}` | Crea el vínculo de tutoría tras confirmar la filiación; `Location` apunta al recurso | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/link) |
| 20 | Leer un vínculo de tutoría | GET | `/api/v1/patient-minors/{id}` | path: `id` · header: `Authorization` | `/api/v1/patient-minors/5` | `200` `{"id":5,"patientId":88,"tutorId":1}` | Devuelve el vínculo de tutoría solicitado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/get_2) |
| 21 | Desvincular a un menor | DELETE | `/api/v1/patient-minors/{id}` | path: `id` · header: `Authorization` | `/api/v1/patient-minors/5` | `204` · *sin cuerpo* | Elimina el vínculo de tutoría conservando la historia clínica del menor | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Linked%20minors/unlink) |
| 22 | Obtener instrucciones de soporte | GET | `/api/v1/account-recovery-requests/support` | — | *(sin cuerpo)* | `200` `{"instructions":"Acude al área de admisión con tu DNI original...","phone":"999888777"}` | Devuelve las instrucciones y el teléfono de soporte (público) | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/support) |
| 23 | Solicitar recuperación asistida | POST | `/api/v1/account-recovery-requests` | body: `dni, contactEmail` | `{"dni":"74218365","contactEmail":"familiar@gmail.com"}` | `202` `{"message":"Request received...","instructions":"...","phone":"999888777"}` | Registra la solicitud; no otorga acceso ni revela cuentas | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/request) |
| 24 | Listar solicitudes de recuperación abiertas | GET | `/api/v1/account-recovery-requests` | header: `Authorization (SUPER_ADMIN)` | *(sin cuerpo)* | `200` `[{"id":"3f7b...","dni":"74218365","contactEmail":"familiar@gmail.com","status":"OPEN","createdAt":"2026-10-09T10:00:00Z",...}]` | Lista las 100 solicitudes abiertas más antiguas | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/open) |
| 25 | Resolver solicitud de recuperación asistida | POST | `/api/v1/account-recovery-requests/{id}/resolve` | path: `id` · header: `Authorization (SUPER_ADMIN)` · body: `identityCheckedInPerson` | `{"identityCheckedInPerson":true}` | `200` `{"email":"new.user@saludya.local","password":"Temp#a1B2c3","message":"..."}` | Restablece la cuenta con correo y clave temporal tras verificar el DNI físico (SUPER_ADMIN) | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/IAM%20-%20Assisted%20recovery/resolve) |
| 26 | Reservar una cita | POST | `/api/v1/appointments` | body: `patientId, timeSlotId` | `{"patientId":1,"timeSlotId":31}` | `201` `{"id":142,"timeSlotId":31,"patientId":1,"bookingOrder":3,"bookingCode":"RSV-000142","status":"RESERVED","createdAt":"2026-10-09T09:00:00Z","updatedAt":null}` | Crea la cita y devuelve el recurso; `Location` apunta a la cita creada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/bookAppointment) |
| 27 | Listar citas con filtros | GET | `/api/v1/appointments` | query: `patientId, timeSlotId, doctorId, specialtyId, date, status` | `/api/v1/appointments?patientId=1&status=RESERVED` | `200` `[{"id":142,"timeSlotId":31,"patientId":1,"status":"RESERVED",...}]` | Devuelve las citas filtradas; si el actor es paciente, `patientId` es obligatorio | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointments) |
| 28 | Obtener una cita por id | GET | `/api/v1/appointments/{id}` | path: `id` | `/api/v1/appointments/142` | `200` `{"id":142,"timeSlotId":31,"patientId":1,"bookingOrder":3,"status":"RESERVED",...}` | Devuelve la cita; error si no existe o no es gestionable por el usuario | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointmentById) |
| 29 | Listar citas de un paciente | GET | `/api/v1/appointments/patient/{patientId}` | path: `patientId` · query: `status` | `/api/v1/appointments/patient/1?status=CONFIRMED` | `200` `[{"id":142,"patientId":1,"status":"CONFIRMED",...}]` | Lista las citas del paciente indicado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/getAppointmentsByPatient) |
| 30 | Cancelar una cita | DELETE | `/api/v1/appointments/{id}` | path: `id` | `/api/v1/appointments/142` | `200` `{"id":142,"status":"CANCELLED",...}` | Cancela la cita y devuelve el recurso con estado `CANCELLED` | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Appointments/cancelAppointment) |
| 31 | Listar doctores por especialidad | GET | `/api/v1/doctors` | query: `specialtyId` (obligatorio) | `/api/v1/doctors?specialtyId=1` | `200` `[{"id":7,"specialtyId":1,"name":"Ana","lastname":"Rojas"}]` | Devuelve los doctores de la especialidad indicada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Doctors/getDoctorsBySpecialty) |
| 32 | Obtener un doctor por id | GET | `/api/v1/doctors/{id}` | path: `id` | `/api/v1/doctors/7` | `200` `{"id":7,"specialtyId":1,"name":"Ana","lastname":"Rojas"}` | Devuelve el doctor solicitado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Doctors/getDoctorById) |
| 33 | Listar especialidades | GET | `/api/v1/specialties` | — | `/api/v1/specialties` | `200` `[{"id":1,"name":"Medicina general","description":"Atención médica primaria"}]` | Devuelve el catálogo de especialidades | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Specialties/getAllSpecialties) |
| 34 | Obtener una especialidad por id | GET | `/api/v1/specialties/{id}` | path: `id` | `/api/v1/specialties/1` | `200` `{"id":1,"name":"Medicina general","description":"Atención médica primaria"}` | Devuelve la especialidad solicitada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Specialties/getSpecialtyById) |
| 35 | Slots disponibles por especialidad y fecha | GET | `/api/v1/time-slots/available` | query: `specialtyId, date` (obligatorios) | `/api/v1/time-slots/available?specialtyId=1&date=2026-10-15` | `200` `[{"id":31,"doctorId":7,"date":"2026-10-15","startHour":"09:00","endHour":"09:30","room":"Consultorio 3","maxCapacity":5,"currentBookings":2,"status":"AVAILABLE"}]` | Devuelve los slots con cupo disponible para la especialidad y fecha | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getAvailableTimeSlots) |
| 36 | Slots de un doctor en una fecha | GET | `/api/v1/time-slots` | query: `doctorId, date` (obligatorios) | `/api/v1/time-slots?doctorId=7&date=2026-10-15` | `200` `[{"id":31,"doctorId":7,"date":"2026-10-15","status":"AVAILABLE",...}]` | Devuelve los slots del doctor en la fecha indicada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotsByDoctorAndDate) |
| 37 | Obtener un slot por id | GET | `/api/v1/time-slots/{id}` | path: `id` | `/api/v1/time-slots/31` | `200` `{"id":31,"doctorId":7,"date":"2026-10-15","startHour":"09:00","status":"AVAILABLE",...}` | Devuelve el slot solicitado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/getTimeSlotById) |
| 38 | Crear un slot de atención | POST | `/api/v1/time-slots` | body: `doctorId, date, startHour, endHour, room, maxCapacity` | `{"doctorId":7,"date":"2026-10-16","startHour":"09:00","endHour":"09:30","room":"Consultorio 3","maxCapacity":5}` | `201` `{"id":32,"doctorId":7,"date":"2026-10-16","startHour":"09:00","status":"AVAILABLE",...}` | Crea el slot y devuelve el recurso creado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/createTimeSlot) |
| 39 | Actualizar la capacidad de un slot | PUT | `/api/v1/time-slots/{id}/capacity` | path: `id` · body: `maxCapacity` | `{"maxCapacity":8}` | `200` `{"id":31,"maxCapacity":8,"currentBookings":2,"status":"AVAILABLE",...}` | Actualiza la capacidad máxima del slot | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlotCapacity) |
| 40 | Editar un slot (doctor, horario y estado) | PUT | `/api/v1/time-slots/{id}` | path: `id` · body: `doctorId, startHour, endHour, status` | `{"doctorId":7,"startHour":"10:00","endHour":"10:30","status":"AVAILABLE"}` | `200` `{"id":31,"doctorId":7,"startHour":"10:00","endHour":"10:30","status":"AVAILABLE",...}` | Edita los datos del slot | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Time%20Slots/updateTimeSlot) |
| 41 | Registrar check-in por token QR | POST | `/api/v1/check-ins/qr` | body: `qrToken` | `{"qrToken":"eyJhbGciOiJIUzI1NiJ9.qr.14f..."}` | `201` `{"checkInId":15,"appointmentId":142,"queueEntryId":9,"position":3,"totalInQueue":8,"status":"WAITING"}` | Registra la llegada, crea el ticket y la entrada en la cola; devuelve la posición | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckIn) |
| 42 | Registrar check-in por código de reserva | POST | `/api/v1/check-ins/code` | body: `bookingCode` | `{"bookingCode":"RSV-000142"}` | `201` `{"checkInId":15,"appointmentId":142,"queueEntryId":9,"position":3,"totalInQueue":8,"status":"WAITING"}` | Alternativa manual: registra la llegada con el código de reserva | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/registerCheckInByCode) |
| 43 | Obtener el ticket digital de un check-in | GET | `/api/v1/check-ins/{id}` | path: `id` | `/api/v1/check-ins/15` | `200` `{"id":15,"appointmentId":142,"bookingCode":"RSV-000142","turnCode":"A-003","specialtyName":"Medicina general","status":"VALID",...}` | Devuelve el ticket digital del check-in | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getById_1) |
| 44 | Obtener el ticket digital de una cita | GET | `/api/v1/check-ins/appointment/{appointmentId}` | path: `appointmentId` | `/api/v1/check-ins/appointment/142` | `200` `{"id":15,"appointmentId":142,"turnCode":"A-003","status":"VALID",...}` | Devuelve el ticket digital asociado a la cita | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getByAppointment) |
| 45 | Generar el token QR firmado de una cita | GET | `/api/v1/check-ins/appointment/{appointmentId}/qr-token` | path: `appointmentId` | `/api/v1/check-ins/appointment/142/qr-token` | `200` `{"qrToken":"eyJhbGciOiJIUzI1NiJ9.qr.14f..."}` | Genera el token QR firmado y temporal de la cita | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/generateQrToken) |
| 46 | Posición del paciente en la cola por cita | GET | `/api/v1/check-ins/appointment/{appointmentId}/position` | path: `appointmentId` | `/api/v1/check-ins/appointment/142/position` | `200` `{"position":3,"totalInQueue":8}` | Devuelve la posición actual del paciente y el total en cola | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Check-ins/getPosition) |
| 47 | Obtener una entrada de cola | GET | `/api/v1/queue-entries/{id}` | path: `id` | `/api/v1/queue-entries/9` | `200` `{"id":9,"attendanceQueueId":4,"checkInId":15,"position":3,"status":"WAITING","calledAt":null,"attendedAt":null}` | Devuelve la entrada de cola (el paciente puede leer la suya) | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/getById) |
| 48 | Marcar una entrada como ausente | POST | `/api/v1/queue-entries/{id}/absent` | path: `id` | `/api/v1/queue-entries/9/absent` | `204` · *sin cuerpo* | Marca al paciente como ausente y cierra su entrada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/markAbsent) |
| 49 | Salir voluntariamente de la cola | POST | `/api/v1/queue-entries/{id}/leave` | path: `id` | `/api/v1/queue-entries/9/leave` | `204` · *sin cuerpo* | El paciente abandona la cola; la cita se marca como ausente | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/leaveQueue) |
| 50 | Iniciar la atención de una entrada llamada | POST | `/api/v1/queue-entries/{id}/start` | path: `id` | `/api/v1/queue-entries/9/start` | `200` `{"id":9,"status":"IN_ATTENTION",...}` | Cambia la entrada a `IN_ATTENTION` | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/startAttention) |
| 51 | Finalizar la atención de una entrada | POST | `/api/v1/queue-entries/{id}/finish` | path: `id` | `/api/v1/queue-entries/9/finish` | `200` `{"id":9,"status":"ATTENDED","attendedAt":"2026-10-15T09:25:00Z"}` | Marca la entrada como atendida | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Queue%20Entries/finishAttention) |
| 52 | Resolver la cola de un slot en una fecha | GET | `/api/v1/attendance-queues` | query: `timeSlotId, date` (obligatorios) | `/api/v1/attendance-queues?timeSlotId=31&date=2026-10-15` | `200` `{"id":4,"timeSlotId":31,"date":"2026-10-15","status":"OPEN"}` | Devuelve la cola de atención del slot y fecha; error si no existe | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getQueue) |
| 53 | Listar las entradas de una cola | GET | `/api/v1/attendance-queues/{id}/entries` | path: `id` | `/api/v1/attendance-queues/4/entries` | `200` `[{"id":9,"position":3,"status":"WAITING",...}]` | Lista las entradas (pacientes) de la cola | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getEntries) |
| 54 | Posición actual en la cola | GET | `/api/v1/attendance-queues/{id}/position` | path: `id` | `/api/v1/attendance-queues/4/position` | `200` `{"position":3,"totalInQueue":8}` | Devuelve la posición y el total de la cola | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/getPosition_1) |
| 55 | Llamar al siguiente paciente | POST | `/api/v1/attendance-queues/{id}/call-next` | path: `id` | `/api/v1/attendance-queues/4/call-next` | `200` `{"id":9,"position":3,"status":"CALLED","calledAt":"2026-10-15T09:10:00Z"}` | Llama al siguiente paciente en espera y devuelve su entrada | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/Attendance%20Queues/callNext) |
| 56 | Listar ofertas de cupo pendientes | GET | `/api/v1/reassignment-offers/pending` | header: `Authorization` · query: `appointmentId` (opcional) | `/api/v1/reassignment-offers/pending` | `200` `[{"id":21,"appointmentId":142,"originalAppointmentId":130,"freedTimeSlotId":31,"candidateTimeSlotId":31,"status":"PENDING","offeredAt":"2026-10-09T09:05:00Z","respondedAt":null,"expiresAt":"2026-10-09T09:15:00Z"}]` | Devuelve las ofertas pendientes del usuario y sus menores | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/getPendingOffers) |
| 57 | Aceptar una oferta de reasignación | POST | `/api/v1/reassignment-offers/{id}/accept` | path: `id` | `/api/v1/reassignment-offers/21/accept` | `200` `{"id":21,"status":"ACCEPTED","respondedAt":"2026-10-09T09:08:00Z",...}` | Acepta la oferta y agenda la cita en el cupo liberado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/acceptOffer) |
| 58 | Rechazar una oferta de reasignación | POST | `/api/v1/reassignment-offers/{id}/reject` | path: `id` | `/api/v1/reassignment-offers/21/reject` | `200` `{"id":21,"status":"REJECTED","respondedAt":"2026-10-09T09:08:00Z",...}` | Rechaza la oferta y libera el cupo al siguiente candidato | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/reassignment-offers-controller/rejectOffer) |
| 59 | Leer la configuración del establecimiento | GET | `/api/v1/config` | — | `/api/v1/config` | `200` `{"id":1,"maxCapacityPerSlot":5,"bookingOrderScope":"PER_SPECIALTY","checkInToleranceMinutes":15,"postCallToleranceMinutes":5,"attendanceQueueVisible":true,...}` | Devuelve la configuración vigente del establecimiento | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getConfiguration) |
| 60 | Actualizar la configuración del establecimiento | PUT | `/api/v1/config` | body: `maxCapacityPerSlot, checkInToleranceMinutes, postCallToleranceMinutes, reassignmentResponseTimeoutMin, bookingCutoffTime, cancellationDeadlineHours, attendanceQueueVisible` | `{"maxCapacityPerSlot":6,"checkInToleranceMinutes":15,"postCallToleranceMinutes":5,"reassignmentResponseTimeoutMin":10,"bookingCutoffTime":"18:00","cancellationDeadlineHours":24,"attendanceQueueVisible":true}` | `200` `{"id":1,"maxCapacityPerSlot":6,...,"updatedAt":"2026-10-09T08:30:00"}` | Actualiza la configuración y devuelve el recurso actualizado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/updateConfiguration) |
| 61 | Obtener el panel de métricas del día | GET | `/api/v1/config/dashboard` | query: `date` (opcional) | `/api/v1/config/dashboard?date=2026-10-15` | `200` `{"configurationId":1,"metrics":[{"name":"appointmentsToday","value":24},{"name":"inQueue","value":8}],"externalDataAvailable":true,...}` | Devuelve las métricas operativas del día | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/getDashboard) |
| 62 | Generar un reporte por rango de fechas | GET | `/api/v1/config/reports` | query: `from, to, format` (obligatorios; `format` por defecto `JSON`) | `/api/v1/config/reports?from=2026-10-01&to=2026-10-07&format=JSON` | `200` `{"format":"JSON","generatedAt":"2026-10-09T12:00:00Z","content":"{...}"}` | Genera el reporte del rango indicado en el formato solicitado | [Swagger](http://3.129.217.49:8080/swagger-ui/index.html#/configuration-controller/generateReport) |

##### Evidencias de interacción (capturas con datos de muestra)

A continuación se incluyen capturas de la interacción con la documentación desplegada (Swagger UI), ejecutando cada operación con **datos de muestra**. En cada caso se presenta primero el **dato de muestra** de la petición y luego la captura del request/response obtenido; las capturas deben reemplazar los marcadores `git-issue`/`ruta-de-imagen` por las imágenes reales alojadas en `chapter-04/assets/`.

> **Nota metodológica:** los datos de muestra se colocan **encima** de cada captura, porque son el contexto necesario para interpretar la imagen (qué se envió y qué se esperaba); la imagen actúa como evidencia de que la respuesta real coincide.

###### IAM — Verificación de identidad

**Petición de muestra (14):**
```json
{ "dni": "74218365", "name": "Kevin", "lastname": "Huamán" }
```
![Evidencia identity-verifications](chapter-04/assets/4-2-1-7-identity-verify.png)
*Figura. `POST /api/v1/identity-verifications` ejecutado en Swagger UI con datos de muestra; respuesta `200 {"verified": true}`.*

###### IAM — Inicio de sesión (desafío + verificación)

**Petición de muestra (3):**
```json
{ "email": "kevin.huaman@gmail.com", "password": "SaludYa#2026" }
```
![Evidencia login](chapter-04/assets/4-2-1-7-login.png)
*Figura. `POST /api/v1/user-accounts/login` con datos de muestra; respuesta `200` con `challengeId` y `maskedEmail`.*

**Petición de muestra (4):**
```json
{ "challengeId": "8f2c1d40-...", "code": "721305" }
```
![Evidencia login/verify](chapter-04/assets/4-2-1-7-login-verify.png)
*Figura. `POST /api/v1/user-accounts/login/verify`; respuesta `200` con `accessToken`, `role` y `patientId`.*

###### Appointments & Booking — Disponibilidad y reserva

**Petición de muestra (35):** `GET /api/v1/time-slots/available?specialtyId=1&date=2026-10-15`
![Evidencia slots disponibles](chapter-04/assets/4-2-1-7-slots-available.png)
*Figura. Consulta de horarios disponibles; respuesta `200` con la lista de slots.*

**Petición de muestra (26):**
```json
{ "patientId": 1, "timeSlotId": 31 }
```
![Evidencia reservar cita](chapter-04/assets/4-2-1-7-book-appointment.png)
*Figura. `POST /api/v1/appointments`; respuesta `201` con la cita creada y su `bookingCode`.*

###### Arrival & QR Check-in

**Petición de muestra (41):**
```json
{ "qrToken": "eyJhbGciOiJIUzI1NiJ9.qr.14f..." }
```
![Evidencia check-in qr](chapter-04/assets/4-2-1-7-checkin-qr.png)
*Figura. `POST /api/v1/check-ins/qr`; respuesta `201` con `position` y `totalInQueue`.*

###### Reassignment

**Petición de muestra (56):** `GET /api/v1/reassignment-offers/pending`
![Evidencia ofertas pendientes](chapter-04/assets/4-2-1-7-offers-pending.png)
*Figura. Listado de ofertas de cupo pendientes; respuesta `200` con el arreglo de ofertas.*

**Petición de muestra (57):** `POST /api/v1/reassignment-offers/21/accept`
![Evidencia aceptar oferta](chapter-04/assets/4-2-1-7-offer-accept.png)
*Figura. Aceptación de la oferta; respuesta `200` con `status":"ACCEPTED"`.*

###### Hospital Operations & Configuration

**Petición de muestra (59):** `GET /api/v1/config`
![Evidencia configuración](chapter-04/assets/4-2-1-7-config.png)
*Figura. Lectura de la configuración del establecimiento; respuesta `200`.*

##### Commits de documentación

- **Commits relacionados con la documentación para este Sprint:**

| Commit | Mensaje | Relación |
|:--|:--|:--|
| [`a592333`](https://github.com/RuwaLabs/backend-saludya/commit/a592333) | `docs(api): add OpenAPI spec export and Web Services endpoint documentation` | Exportación del documento OpenAPI (`docs/api/openapi.json`) y documentación de endpoints del Sprint |
| [`fdf27c4`](https://github.com/RuwaLabs/backend-saludya/commit/fdf27c4) | `chore: drop hardcoded OpenAPI server so Swagger targets the current host` | Ajuste para que Swagger UI resuelva las peticiones contra el host desplegado |
| [`a870d04`](https://github.com/RuwaLabs/backend-saludya/commit/a870d04) | `docs(iam): add setup guide and API request examples` | Guía de configuración y ejemplos de peticiones de IAM |
| [`acb79f5`](https://github.com/RuwaLabs/backend-saludya/commit/acb79f5) | `fix(openapi): remove legacy ACME configuration` | Corrección de la configuración OpenAPI |
| [`955abb6`](https://github.com/RuwaLabs/backend-saludya/commit/955abb6) | `feat: initializing project` | Configuración base de la documentación OpenAPI del proyecto |
