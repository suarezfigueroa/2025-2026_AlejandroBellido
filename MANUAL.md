# Manual de Usuario — BX Sports

---

## Índice

1. [Introducción](#1-introducción)
2. [Requisitos previos](#2-requisitos-previos)
3. [Manual de usuario estándar](#3-manual-de-usuario-estándar)
   - 3.1 [Registro](#31-registro)
   - 3.2 [Inicio de sesión](#32-inicio-de-sesión)
   - 3.3 [Rutinas](#33-rutinas)
   - 3.4 [Dieta](#34-dieta)
   - 3.5 [Niveles](#35-niveles)
   - 3.6 [Perfil](#36-perfil)
   - 3.7 [Contacto](#37-contacto)
4. [Manual de administrador](#4-manual-de-administrador)
   - 4.1 [Acceso al panel de administración](#41-acceso-al-panel-de-administración)
   - 4.2 [Gestión de usuarios](#42-gestión-de-usuarios)
   - 4.3 [Mensajes de contacto](#43-mensajes-de-contacto)
   - 4.4 [Perfil del administrador](#44-perfil-del-administrador)

---

## 1. Introducción

BX Sports es una aplicación web de entrenamiento adaptativo que asigna automáticamente un nivel de entrenamiento a cada usuario en función de su IMC y frecuencia de entrenamiento semanal. A partir de ese nivel, la aplicación muestra rutinas de ejercicio organizadas por día y grupo muscular, así como un plan de dieta adaptado al objetivo del usuario.

Este manual cubre el uso completo de la aplicación tanto para el usuario estándar como para el administrador.

---

## 2. Requisitos previos

Para utilizar la aplicación en local es necesario:

- Tener **XAMPP** instalado con Apache y MySQL activos
- Haber importado el archivo `bxsports.sql` en **phpMyAdmin**
- Acceder desde un navegador moderno (Chrome, Firefox o Edge) a través de:

```
http://localhost/tfg/bxsports
```

> Si la carpeta del proyecto no está dentro de una subcarpeta `tfg`, la URL sería directamente `http://localhost/bxsports`

---

## 3. Manual de usuario estándar

### 3.1 Registro

Al acceder a la aplicación por primera vez, el sistema redirige automáticamente a la pantalla de login. Para crear una cuenta nueva:

1. Haz clic en el enlace **"Crear cuenta"** en la parte inferior del formulario de login
2. Rellena todos los campos del formulario:

| Campo | Descripción |
|---|---|
| **Nombre** | Tu nombre de pila |
| **Apellidos** | Tus apellidos |
| **Email** | Dirección de correo electrónico (será tu usuario) |
| **Contraseña** | Mínimo 6 caracteres |
| **Peso** | Peso actual en kilogramos (ej: 73.5) |
| **Altura** | Altura en centímetros (ej: 178) |
| **Edad** | Edad en años |
| **Sexo** | Masculino o Femenino |
| **Días de entrenamiento** | Número de días por semana que entrenas |
| **Objetivo** | Ganar músculo / Perder peso / Mantenimiento |

3. Pulsa **"CREAR CUENTA"**

El sistema calculará automáticamente tu **IMC** y te asignará el **nivel** correspondiente según la siguiente tabla:

| Nivel | Nombre | IMC | Días/semana |
|---|---|---|---|
| 1 | Iniciado | ≥ 30 | 0–1 |
| 2 | Aspirante | 25–30 | 2–3 |
| 3 | Guerrero | 22–25 | 3–4 |
| 4 | Campeón | 19–22 | 5–6 |
| 5 | Élite | 17–19 | 6–7 |

Una vez completado el registro, accederás directamente al panel principal de la aplicación.

> **Nota:** Si el email introducido ya está registrado, el sistema mostrará un mensaje de error.

---

### 3.2 Inicio de sesión

1. Accede a `http://localhost/tfg/bxsports`
2. Introduce tu **email** y **contraseña**
3. Pulsa **"ENTRAR"**

Si los datos son correctos, accederás a la aplicación. Si son incorrectos, aparecerá un mensaje de error en rojo bajo los campos.

> Si eres administrador, el sistema te redirigirá automáticamente al panel de administración en lugar del panel de usuario.

---

### 3.3 Rutinas

La sección de **Rutinas** muestra los ejercicios correspondientes a tu nivel y días de entrenamiento, organizados por día de la semana.

**Cómo funciona:**

- En la parte superior aparecen las **pestañas de días** disponibles según tu frecuencia de entrenamiento. Cada pestaña indica el día de la semana y el grupo muscular de ese día (Push, Pull, Piernas o Full Body)
- Al cargar la vista, se selecciona automáticamente el día actual si está en tu rutina
- Debajo de las pestañas aparece el indicador del **grupo muscular** del día seleccionado
- Los **filtros** (Todos, Fuerza, Cardio, Flexibilidad) permiten filtrar los ejercicios por categoría

**Distribución por días según frecuencia:**

| Días/semana | Distribución |
|---|---|
| 1–2 días | Lunes (Full Body) · Jueves (Full Body) |
| 3–4 días | Lunes (Push) · Martes (Pull) · Jueves (Piernas) · Viernes (Full Body) |
| 5–6 días | Lunes (Push) · Martes (Pull) · Miércoles (Piernas) · Jueves (Push) · Viernes (Pull) · Sábado (Piernas) |
| 7 días | Igual que 5–6 + Domingo (Full Body) |

**Ver el detalle de un ejercicio:**

Haz clic en cualquier card de ejercicio para abrir un modal con:
- Nombre y categoría del ejercicio
- Nivel y grupo muscular
- Descripción detallada de la ejecución
- Número de series, repeticiones y tiempo de descanso

Para cerrar el modal pulsa la **✕** o haz clic fuera del recuadro.

---

### 3.4 Dieta

La sección de **Dieta** muestra el plan nutricional diario adaptado a tu nivel y objetivo.

En la parte superior aparece un resumen del plan con:
- Tu nivel actual
- Tu objetivo
- Total de calorías diarias aproximadas
- Total de proteínas diarias aproximadas

El plan se divide en **6 comidas**: Desayuno, Comida, Almuerzo, Merienda, Cena y Recena. Cada card muestra:
- Nombre de la comida y hora recomendada
- Nombre del plato
- Lista de ingredientes con cantidades
- Macronutrientes: calorías, proteínas, carbohidratos y grasas

> El plan de dieta cambia automáticamente si actualizas tu peso y eso provoca un cambio de nivel.

---

### 3.5 Niveles

La sección de **Niveles** muestra el sistema de clasificación completo de la aplicación.

En la parte superior aparece un **banner** con:
- Tu nivel actual y su nombre
- Tu IMC calculado en tiempo real

A continuación aparecen las **5 cards de nivel**, cada una con:
- Gema representativa del nivel
- Nombre del nivel
- Criterios de asignación (rango de IMC y días de entrenamiento)

Tu nivel actual aparece destacado con un borde verde lima y el badge **"TÚ ESTÁS AQUÍ"**.

En la parte inferior aparece información sobre el **próximo nivel**:
- Nombre y número del siguiente nivel
- Condición necesaria para alcanzarlo (IMC y días requeridos)
- Recordatorio de que el nivel se recalcula cada vez que registras tu peso

> Si ya estás en el nivel Élite (nivel 5), no aparece la sección de próximo nivel.

---

### 3.6 Perfil

La sección de **Perfil** permite gestionar tu cuenta y consultar tu evolución.

**Foto de perfil:**

1. Haz clic en el icono de lápiz sobre el avatar
2. Selecciona una imagen de tu dispositivo (JPG, PNG o WEBP, máximo 2MB)
3. La foto se sube automáticamente y aparece en el avatar y en el sidebar

**Datos físicos:**

Puedes modificar en cualquier momento:
- Peso actual (kg)
- Altura (cm)
- Edad
- Días de entrenamiento por semana
- Objetivo

Al pulsar **"GUARDAR CAMBIOS"**:
- El sistema recalcula tu IMC
- Determina si tu nivel ha cambiado
- Inserta un nuevo check-in en el historial
- Actualiza el sidebar con el nuevo nivel

**Historial de check-ins:**

La tabla muestra el registro histórico de tus actualizaciones de peso con:
- Fecha del registro
- Peso e IMC en ese momento
- Variación respecto al registro anterior (en verde si bajaste, en rojo si subiste)
- Nivel asignado en ese momento

**Cambiar contraseña:**

1. Pulsa el botón **"CAMBIAR CONTRASEÑA"** en la parte inferior
2. Se despliega un formulario con tres campos: contraseña actual, nueva contraseña y confirmación
3. Pulsa **"GUARDAR CONTRASEÑA"**

> La nueva contraseña debe tener al menos 6 caracteres y coincidir en ambos campos.

**Cerrar sesión:**

Pulsa el botón **"CERRAR SESIÓN"** en la parte inferior izquierda. La sesión se destruye y el sistema redirige a la pantalla de login.

---

### 3.7 Contacto

La sección de **Contacto** permite enviar un mensaje al equipo de BX Sports.

El formulario se rellena automáticamente con tu nombre y email registrados. Solo necesitas completar:
- **Asunto**: tema del mensaje
- **Mensaje**: contenido del mensaje

Pulsa **"ENVIAR MENSAJE"** para enviarlo. Aparecerá una confirmación en verde si el envío fue correcto.

En la columna lateral encontrarás:
- Información de contacto (ubicación, email y horario)
- Accesos directos a **Rutinas** y **Dieta** mediante cards clicables

El botón de **WhatsApp** en la esquina inferior derecha de la pantalla abre un chat directo con el equipo.

---

## 4. Manual de administrador

### 4.1 Acceso al panel de administración

Para acceder al panel de administración:

1. Abre la pantalla de login en `http://localhost/tfg/bxsports`
2. Introduce las credenciales de administrador:
   - **Email:** `admin@bxsports.com`
   - **Contraseña:** `password`
3. El sistema detecta automáticamente el rol de administrador y redirige a `admin.html`

> Si un usuario sin rol de administrador intenta acceder directamente a `http://localhost/tfg/bxsports/admin.html`, el sistema lo redirige automáticamente a la aplicación de usuario.

El panel de administración tiene tres secciones accesibles desde el menú lateral:
- **Usuarios**
- **Mensajes**
- **Perfil**

---

### 4.2 Gestión de usuarios

La sección **Usuarios** muestra una tabla con todos los usuarios registrados en la aplicación.

Para cada usuario se muestra:
- Nombre y apellidos
- Email
- Nivel actual
- Objetivo
- Días de entrenamiento
- Rol (usuario / admin)
- Fecha de registro
- Botón de borrar

**Borrar un usuario:**

1. Localiza al usuario en la tabla
2. Pulsa el botón rojo **"Borrar"** en su fila
3. Aparecerá una confirmación: *"¿Borrar al usuario X? Esta acción no se puede deshacer."*
4. Confirma para eliminar el usuario y todos sus check-ins asociados

> El administrador no puede borrarse a sí mismo. La fila del administrador no muestra botón de borrar.

---

### 4.3 Mensajes de contacto

La sección **Mensajes** muestra todos los mensajes recibidos a través del formulario de contacto.

Cada mensaje muestra:
- Nombre y email del remitente
- Fecha y hora de envío
- Asunto del mensaje
- Contenido completo del mensaje

**Borrar un mensaje:**

1. Localiza el mensaje que quieres eliminar
2. Pulsa el botón **"Borrar"** en la esquina superior derecha del mensaje
3. Confirma la acción

Los mensajes se muestran ordenados del más reciente al más antiguo.

---

### 4.4 Perfil del administrador

La sección **Perfil** permite gestionar la cuenta del administrador.

Muestra los datos básicos de la cuenta: nombre, email y rol (Administrador).

**Cambiar contraseña:**

1. Rellena los tres campos: contraseña actual, nueva contraseña y confirmación
2. Pulsa **"GUARDAR CONTRASEÑA"**
3. Aparecerá un mensaje de confirmación si el cambio fue correcto

> Si la contraseña actual es incorrecta o las nuevas no coinciden, aparecerá un mensaje de error en rojo.

**Cerrar sesión:**

Pulsa el botón **"CERRAR SESIÓN"** en la parte inferior. La sesión se destruye y el sistema redirige a la pantalla de login.

---

*BX Sports — Alejandro Bellido Fernández — DAW 2025-2026 — IES Suárez de Figueroa*
