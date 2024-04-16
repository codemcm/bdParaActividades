INSERT INTO TipoUsuario(NombreTipo) 
    VALUES('Alumno'),('Docente');
INSERT INTO Usuario(NickName, Contrasenia, TipoUsuarioId, Activo) 
VALUES
    ('usuarioGenerico1', MD5('password1'), 1, 1),
    ('usuarioGenerico2', MD5('password2'), 1, 1),
    ('usuarioGenerico3', MD5('password3'), 1, 1),
    ('usuarioGenerico4', MD5('password4'), 1, 1),
    ('usuarioGenerico5', MD5('password5'), 1, 1),
    ('usuarioGenerico6', MD5('password6'), 2, 1),
    ('usuarioGenerico7', MD5('password7'), 2, 1),
    ('usuarioGenerico8', MD5('password8'), 2, 1),
    ('usuarioGenerico9', MD5('password9'), 2, 1),
    ('usuarioGenerico10', MD5('password10'), 2, 1);

INSERT INTO Carrera (Nombre, Clave) VALUES
('Ingeniería de Software', 'ISW'),
('Ingeniería Civil', 'ICV'),
('Ingeniería Mecánica', 'IME'),
('Ingeniería Eléctrica', 'IEL'),
('Ingeniería Industrial', 'IND'),
('Psicología', 'PSI'),
('Medicina', 'MED'),
('Derecho', 'DER'),
('Arquitectura', 'ARQ'),
('Administración', 'ADM');

INSERT INTO EstatusEst (NombreEstatus) VALUES('Activo'),('Baja');
INSERT INTO Periodo (NombrePeriodo) VALUES('Enero-Junio'),('Agosto-Diciembre');

INSERT INTO Estudiante (Nombre, APaterno, AMaterno, AnioIngreso, PeriodoId, Celular, Email, EstatusEstId, FechaNacimiento, UsuarioId, CreadoPor, CarreraId, clave) VALUES
('Juan', 'Perez', 'Lopez', 2018, 1, '2381234567', 'juan.perez@example.com', 1, '1992-06-15', 1, 1, 1, 'EST001'),
('Maria', 'Garcia', 'Diaz', 2019, 1, '2381234568', 'maria.garcia@example.com', 1, '1993-07-16', 1, 1, 2, 'EST002'),
('Jose', 'Martinez', 'Sanchez', 2020, 1, '2381234569', 'jose.martinez@example.com', 1, '1994-08-17', 1, 1, 3, 'EST003'),
('Ana', 'Lopez', 'Morales', 2018, 1, '2381234570', 'ana.lopez@example.com', 1, '1995-09-18', 1, 1, 4, 'EST004'),
('Luis', 'Hernandez', 'Jimenez', 2019, 1, '2381234571', 'luis.hernandez@example.com', 1, '1996-10-19', 1, 1, 5, 'EST005'),
('Carmen', 'Gonzalez', 'Moreno', 2020, 1, '2381234572', 'carmen.gonzalez@example.com', 1, '1992-11-20', 1, 1, 1, 'EST006'),
('Francisco', 'Ruiz', 'Navarro', 2018, 1, '2381234573', 'francisco.ruiz@example.com', 1, '1993-12-21', 1, 1, 2, 'EST007'),
('Sofia', 'Diaz', 'Romero', 2019, 1, '2381234574', 'sofia.diaz@example.com', 1, '1994-01-22', 1, 1, 3, 'EST008'),
('Carlos', 'Moreno', 'Alvarez', 2020, 1, '2381234575', 'carlos.moreno@example.com', 1, '1995-02-23', 1, 1, 4, 'EST009'),
('Lucia', 'Alvarez', 'Gutierrez', 2018, 1, '2381234576', 'lucia.alvarez@example.com', 1, '1996-03-24', 1, 1, 5, 'EST010'),
('Antonio', 'Mendez', 'Vazquez', 2019, 1, '2381234577', 'antonio.mendez@example.com', 1, '1992-04-25', 1, 1, 1, 'EST011'),
('Isabel', 'Castillo', 'Fernandez', 2020, 1, '2381234578', 'isabel.castillo@example.com', 1, '1993-05-26', 1, 1, 2, 'EST012'),
('Miguel', 'Ortiz', 'Lopez', 2018, 1, '2381234579', 'miguel.ortiz@example.com', 1, '1994-06-27', 1, 1, 3, 'EST013'),
('Natalia', 'Romero', 'Perez', 2019, 1, '2381234580', 'natalia.romero@example.com', 1, '1995-07-28', 1, 1, 4, 'EST014'),
('Ricardo', 'Fernandez', 'Garcia', 2020, 1, '2381234581', 'ricardo.fernandez@example.com', 1, '1996-08-29', 1, 1, 5, 'EST015');

