README.md
🎓 Proyecto de Creación de Base de Datos Relacional

Bootcamp Data Science & Full Stack — Proyecto en Equipo

📌 Descripción del Proyecto

Este proyecto tiene como objetivo diseñar y construir una base de datos relacional a partir de un conjunto de datos sin normalizar proporcionado por la escuela de bootcamps.
El dataset original contiene información de:

Estudiantes

Profesores

Promociones

Campus

Verticales (FS, DS…)

Modalidades (Presencial/Online)

Proyectos y calificaciones

Nuestro trabajo consistió en transformar estos datos en un sistema escalable, normalizado y listo para consulta mediante un modelo E/R, modelo lógico y creación de la base de datos en PostgreSQL.

🧑‍💻 Miembros del Equipo

Este proyecto ha sido desarrollado de manera colaborativa por un equipo mixto de estudiantes de Data Science y Full Stack.


🧱 1. Modelo Entidad–Relación (E/R)

El primer paso del proyecto fue interpretar los datos originales y extraer las entidades principales, sus atributos y las relaciones entre ellas.

🎯 Objetivos del modelo E/R:

Evitar redundancias

Asegurar integridad referencial

Permitir crecimiento en campus, promociones, verticales y modalidades

Reflejar correctamente las relaciones entre profesores, estudiantes, proyectos y calificaciones

🗂 2. Modelo Lógico de la Base de Datos

A partir del modelo E/R se realizaron las tablas correspondientes, incluyendo claves primarias y foráneas.

✔ Entidades principales:

Estudiantes

Profesores

Proyectos

Promociones

Campus

Modalidades

Verticales


🧮 3. Normalización

Se aplicó un proceso completo de normalización para estructurar los datos correctamente:

🔹 1NF

Separación en tablas independientes, sin valores multivaluados.

🔹 2NF

Eliminación de dependencias parciales.

🔹 3NF

Aislamiento de entidades con atributos propios (Roles, Modalidades, Verticales…).

Resultado:
✔ Un modelo sin redundancias,
✔ con relaciones claras,
✔ y estructura flexible y escalable.

🛠 4. Creación de la Base de Datos

La base de datos fue creada en PostgreSQL.

🌐 5. Despliegue en un Servidor PostgreSQL

La base de datos fue desplegada en un servicio externo gratuito para permitir conexiones desde aplicaciones de terceros.

📌 Plataforma gratuita:

Render


🔍 6. Queries de Ejemplo

Estudiantes por promoción

Profesores por campus

Calificaciones de un estudiante

Proyectos filtrados por vertical

Promedio de notas por proyecto

Relación profesor–promoción–campus


🧾 7. Conclusiones del Equipo

El modelo diseñado permite añadir fácilmente nuevos campus, promociones o verticales.

La normalización garantiza integridad y evita duplicados.

El uso de claves foráneas establece relaciones claras entre entidades.

La BD está lista para integrarse con aplicaciones web o dashboards analíticos.

🚀 Tecnologías Utilizadas

PostgreSQL

Render / PGAdmin

Draw.io 

Git & GitHub

Python / Pandas
