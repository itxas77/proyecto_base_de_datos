-- PROFESORES
CREATE TABLE public.PROFESORES (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rol VARCHAR(50), 
    id_vertical INTEGER REFERENCES public.VERTICALES(id_vertical),
    id_campus INTEGER REFERENCES public.CAMPUS(id_campus),
    id_modalidad INTEGER REFERENCES public.MODALIDADES(id_modalidad))

-- Insertar profesores
INSERT INTO public.PROFESORES (nombre, rol, id_vertical, id_campus, id_modalidad)
VALUES
('Noa Yáñez', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Saturnina Benitez', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Anna Feliu', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Rosalva Ayuso', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Valencia'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Ana Sofía Ferrer', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Valencia'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Angélica Corral', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Ariel Lledó', 'TA', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Presencial')),

('Mario Prats', 'LI', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Valencia'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Online')),

('Luis Ángel Suárez', 'LI', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Online')),

('María Dolores Diaz', 'LI', 
    (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS'), 
    (SELECT id_campus FROM public.CAMPUS WHERE nombre_campus = 'Madrid'), 
    (SELECT id_modalidad FROM public.MODALIDADES WHERE nombre_modalidad = 'Online'))

-- ALUMNOS
CREATE TEMPORARY TABLE TEMP_ALUMNOS (
    nombre VARCHAR(100),
    email VARCHAR(100),
    promocion_nombre VARCHAR(50),
    fecha_comienzo DATE,
    campus_nombre VARCHAR(50))

INSERT INTO TEMP_ALUMNOS (nombre, email, promocion_nombre, fecha_comienzo, campus_nombre) VALUES
('Jafet Casals', 'Jafet_Casals@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Jorge Manzanares', 'Jorge_Manzanares@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Onofre Adadia', 'Onofre_Adadia@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Merche Prada', 'Merche_Prada@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Pilar Abella', 'Pilar_Abella@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Leoncio Tena', 'Leoncio_Tena@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Odalys Torrijos', 'Odalys_Torrijos@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Clementina Santos', 'Clementina_Santos@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Daniela Falcó', 'Daniela_Falcó@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Abraham Vélez', 'Abraham_Vélez@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Anita Heredia', 'Anita_Heredia@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Eli Casas', 'Eli_Casas@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Guillermo Borrego', 'Guillermo_Borrego@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Sergio Aguirre', 'Sergio_Aguirre@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Carlito Carrión', 'Carlito_Carrión@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Haydée Figueroa', 'Haydée_Figueroa@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Chita Mancebo', 'Chita_Mancebo@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Joaquina Asensio', 'Joaquina_Asensio@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Cristian Sarabia', 'Cristian_Sarabia@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Desiderio Jordá', 'Desiderio_Jordá@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid'),
('Rosalina Llanos', 'Rosalina_Llanos@gmail.com', 'Febrero 2024', '2024-02-12', 'Madrid');

INSERT INTO TEMP_ALUMNOS (nombre, email, promocion_nombre, fecha_comienzo, campus_nombre) VALUES
('Amor Larrañaga', 'Amor_Larrañaga@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Teodoro Alberola', 'Teodoro_Alberola@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Cleto Plana', 'Cleto_Plana@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Aitana Sebastián', 'Aitana_Sebastián@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Dolores Valbuena', 'Dolores_Valbuena@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Julie Ferrer', 'Julie_Ferrer@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Mireia Cabañas', 'Mireia_Cabañas@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Flavia Amador', 'Flavia_Amador@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Albino Macias', 'Albino_Macias@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Ester Sánchez', 'Ester_Sánchez@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Loida Arellano', 'Loida_Arellano@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Heraclio Duque', 'Heraclio_Duque@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Herberto Figueras', 'Herberto_Figueras@gmail.com', 'Septiembre 2023', '2023-09-18', 'Madrid'),
('Teresa Laguna', 'Teresa_Laguna@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Estrella Murillo', 'Estrella_Murillo@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Daniela Guitart', 'Daniela_Guitart@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Timoteo Trillo', 'Timoteo_Trillo@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Ricarda Tovar', 'Ricarda_Tovar@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Daniel Rosselló', 'Daniel_Rosselló@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Rita Olivares', 'Rita_Olivares@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Cleto Montes', 'Cleto_Montes@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Marino Castilla', 'Marino_Castilla@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia'),
('Noemí Vilanova', 'Noemí_Vilanova@gmail.com', 'Febrero 2024', '2024-02-12', 'Valencia');

-- PROYECTOS
CREATE TABLE public.PROYECTOS (
    id_proyecto SERIAL PRIMARY KEY,
    nombre_proyecto VARCHAR(100) UNIQUE NOT NULL,
    id_vertical INTEGER REFERENCES public.VERTICALES(id_vertical)
)
-- Insercion de proyectos
INSERT INTO public.PROYECTOS (nombre_proyecto, id_vertical)
VALUES
-- Proyectos de Data Science
('Proyecto_HLF', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS')),
('Proyecto_EDA', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS')),
('Proyecto_BBDD', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS')),
('Proyecto_ML', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS')),
('Proyecto_Deployment', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'DS')),

-- Proyectos de Full Stack
('Proyecto_WebDev', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS')),
('Proyecto_FrontEnd', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS')),
('Proyecto_Backend', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS')),
('Proyecto_React', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS')),
('Proyecto_FullSatck', (SELECT id_vertical FROM public.VERTICALES WHERE nombre_vertical = 'FS'))


-- NOTAS
CREATE TEMPORARY TABLE TEMP_NOTAS_CONSOLIDADO (
    email VARCHAR(100),
    proyecto_nombre VARCHAR(100),
    calificacion VARCHAR(10))

-- Insertar notas clase 1
INSERT INTO TEMP_NOTAS_CONSOLIDADO (email, proyecto_nombre, calificacion) VALUES
('Jafet_Casals@gmail.com', 'Proyecto_HLF', 'Apto'), ('Jafet_Casals@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Jafet_Casals@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Jafet_Casals@gmail.com', 'Proyecto_ML', 'Apto'), ('Jafet_Casals@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Jorge_Manzanares@gmail.com', 'Proyecto_HLF', 'Apto'), ('Jorge_Manzanares@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Jorge_Manzanares@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Jorge_Manzanares@gmail.com', 'Proyecto_ML', 'Apto'), ('Jorge_Manzanares@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Onofre_Adadia@gmail.com', 'Proyecto_HLF', 'Apto'), ('Onofre_Adadia@gmail.com', 'Proyecto_EDA', 'Apto'), ('Onofre_Adadia@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Onofre_Adadia@gmail.com', 'Proyecto_ML', 'No Apto'), ('Onofre_Adadia@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Merche_Prada@gmail.com', 'Proyecto_HLF', 'Apto'), ('Merche_Prada@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Merche_Prada@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Merche_Prada@gmail.com', 'Proyecto_ML', 'Apto'), ('Merche_Prada@gmail.com', 'Proyecto_Deployment', 'No Apto'),
('Pilar_Abella@gmail.com', 'Proyecto_HLF', 'Apto'), ('Pilar_Abella@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Pilar_Abella@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Pilar_Abella@gmail.com', 'Proyecto_ML', 'Apto'), ('Pilar_Abella@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Leoncio_Tena@gmail.com', 'Proyecto_HLF', 'Apto'), ('Leoncio_Tena@gmail.com', 'Proyecto_EDA', 'Apto'), ('Leoncio_Tena@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Leoncio_Tena@gmail.com', 'Proyecto_ML', 'Apto'), ('Leoncio_Tena@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Odalys_Torrijos@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Odalys_Torrijos@gmail.com', 'Proyecto_EDA', 'Apto'), ('Odalys_Torrijos@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Odalys_Torrijos@gmail.com', 'Proyecto_ML', 'Apto'), ('Odalys_Torrijos@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Eduardo_Caparrós@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Eduardo_Caparrós@gmail.com', 'Proyecto_EDA', 'Apto'), ('Eduardo_Caparrós@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Eduardo_Caparrós@gmail.com', 'Proyecto_ML', 'Apto'), ('Eduardo_Caparrós@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Ignacio_Goicoechea@gmail.com', 'Proyecto_HLF', 'Apto'), ('Ignacio_Goicoechea@gmail.com', 'Proyecto_EDA', 'Apto'), ('Ignacio_Goicoechea@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Ignacio_Goicoechea@gmail.com', 'Proyecto_ML', 'No Apto'), ('Ignacio_Goicoechea@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Clementina_Santos@gmail.com', 'Proyecto_HLF', 'Apto'), ('Clementina_Santos@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Clementina_Santos@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Clementina_Santos@gmail.com', 'Proyecto_ML', 'Apto'), ('Clementina_Santos@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Daniela_Falcó@gmail.com', 'Proyecto_HLF', 'Apto'), ('Daniela_Falcó@gmail.com', 'Proyecto_EDA', 'Apto'), ('Daniela_Falcó@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Daniela_Falcó@gmail.com', 'Proyecto_ML', 'Apto'), ('Daniela_Falcó@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Abraham_Vélez@gmail.com', 'Proyecto_HLF', 'Apto'), ('Abraham_Vélez@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Abraham_Vélez@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Abraham_Vélez@gmail.com', 'Proyecto_ML', 'Apto'), ('Abraham_Vélez@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Maximiliano_Menéndez@gmail.com', 'Proyecto_HLF', 'Apto'), ('Maximiliano_Menéndez@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Maximiliano_Menéndez@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Maximiliano_Menéndez@gmail.com', 'Proyecto_ML', 'Apto'), ('Maximiliano_Menéndez@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Anita_Heredia@gmail.com', 'Proyecto_HLF', 'Apto'), ('Anita_Heredia@gmail.com', 'Proyecto_EDA', 'Apto'), ('Anita_Heredia@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Anita_Heredia@gmail.com', 'Proyecto_ML', 'Apto'), ('Anita_Heredia@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Eli_Casas@gmail.com', 'Proyecto_HLF', 'Apto'), ('Eli_Casas@gmail.com', 'Proyecto_EDA', 'Apto'), ('Eli_Casas@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Eli_Casas@gmail.com', 'Proyecto_ML', 'Apto'), ('Eli_Casas@gmail.com', 'Proyecto_Deployment', 'Apto')

-- Insertar notas clase 2
INSERT INTO TEMP_NOTAS_CONSOLIDADO (email, proyecto_nombre, calificacion) VALUES
('Guillermo_Borrego@gmail.com', 'Proyecto_HLF', 'Apto'), ('Guillermo_Borrego@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Guillermo_Borrego@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Guillermo_Borrego@gmail.com', 'Proyecto_ML', 'Apto'), ('Guillermo_Borrego@gmail.com', 'Proyecto_Deployment', 'No Apto'),
('Sergio_Aguirre@gmail.com', 'Proyecto_HLF', 'Apto'), ('Sergio_Aguirre@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Sergio_Aguirre@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Sergio_Aguirre@gmail.com', 'Proyecto_ML', 'Apto'), ('Sergio_Aguirre@gmail.com', 'Proyecto_Deployment', 'No Apto'),
('Carlito_Carrión@gmail.com', 'Proyecto_HLF', 'Apto'), ('Carlito_Carrión@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Carlito_Carrión@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Carlito_Carrión@gmail.com', 'Proyecto_ML', 'Apto'), ('Carlito_Carrión@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Haydée_Figueroa@gmail.com', 'Proyecto_HLF', 'Apto'), ('Haydée_Figueroa@gmail.com', 'Proyecto_EDA', 'Apto'), ('Haydée_Figueroa@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Haydée_Figueroa@gmail.com', 'Proyecto_ML', 'Apto'), ('Haydée_Figueroa@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Chita_Mancebo@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Chita_Mancebo@gmail.com', 'Proyecto_EDA', 'Apto'), ('Chita_Mancebo@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Chita_Mancebo@gmail.com', 'Proyecto_ML', 'Apto'), ('Chita_Mancebo@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Joaquina_Asensio@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Joaquina_Asensio@gmail.com', 'Proyecto_EDA', 'No Apto'), ('Joaquina_Asensio@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Joaquina_Asensio@gmail.com', 'Proyecto_ML', 'Apto'), ('Joaquina_Asensio@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Cristian_Sarabia@gmail.com', 'Proyecto_HLF', 'Apto'), ('Cristian_Sarabia@gmail.com', 'Proyecto_EDA', 'Apto'), ('Cristian_Sarabia@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Cristian_Sarabia@gmail.com', 'Proyecto_ML', 'Apto'), ('Cristian_Sarabia@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Isabel_Ibáñez@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Isabel_Ibáñez@gmail.com', 'Proyecto_EDA', 'Apto'), ('Isabel_Ibáñez@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Isabel_Ibáñez@gmail.com', 'Proyecto_ML', 'Apto'), ('Isabel_Ibáñez@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Desiderio_Jordá@gmail.com', 'Proyecto_HLF', 'No Apto'), ('Desiderio_Jordá@gmail.com', 'Proyecto_EDA', 'Apto'), ('Desiderio_Jordá@gmail.com', 'Proyecto_BBDD', 'No Apto'), ('Desiderio_Jordá@gmail.com', 'Proyecto_ML', 'No Apto'), ('Desiderio_Jordá@gmail.com', 'Proyecto_Deployment', 'Apto'),
('Rosalina_Llanos@gmail.com', 'Proyecto_HLF', 'Apto'), ('Rosalina_Llanos@gmail.com', 'Proyecto_EDA', 'Apto'), ('Rosalina_Llanos@gmail.com', 'Proyecto_BBDD', 'Apto'), ('Rosalina_Llanos@gmail.com', 'Proyecto_ML', 'Apto'), ('Rosalina_Llanos@gmail.com', 'Proyecto_Deployment', 'Apto');

-- Insertar notas clase 3
INSERT INTO TEMP_NOTAS_CONSOLIDADO (email, proyecto_nombre, calificacion) VALUES
('Amor_Larrañaga@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Amor_Larrañaga@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Amor_Larrañaga@gmail.com', 'Proyecto_Backend', 'Apto'), ('Amor_Larrañaga@gmail.com', 'Proyecto_React', 'Apto'), ('Amor_Larrañaga@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Teodoro_Alberola@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Teodoro_Alberola@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Teodoro_Alberola@gmail.com', 'Proyecto_Backend', 'Apto'), ('Teodoro_Alberola@gmail.com', 'Proyecto_React', 'No Apto'), ('Teodoro_Alberola@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Cleto_Plana@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Cleto_Plana@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Cleto_Plana@gmail.com', 'Proyecto_Backend', 'Apto'), ('Cleto_Plana@gmail.com', 'Proyecto_React', 'No Apto'), ('Cleto_Plana@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Aitana_Sebastián@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Aitana_Sebastián@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Aitana_Sebastián@gmail.com', 'Proyecto_Backend', 'Apto'), ('Aitana_Sebastián@gmail.com', 'Proyecto_React', 'No Apto'), ('Aitana_Sebastián@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Dolores_Valbuena@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Dolores_Valbuena@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Dolores_Valbuena@gmail.com', 'Proyecto_Backend', 'Apto'), ('Dolores_Valbuena@gmail.com', 'Proyecto_React', 'Apto'), ('Dolores_Valbuena@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Julie_Ferrer@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Julie_Ferrer@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Julie_Ferrer@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Julie_Ferrer@gmail.com', 'Proyecto_React', 'Apto'), ('Julie_Ferrer@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Mireia_Cabañas@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Mireia_Cabañas@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Mireia_Cabañas@gmail.com', 'Proyecto_Backend', 'Apto'), ('Mireia_Cabañas@gmail.com', 'Proyecto_React', 'Apto'), ('Mireia_Cabañas@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Flavia_Amador@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Flavia_Amador@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Flavia_Amador@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Flavia_Amador@gmail.com', 'Proyecto_React', 'Apto'), ('Flavia_Amador@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Albino_Macias@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Albino_Macias@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Albino_Macias@gmail.com', 'Proyecto_Backend', 'Apto'), ('Albino_Macias@gmail.com', 'Proyecto_React', 'Apto'), ('Albino_Macias@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Ester_Sánchez@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Ester_Sánchez@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Ester_Sánchez@gmail.com', 'Proyecto_Backend', 'Apto'), ('Ester_Sánchez@gmail.com', 'Proyecto_React', 'No Apto'), ('Ester_Sánchez@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Luis_Miguel_Galvez@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Luis_Miguel_Galvez@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Luis_Miguel_Galvez@gmail.com', 'Proyecto_Backend', 'Apto'), ('Luis_Miguel_Galvez@gmail.com', 'Proyecto_React', 'Apto'), ('Luis_Miguel_Galvez@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Loida_Arellano@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Loida_Arellano@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Loida_Arellano@gmail.com', 'Proyecto_Backend', 'Apto'), ('Loida_Arellano@gmail.com', 'Proyecto_React', 'Apto'), ('Loida_Arellano@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Heraclio_Duque@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Heraclio_Duque@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Heraclio_Duque@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Heraclio_Duque@gmail.com', 'Proyecto_React', 'No Apto'), ('Heraclio_Duque@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Herberto_Figueras@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Herberto_Figueras@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Herberto_Figueras@gmail.com', 'Proyecto_Backend', 'Apto'), ('Herberto_Figueras@gmail.com', 'Proyecto_React', 'Apto'), ('Herberto_Figueras@gmail.com', 'Proyecto_FullSatck', 'Apto');

-- Insertar notas clase 4
INSERT INTO TEMP_NOTAS_CONSOLIDADO (email, proyecto_nombre, calificacion) VALUES
('Teresa_Laguna@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Teresa_Laguna@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Teresa_Laguna@gmail.com', 'Proyecto_Backend', 'Apto'), ('Teresa_Laguna@gmail.com', 'Proyecto_React', 'Apto'), ('Teresa_Laguna@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Estrella_Murillo@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Estrella_Murillo@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Estrella_Murillo@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Estrella_Murillo@gmail.com', 'Proyecto_React', 'Apto'), ('Estrella_Murillo@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Ernesto_Uriarte@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Ernesto_Uriarte@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Ernesto_Uriarte@gmail.com', 'Proyecto_Backend', 'Apto'), ('Ernesto_Uriarte@gmail.com', 'Proyecto_React', 'Apto'), ('Ernesto_Uriarte@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Daniela_Guitart@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Daniela_Guitart@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Daniela_Guitart@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Daniela_Guitart@gmail.com', 'Proyecto_React', 'Apto'), ('Daniela_Guitart@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Timoteo_Trillo@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Timoteo_Trillo@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Timoteo_Trillo@gmail.com', 'Proyecto_Backend', 'Apto'), ('Timoteo_Trillo@gmail.com', 'Proyecto_React', 'Apto'), ('Timoteo_Trillo@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Ricarda_Tovar@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Ricarda_Tovar@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Ricarda_Tovar@gmail.com', 'Proyecto_Backend', 'Apto'), ('Ricarda_Tovar@gmail.com', 'Proyecto_React', 'Apto'), ('Ricarda_Tovar@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Alejandra_Vilaplana@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Alejandra_Vilaplana@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Alejandra_Vilaplana@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Alejandra_Vilaplana@gmail.com', 'Proyecto_React', 'Apto'), ('Alejandra_Vilaplana@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Daniel_Rosselló@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Daniel_Rosselló@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Daniel_Rosselló@gmail.com', 'Proyecto_Backend', 'Apto'), ('Daniel_Rosselló@gmail.com', 'Proyecto_React', 'No Apto'), ('Daniel_Rosselló@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Rita_Olivares@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Rita_Olivares@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Rita_Olivares@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Rita_Olivares@gmail.com', 'Proyecto_React', 'Apto'), ('Rita_Olivares@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Cleto_Montes@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Cleto_Montes@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Cleto_Montes@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Cleto_Montes@gmail.com', 'Proyecto_React', 'Apto'), ('Cleto_Montes@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Marino_Castilla@gmail.com', 'Proyecto_WebDev', 'No Apto'), ('Marino_Castilla@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Marino_Castilla@gmail.com', 'Proyecto_Backend', 'Apto'), ('Marino_Castilla@gmail.com', 'Proyecto_React', 'No Apto'), ('Marino_Castilla@gmail.com', 'Proyecto_FullSatck', 'No Apto'),
('Estefanía_Valcárcel@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Estefanía_Valcárcel@gmail.com', 'Proyecto_FrontEnd', 'Apto'), ('Estefanía_Valcárcel@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Estefanía_Valcárcel@gmail.com', 'Proyecto_React', 'No Apto'), ('Estefanía_Valcárcel@gmail.com', 'Proyecto_FullSatck', 'Apto'),
('Noemí_Vilanova@gmail.com', 'Proyecto_WebDev', 'Apto'), ('Noemí_Vilanova@gmail.com', 'Proyecto_FrontEnd', 'No Apto'), ('Noemí_Vilanova@gmail.com', 'Proyecto_Backend', 'No Apto'), ('Noemí_Vilanova@gmail.com', 'Proyecto_React', 'Apto'), ('Noemí_Vilanova@gmail.com', 'Proyecto_FullSatck', 'Apto')

-- CAMPUS
CREATE TABLE public.CAMPUS (
    id_campus SERIAL PRIMARY KEY,
    nombre_campus VARCHAR(50) UNIQUE NOT NULL)

-- Insertar campus
INSERT INTO public.CAMPUS (nombre_campus) VALUES
('Madrid'),
('Valencia')

-- VERTICALES
CREATE TABLE public.VERTICALES (
    id_vertical SERIAL PRIMARY KEY,
    nombre_vertical VARCHAR(50) UNIQUE NOT NULL)

-- Insertar Verticales
INSERT INTO public.VERTICALES (nombre_vertical) VALUES
('DS'),
('FS')

-- MODALIDADES
CREATE TABLE public.MODALIDADES (
    id_modalidad SERIAL PRIMARY KEY,
    nombre_modalidad VARCHAR(50) UNIQUE NOT NULL)

-- Insertar modalidades
INSERT INTO public.MODALIDADES (nombre_modalidad) VALUES
('Presencial'),
('Online')

-- PROMOCIONES
CREATE TABLE public.PROMOCIONES (
    id_promocion SERIAL PRIMARY KEY,
    nombre_promocion VARCHAR(50) UNIQUE NOT NULL,
    fecha_inicio DATE,
    id_profesor_lider INTEGER REFERENCES public.PROFESORES(id_profesor) NULL,
    id_ta_asignado INTEGER REFERENCES public.PROFESORES(id_profesor) NULL)

-- Insertar promocines
INSERT INTO public.PROMOCIONES (nombre_promocion, fecha_inicio) VALUES
('Septiembre 2023', '2023-09-18'),
('Febrero 2024', '2024-02-12')