INSERT INTO EstatusClase (NombreEstatus) VALUES ('activo'), ('inactivo');
INSERT INTO TipoActividad (Nombre, Observaciones) VALUES ('tarea', 'Tarea asignada'), ('practica', 'Práctica en laboratorio');
INSERT INTO Materia (Nombre, Clave, CarreraId, Active) VALUES
('Materia1', 'M001', 1, TRUE),
('Materia2', 'M002', 2, TRUE),
('Materia3', 'M003', 3, TRUE),
('Materia4', 'M004', 4, TRUE),
('Materia5', 'M005', 5, TRUE),
('Materia6', 'M006', 6, TRUE),
('Materia7', 'M007', 7, TRUE),
('Materia8', 'M008', 8, TRUE),
('Materia9', 'M009', 1, TRUE),
('Materia10', 'M010', 2, TRUE);
INSERT INTO Profesor (Nombre, APaterno, AMaterno, Active, RFC, CarreraId, UsuarioId) VALUES
('Juan', 'Pérez', 'Gómez', TRUE, 'RFC001', 1, 1),
('María', 'López', 'Díaz', TRUE, 'RFC002', 2, 2),
('Carlos', 'Martínez', 'Ruiz', TRUE, 'RFC003', 3, 3),
('Ana', 'Hernández', 'Santos', TRUE, 'RFC004', 4, 4),
('Luis', 'García', 'Luna', TRUE, 'RFC005', 5, 5),
('Carmen', 'González', 'Vega', TRUE, 'RFC006', 6, 6),
('Fernando', 'Álvarez', 'Méndez', TRUE, 'RFC007', 7, 7),
('Sofía', 'Moreno', 'Jiménez', TRUE, 'RFC008', 8, 8),
('Ricardo', 'Navarro', 'Morales', TRUE, 'RFC009', 1, 1),
('Teresa', 'Romero', 'Torres', TRUE, 'RFC010', 2, 2);

INSERT INTO Clase (Nombre, Horario, MateriaId, Active, ProfesorId, Semestre, Anio, PeriodoId, EstatusClaseId) VALUES
('Clase1', '08:00-10:00', 1, TRUE, 1, 1, CURDATE(), 1, 1),
('Clase2', '10:00-12:00', 2, TRUE, 2, 1, CURDATE(), 2, 2),
('Clase3', '12:00-14:00', 3, TRUE, 3, 1, CURDATE(), 1, 1),
('Clase4', '14:00-16:00', 4, TRUE, 4, 1, CURDATE(), 2, 2),
('Clase5', '16:00-18:00', 5, TRUE, 5, 1, CURDATE(), 1, 1),
('Clase6', '08:00-10:00', 6, TRUE, 6, 1, CURDATE(), 2, 2),
('Clase7', '10:00-12:00', 7, TRUE, 7, 1, CURDATE(), 1, 1),
('Clase8', '12:00-14:00', 8, TRUE, 8, 1, CURDATE(), 2, 2),
('Clase9', '14:00-16:00', 9, TRUE, 1, 1, CURDATE(), 1, 1),
('Clase10', '16:00-18:00', 10, TRUE, 2, 1, CURDATE(), 2, 2);

INSERT INTO Actividad (Nombre, Descripcion, ClaseId, ValorMaximo, TipoActividadId, Parcial) VALUES
('Programming Basics', 'Introduction to Programming', 1, 10, 1, 1),
('Advanced Programming', 'Detailed Programming Concepts', 1, 10, 2, 1),
('Data Structures', 'Understanding Data Structures', 1, 10, 1, 1),
('Algorithms', 'Algorithm Techniques', 1, 10, 2, 1),
('Web Development', 'Basics of Web Development', 1, 10, 1, 1),
('Database Management', 'Fundamentals of Databases', 1, 10, 2, 1),
('Object-Oriented Programming', 'OOP Concepts', 1, 10, 1, 1),
('Functional Programming', 'Functional Techniques', 1, 10, 2, 1),
('Software Testing', 'Testing Methodologies', 1, 10, 1, 1),
('System Design', 'Designing Scalable Systems', 1, 10, 2, 1),
('Network Security', 'Basics of Network Security', 1, 10, 1, 1),
('Cloud Computing', 'Introduction to Cloud', 1, 10, 2, 1),
('Machine Learning', 'ML Basics', 1, 10, 1, 1),
('Artificial Intelligence', 'AI Concepts', 1, 10, 2, 1),
('Mobile App Development', 'Developing Mobile Applications', 1, 10, 1, 1),
('Game Development', 'Game Design and Development', 1, 10, 2, 1),
('Cybersecurity Fundamentals', 'Understanding Cybersecurity', 1, 10, 1, 1),
('Blockchain Basics', 'Introduction to Blockchain', 1, 10, 2, 1),
('Internet of Things', 'IoT Concepts', 1, 10, 1, 1),
('Big Data Analysis', 'Techniques in Big Data', 1, 10, 2, 1);

INSERT INTO EstudianteActividad (FechaRegistro, Calificacion, EstudianteId, ClaseId, ActividadId) VALUES
(NOW(), 7, 1, 1, 1),
(NOW(), 8, 2, 2, 1),
(NOW(), 9, 3, 3, 1),
(NOW(), 10, 4, 4, 1),
(NOW(), 7, 5, 5, 1),
(NOW(), 8, 6, 6, 1),
(NOW(), 9, 7, 7, 1),
(NOW(), 10, 8, 8, 1),
(NOW(), 7, 9, 1, 2),
(NOW(), 8, 10, 2, 2),
(NOW(), 9, 1, 3, 2),
(NOW(), 10, 2, 4, 2),
(NOW(), 7, 3, 5, 2),
(NOW(), 8, 4, 6, 2),
(NOW(), 9, 5, 7, 2),
(NOW(), 10, 6, 8, 2),
(NOW(), 7, 7, 1, 1),
(NOW(), 8, 8, 2, 1),
(NOW(), 9, 9, 3, 1),
(NOW(), 10, 10, 4, 1);


INSERT INTO EstudianteClase (EstudianteId, ClaseId) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2);

