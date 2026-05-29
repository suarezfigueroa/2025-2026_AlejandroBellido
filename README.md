# BX Sports — Documentación TFG

---

## 1. Portada

<div align="center">

# BX'SPORTS
### Aplicación web de entrenamiento adaptativo

**Ciclo Formativo:** Desarrollo de Aplicaciones Web (DAW) — Grado Superior  
**Centro Educativo:** IES Suárez de Figueroa  
**Autor:** Alejandro Bellido Fernández  
**Tutor:** Jose Andrés Paredes  
**Fecha de presentación:** Junio 2026  
**Repositorio:** [github.com/suarezfigueroa/2025-2026_AlejandroBellido](https://github.com/suarezfigueroa/2025-2026_AlejandroBellido)

---

![BX Sports](portada.html)

</div>

---

## 2. Índice

1. [Portada](#1-portada)
2. [Índice](#2-índice)
3. [Introducción](#3-introducción)
4. [Objetivos del proyecto](#4-objetivos-del-proyecto)
5. [Justificación del proyecto](#5-justificación-del-proyecto)
   - 5.1 [Análisis de mercado](#51-análisis-de-mercado)
   - 5.2 [Vinculación con contenidos del Ciclo](#52-vinculación-con-contenidos-del-ciclo)
6. [Recursos utilizados](#6-recursos-utilizados)
   - 6.1 [Entornos de desarrollo](#61-entornos-de-desarrollo)
   - 6.2 [Lenguajes de programación](#62-lenguajes-de-programación)
   - 6.3 [Utilidades](#63-utilidades)
7. [Tecnologías de desarrollo](#7-tecnologías-de-desarrollo)
8. [Diseño del proyecto](#8-diseño-del-proyecto)
   - 8.1 [Diseño de la base de datos](#81-diseño-de-la-base-de-datos)
   - 8.2 [Carga de datos inicial](#82-carga-de-datos-inicial)
   - 8.3 [Diseño de la interfaz de usuario](#83-diseño-de-la-interfaz-de-usuario)
   - 8.4 [Roles de la aplicación](#84-roles-de-la-aplicación)
   - 8.5 [Usuarios creados para pruebas](#85-usuarios-creados-para-pruebas)
9. [Lógica y codificación del proyecto](#9-lógica-y-codificación-del-proyecto)
   - 9.1 [Principales procesos](#91-principales-procesos)
   - 9.2 [Aspectos relevantes de la implementación](#92-aspectos-relevantes-de-la-implementación)
10. [Despliegue web del proyecto](#10-despliegue-web-del-proyecto)
11. [Manual de usuario](#11-manual-de-usuario)
12. [Conclusiones y aspectos a mejorar](#12-conclusiones-y-aspectos-a-mejorar)
13. [Bibliografía](#13-bibliografía)

---

## 3. Introducción

BX Sports es una aplicación web de entrenamiento adaptativo desarrollada como Trabajo Final de Grado del ciclo formativo de Desarrollo de Aplicaciones Web. La aplicación permite a los usuarios registrarse, obtener un nivel de entrenamiento personalizado basado en su IMC y frecuencia de entrenamiento semanal, y acceder a rutinas de ejercicios y planes de dieta adaptados a su perfil.

El sistema clasifica a cada usuario en uno de cinco niveles (Iniciado, Aspirante, Guerrero, Campeón y Élite) que se asignan automáticamente al registrarse y se recalculan cada vez que el usuario actualiza su peso en el perfil. En función de ese nivel y del objetivo elegido (ganar músculo, perder peso o mantenimiento), la aplicación muestra rutinas de ejercicio organizadas por día de la semana y grupo muscular, así como un plan nutricional completo con seis comidas diarias y sus macronutrientes.

La aplicación cuenta también con un panel de administración que permite gestionar los usuarios registrados, consultar los mensajes recibidos a través del formulario de contacto y gestionar la cuenta del administrador.

---

## 4. Objetivos del proyecto

- Desarrollar una aplicación web funcional con arquitectura cliente-servidor usando tecnologías estándar del ciclo DAW.
- Implementar un sistema de autenticación seguro con registro, login y gestión de sesiones.
- Crear un algoritmo de asignación de nivel basado en el IMC del usuario y su frecuencia de entrenamiento semanal.
- Mostrar rutinas de ejercicio personalizadas por nivel, día de la semana y grupo muscular.
- Ofrecer un plan de dieta adaptado al nivel y objetivo de cada usuario con información nutricional detallada.
- Implementar un historial de check-ins semanales que permita al usuario visualizar su evolución de peso y nivel a lo largo del tiempo.
- Desarrollar un panel de administración con gestión de usuarios y mensajes de contacto.
- Aplicar buenas prácticas de diseño de interfaces: consistencia visual, usabilidad y diseño responsive.

---

## 5. Justificación del proyecto

### 5.1 Análisis de mercado

El sector del fitness digital ha experimentado un crecimiento considerable en los últimos años, impulsado por el auge de los hábitos saludables y la digitalización de los servicios deportivos. Existen actualmente en el mercado aplicaciones de referencia como **MyFitnessPal**, **Hevy** o **Nike Training Club**, todas ellas con funcionalidades avanzadas de seguimiento de entrenamientos y nutrición.

Sin embargo, la mayoría de estas aplicaciones son nativas de móvil, requieren suscripción de pago para acceder a las funciones principales o presentan una curva de aprendizaje elevada para usuarios con poca experiencia deportiva. BX Sports surge como una alternativa web accesible, sin coste, que adapta automáticamente el contenido al nivel real del usuario sin requerir que este tenga conocimientos previos sobre entrenamiento o nutrición.

La propuesta de valor principal es la **automatización del nivel**: el sistema calcula el IMC del usuario y lo combina con su frecuencia de entrenamiento para asignarle un nivel y mostrarle únicamente el contenido que corresponde a su condición física actual, evitando la sobrecarga de información que presentan otras plataformas.

### 5.2 Vinculación con contenidos del Ciclo

El proyecto integra los principales módulos trabajados durante el ciclo DAW:

- **Desarrollo Web en Entorno Cliente (DWEC):** toda la lógica del frontend está implementada en JavaScript puro, incluyendo el sistema de enrutamiento SPA, las llamadas a la API con `fetch`, la manipulación del DOM y la gestión del estado de sesión con `sessionStorage`.
- **Desarrollo Web en Entorno Servidor (DWES):** el backend está desarrollado en PHP con conexión a base de datos mediante PDO, siguiendo una arquitectura de API REST sencilla con respuestas en formato JSON.
- **Bases de Datos (BD):** diseño completo del modelo entidad-relación, creación del esquema relacional en MySQL, inserción de datos de prueba y consultas SQL con filtros, joins y ordenación.
- **Diseño de Interfaces Web (DIW):** la interfaz ha sido diseñada desde cero con CSS puro, aplicando variables CSS, un sistema de diseño consistente con paleta de colores definida y tipografía uniforme.
- **Lenguajes de Marcas (LM):** estructura HTML semántica en todas las vistas, uso de atributos `data-*` para el sistema de navegación y formularios accesibles.

---

## 6. Recursos utilizados

### 6.1 Entornos de desarrollo

| Herramienta | Uso |
|---|---|
| **Visual Studio Code** | Editor principal de código (HTML, CSS, JS, PHP) |
| **XAMPP** | Servidor local Apache + PHP + MySQL para desarrollo y pruebas |
| **phpMyAdmin** | Gestión visual de la base de datos MySQL |
| **Google Chrome DevTools** | Depuración de JavaScript, inspección de red y estilos |
| **GitHub** | Control de versiones y repositorio del proyecto |

### 6.2 Lenguajes de programación

| Lenguaje | Parte de la aplicación | Finalidad |
|---|---|---|
| **HTML5** | Frontend — todas las vistas | Estructura y semántica de la interfaz |
| **CSS3** | Frontend — estilos globales y por vista | Diseño visual, variables, layout con Flexbox y Grid |
| **JavaScript (ES6+)** | Frontend — lógica cliente | Router SPA, llamadas a la API, manipulación del DOM, gestión de sesión |
| **PHP 8** | Backend — API | Endpoints REST, lógica de negocio, conexión a BD, hashing de contraseñas |
| **SQL / MySQL** | Base de datos | Definición del esquema, consultas, inserciones y actualizaciones |

### 6.3 Utilidades

| Recurso | URL | Uso |
|---|---|---|
| **Google Fonts (Inter)** | [fonts.google.com](https://fonts.google.com) | Tipografía principal de la aplicación |
| **Remove.bg** | [remove.bg](https://www.remove.bg) | Eliminación de fondo en imágenes PNG de los niveles |
| **WhatsApp API** | [wa.me](https://wa.me) | Enlace directo al chat de WhatsApp desde el botón flotante |
| **icons8** | [icons8.com](https://icons8.com) | Icono de WhatsApp en formato PNG |

---

## 7. Tecnologías de desarrollo

### SPA (Single Page Application)
La aplicación está construida como una SPA sin frameworks. Un archivo `router.js` gestiona la navegación: al hacer clic en un elemento del menú lateral, se hace una petición `fetch` al HTML de la vista correspondiente, se inyecta en el contenedor `#view` y se ejecuta la función `init` del módulo JavaScript asociado. Esto evita recargas de página completas y proporciona una experiencia de usuario fluida.

Se eligió este enfoque frente a frameworks como React o Vue para mantener la coherencia con las tecnologías vistas en el ciclo y facilitar la comprensión y explicación del código.

### API REST con PHP
El backend expone una API sencilla compuesta por archivos PHP individuales por módulo (`auth.php`, `rutinas.php`, `dieta.php`, etc.). Cada archivo recibe parámetros por `GET` o `POST`, realiza las operaciones necesarias sobre la base de datos y devuelve una respuesta en JSON con la estructura `{ ok: true/false, datos: ... }`.

Se usó PHP puro sin frameworks para mantener la simplicidad y porque es la tecnología trabajada en el módulo DWES del ciclo.

### PDO (PHP Data Objects)
La conexión a la base de datos se realiza mediante PDO, que proporciona una capa de abstracción sobre MySQL y permite manejar errores mediante excepciones. Se centraliza la conexión en `config.php` con la función `getDB()`.

### MySQL
Base de datos relacional que almacena toda la información de la aplicación: usuarios, niveles, ejercicios, dietas, check-ins y mensajes de contacto. Se eligió MySQL por su integración nativa con PHP y XAMPP, y por ser la base de datos trabajada en el módulo de Bases de Datos del ciclo.

### sessionStorage
La sesión del usuario en el cliente se gestiona con `sessionStorage`, almacenando el objeto del usuario en formato JSON al hacer login. Todos los módulos JavaScript leen de ahí los datos del usuario (nivel, objetivo, id) para hacer las peticiones a la API con los parámetros correctos.

---

## 8. Diseño del proyecto

### 8.1 Diseño de la base de datos

#### Diagrama Entidad-Relación

```
USUARIOS ||--o{ CHECKINS : "realiza"
USUARIOS }o--|| NIVELES : "tiene asignado"
EJERCICIOS }o--|| NIVELES : "pertenece a"
DIETA }o--|| NIVELES : "pertenece a"
CONTACTO (tabla independiente)
```

#### Modelo Relacional

```sql
usuarios (id, nombre, apellidos, email, password, peso, altura, edad, 
          sexo, dias_entreno, objetivo, rol, nivel_id, foto, created_at)

niveles (id, nombre, descripcion, imc_min, imc_max, dias_min, dias_max, color)

ejercicios (id, nombre, descripcion, categoria, nivel_id, imagen, 
            series, repeticiones, descanso, dia, grupo_muscular)

dieta (id, comida, nombre, ingredientes, calorias, proteinas, 
       carbohidratos, grasas, nivel_id, objetivo, hora)

checkins (id, usuario_id, peso, altura, imc, nivel_id, fecha)

contacto (id, nombre, email, asunto, mensaje, fecha)
```

**Claves foráneas:**
- `usuarios.nivel_id` → `niveles.id`
- `ejercicios.nivel_id` → `niveles.id`
- `dieta.nivel_id` → `niveles.id`
- `checkins.usuario_id` → `usuarios.id`
- `checkins.nivel_id` → `niveles.id`

### 8.2 Carga de datos inicial

El script SQL completo con la creación de tablas, datos de los niveles, ejercicios, dietas y usuarios de prueba se encuentra en el archivo `bxsports.sql` en la raíz del repositorio.

### 8.3 Diseño de la interfaz de usuario

La interfaz sigue un sistema de diseño propio basado en las siguientes decisiones:

- **Paleta de colores:** fondo negro (`#0a0a0a`), cards en gris muy oscuro (`#141414`), color principal lima (`#c8f135`) para elementos activos y de acción, rojo (`#e05a5a`) para acciones destructivas.
- **Tipografía:** Inter (Google Fonts), con pesos 400, 600 y 700. Textos en mayúsculas con `letter-spacing` para etiquetas y labels.
- **Layout:** estructura sidebar fijo + contenido principal con scroll, usando CSS Flexbox. El contenido de cada vista se organiza en grids de 2 o 3 columnas según el módulo.
- **Variables CSS:** todas las referencias de color, tipografía y espaciado se definen en `:root` en `global.css` para garantizar consistencia en toda la aplicación.

**Vistas principales:**

| Vista | Descripción |
|---|---|
| Login | Pantalla centrada con caja de formulario, enlace a registro |
| Registro | Misma estética que login, campos con scroll interno |
| Rutinas | Pestañas por día de la semana, grid de 3 columnas, modal de detalle al hacer clic |
| Dieta | Contexto del plan (nivel, objetivo, totales) + grid de 3 columnas con las 6 comidas |
| Niveles | Banner con nivel actual e IMC, grid de 5 cards con gemas, info del próximo nivel |
| Perfil | Avatar editable, datos físicos, historial de check-ins, cambio de contraseña |
| Contacto | Formulario + columna lateral con info y CTAs de navegación |
| Admin | Panel separado con tabla de usuarios, lista de mensajes y perfil del administrador |

### 8.4 Roles de la aplicación

La aplicación tiene dos roles diferenciados, almacenados en el campo `rol` de la tabla `usuarios`:

| Rol | Descripción | Acceso |
|---|---|---|
| **usuario** | Usuario registrado estándar | `app.html` — acceso a Rutinas, Dieta, Niveles, Perfil y Contacto |
| **admin** | Administrador del sistema | `admin.html` — gestión de usuarios, mensajes y perfil de admin |

Al hacer login, el sistema comprueba el rol y redirige automáticamente a `app.html` o `admin.html` según corresponda. Si un usuario sin rol admin intenta acceder a `admin.html` directamente, el JavaScript lo redirige a `app.html`.

### 8.5 Usuarios creados para pruebas

**Usuario administrador:**

| Campo | Valor |
|---|---|
| Email | admin@bxsports.com |
| Contraseña | password |
| Rol | admin |

**Usuarios de prueba:**

| Nombre | Email | Contraseña | Nivel | Objetivo |
|---|---|---|---|---|
| Laura Bellido | laura@bxsports.com | L1234 | Aspirante | Perder peso |
| Maria José Fernandez | mariaj@bxsports.com | M1234 | Iniciado | Perder peso |
| Alejandro Bellido | alejandro@bxsports.com | password | Campeón | Ganar músculo |
| Laureano Bellido | laureano@bxsports.com | L1234 | Iniciado | Mantenimiento |
| Mario Seco | mario@bxsports.com | M1234 | Guerrero | Ganar músculo |
| Karol Lopez | karol@bxsports.com | K1234 | Guerrero | Mantenimiento |
| Daniel Gordillo | daniel@bxsports.com | D1234 | Campeón | Ganar músculo |
| Belén Dominguez | belen@bxsports.com | B1234 | Campeón | Mantenimiento |
| Jesus Morales | jesus@bxsports.com | J1234 | Élite | Ganar músculo |
| Miguel Ramirez | miguel@bxsports.com | M1234 | Campeón | Ganar músculo |

---

## 9. Lógica y codificación del proyecto

### 9.1 Principales procesos

#### Registro y asignación de nivel

Al registrarse, el sistema recibe el peso, altura y días de entrenamiento del usuario. Calcula el IMC con la fórmula estándar y lo cruza con los rangos de la tabla `niveles` para asignar el nivel correspondiente:

```php
$alturaM  = $altura / 100;
$imc      = round($peso / ($alturaM * $alturaM), 1);
$diasMap  = ['1-2' => 1, '3-4' => 3, '5-6' => 5, '7' => 7];
$diasNum  = $diasMap[$dias] ?? 0;

$stmt = $db->query("SELECT id FROM niveles 
                    WHERE $imc BETWEEN imc_min AND imc_max 
                    AND $diasNum BETWEEN dias_min AND dias_max 
                    LIMIT 1");
```

Tras el registro se inserta automáticamente el primer check-in del usuario.

#### Sistema de rutinas por día

El JavaScript define un mapa que asocia cada opción de `dias_entreno` con los días y grupos musculares correspondientes:

```javascript
const DIAS_MAP = {
    '1-2': [
        { key: 'Lun', label: 'LUN', grupo: 'Full Body' },
        { key: 'Jue', label: 'JUE', grupo: 'Full Body' }
    ],
    '3-4': [
        { key: 'Lun', label: 'LUN', grupo: 'Push' },
        { key: 'Mar', label: 'MAR', grupo: 'Pull' },
        { key: 'Jue', label: 'JUE', grupo: 'Piernas' },
        { key: 'Vie', label: 'VIE', grupo: 'Full Body' }
    ],
    // ...
};
```

Al cargar la vista, detecta el día actual de la semana y selecciona automáticamente la pestaña correspondiente.

#### Actualización de perfil y recálculo de nivel

Al guardar cambios en el perfil, el servidor recalcula el IMC y el nivel, actualiza el usuario en la BD e inserta un nuevo check-in. El cliente actualiza el `sessionStorage` con los nuevos datos y recarga el historial de check-ins sin recargar la página.

### 9.2 Aspectos relevantes de la implementación

#### Validación de datos

- **Frontend:** comprobación de campos vacíos antes de enviar el formulario, con mensaje de error visible en la interfaz.
- **Backend:** validación de todos los campos en PHP antes de ejecutar cualquier consulta SQL. Validación de formato de email con `filter_var`. Comprobación de duplicados de email en el registro.

#### Control de acceso

```javascript
// En router.js — comprueba sesión al cargar app.html
const raw = sessionStorage.getItem('bx_usuario');
if (!raw) {
    window.location.href = 'views/login.html';
    return;
}

// En admin.js — comprueba rol admin
const usuario = JSON.parse(raw);
if (usuario.rol !== 'admin') {
    window.location.href = 'app.html';
    return;
}
```

#### Seguridad de contraseñas

Las contraseñas se almacenan hasheadas con `password_hash($password, PASSWORD_DEFAULT)` (bcrypt) y se verifican con `password_verify()`. Nunca se almacena ni transmite la contraseña en texto plano.

#### Sistema de carpetas

```
bxsports/
├── index.html          → Redirección según sesión
├── app.html            → Contenedor SPA usuario
├── admin.html          → Contenedor SPA administrador
├── api/                → Endpoints PHP
│   ├── config.php
│   ├── auth.php
│   ├── usuario.php
│   ├── password.php
│   ├── rutinas.php
│   ├── dieta.php
│   ├── niveles.php
│   ├── contacto.php
│   ├── admin_usuarios.php
│   └── admin_contacto.php
├── css/                → Estilos por módulo
│   ├── global.css
│   ├── auth.css
│   ├── rutinas.css
│   ├── dieta.css
│   ├── niveles.css
│   ├── perfil.css
│   ├── contacto.css
│   └── admin.css
├── js/                 → Lógica JavaScript por módulo
│   ├── api.js
│   ├── auth.js
│   ├── router.js
│   ├── rutinas.js
│   ├── dieta.js
│   ├── niveles.js
│   ├── perfil.js
│   ├── contacto.js
│   └── admin.js
├── views/              → Fragmentos HTML de cada vista
│   ├── login.html
│   ├── register.html
│   ├── rutinas.html
│   ├── dieta.html
│   ├── niveles.html
│   ├── perfil.html
│   ├── contacto.html
│   ├── admin_usuarios.html
│   ├── admin_contacto.html
│   └── admin_perfil.html
├── icons/              → Logo y gemas de nivel
├── img/                → Imágenes de ejercicios
└── uploads/            → Fotos de perfil subidas por usuarios
    └── avatars/
```

---

## 10. Despliegue web del proyecto

### Requisitos hardware y software

| Requisito | Especificación |
|---|---|
| Servidor web | Apache 2.4 o superior |
| PHP | Versión 8.0 o superior con extensión PDO y PDO_MySQL |
| Base de datos | MySQL 5.7 o superior |
| Navegador | Chrome, Firefox o Edge actualizados |

### Servidor utilizado

El proyecto se desarrolló y probó en entorno local usando **XAMPP** (Apache + MySQL + PHP para Windows). Para su ejecución en local:

1. Instalar XAMPP
2. Copiar la carpeta `bxsports/` en `htdocs/`
3. Iniciar Apache y MySQL desde el panel de XAMPP
4. Importar `bxsports.sql` en phpMyAdmin
5. Acceder desde `http://localhost/bxsports`

### Seguridad

- Contraseñas hasheadas con bcrypt mediante `password_hash()`
- Sesiones PHP gestionadas con `session_start()` en todos los endpoints
- Control de acceso por rol tanto en cliente (JavaScript) como en servidor
- Validación de tipos de archivo y tamaño en la subida de imágenes de perfil

---

## 11. Manual de usuario

El manual de usuario completo se encuentra en el archivo [`MANUAL.md`](MANUAL.md).

### Resumen — Usuario estándar

1. Acceder a `http://localhost/bxsports`
2. Crear una cuenta en **Registro** con tus datos físicos y objetivo
3. El sistema asigna tu nivel automáticamente
4. Navegar por las secciones del menú lateral:
   - **Rutinas:** ejercicios del día según tu nivel, filtrados por grupo muscular
   - **Dieta:** plan nutricional diario adaptado a tu objetivo
   - **Niveles:** visualiza los 5 niveles y tu posición actual
   - **Perfil:** actualiza tus datos, consulta tu evolución y cambia tu contraseña
   - **Contacto:** envía un mensaje al equipo

### Resumen — Administrador

1. Iniciar sesión con `admin@bxsports.com` / `password`
2. El sistema redirige automáticamente al panel de administración
3. **Usuarios:** ver todos los usuarios registrados y eliminarlos si es necesario
4. **Mensajes:** consultar y eliminar mensajes del formulario de contacto
5. **Perfil:** cambiar la contraseña del administrador y cerrar sesión

---

## 12. Conclusiones y aspectos a mejorar

### Conclusiones

El desarrollo de BX Sports ha supuesto un reto completo que ha abarcado todas las fases de un proyecto web real: análisis, diseño de base de datos, desarrollo del backend, construcción de la interfaz y pruebas. Ha sido la primera vez que he implementado una arquitectura SPA sin frameworks, lo que me ha obligado a entender en profundidad cómo funciona el enrutamiento en el cliente y cómo separar correctamente la lógica de presentación de la lógica de negocio.

El aspecto más interesante ha sido el sistema de niveles adaptativo: diseñar un algoritmo que cruza el IMC con la frecuencia de entrenamiento y lo vincula con el contenido mostrado en todas las secciones de la aplicación. Esto me ha hecho pensar en el diseño de la base de datos de una forma más relacional y estructurada.

### Aspectos a mejorar

- **Seguridad:** el proyecto usa consultas SQL concatenando variables directamente, lo que es vulnerable a inyección SQL. En una versión de producción se deberían usar consultas preparadas con `bindParam()`.
- **Validación de sesión en servidor:** actualmente el control de acceso se realiza principalmente en el cliente con JavaScript. En producción debería validarse también en cada endpoint PHP.
- **Responsive:** la aplicación está optimizada para pantallas de escritorio. Una versión móvil requeriría rediseñar la navegación lateral.
- **Dieta por día:** actualmente el plan de dieta es el mismo para toda la semana. Una mejora sería variar las comidas por día para evitar la repetición.
- **Pruebas automatizadas:** no se han implementado pruebas unitarias ni de integración. Sería conveniente añadir tests para los endpoints PHP.

---

## 13. Bibliografía

| Recurso | URL |
|---|---|
| MDN Web Docs — JavaScript | [developer.mozilla.org/es/docs/Web/JavaScript](https://developer.mozilla.org/es/docs/Web/JavaScript) |
| MDN Web Docs — CSS | [developer.mozilla.org/es/docs/Web/CSS](https://developer.mozilla.org/es/docs/Web/CSS) |
| PHP Manual oficial | [php.net/manual/es](https://www.php.net/manual/es/) |
| PDO — PHP Data Objects | [php.net/manual/es/book.pdo.php](https://www.php.net/manual/es/book.pdo.php) |
| MySQL Documentation | [dev.mysql.com/doc](https://dev.mysql.com/doc/) |
| W3Schools — SQL | [w3schools.com/sql](https://www.w3schools.com/sql/) |
| Google Fonts — Inter | [fonts.google.com/specimen/Inter](https://fonts.google.com/specimen/Inter) |
| CSS Tricks — Flexbox Guide | [css-tricks.com/snippets/css/a-guide-to-flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/) |
| CSS Tricks — Grid Guide | [css-tricks.com/snippets/css/complete-guide-grid](https://css-tricks.com/snippets/css/complete-guide-grid/) |
| WhatsApp API | [faq.whatsapp.com/5913398998672934](https://faq.whatsapp.com/5913398998672934) |

---

*Alejandro Bellido Fernández — DAW 2025-2026 — IES Suárez de Figueroa*
