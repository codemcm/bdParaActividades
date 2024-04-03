-- tipos de usuario
INSERT INTO TipoUsuario(NombreTipo) 
    VALUES('Alumno'),('Docente');

-- usuario admin
INSERT INTO Usuario(NickName, Contrasenia, TipoUsuarioId, Activo) 
    VALUES('usuarioGenerico', MD5('12345'),1,1),('codemcm', MD5('12345'),2,1);
-- carrera de sistemas

INSERT INTO Carrera (Nombre, Clave, CreatedBy) VALUES('ING SISTEMAS', 'CLVSISTEMAS', 1);
-- estatus estudiante
INSERT INTO EstatusEst (NombreEstatus) VALUES('Activo'),('Baja');

-- periodos
INSERT INTO Periodo (NombrePeriodo) VALUES('Enero-Junio'),('Agosto-Diciembre');

INSERT INTO EstatusClase(NombreEstatus) VALUES('Activo'),('Cerrado');

INSERT INTO TipoActividad(Nombre) VALUES('Tarea'),('Puntos Extra');

INSERT INTO Version(Descripcion, VersionBD, VersionSistema, Notas)
    VALUES('Version beta bd','1.0.0','0.0.0', 'Aun no se tiene un front');

INSERT INTO Estado(Nombre)
    VALUES  ('Aguascalientes'),
            ('Baja California') ,
            ('Baja California Sur'),
            ('Campeche'),
            ('Chiapas'),
            ('Chihuahua') ,
            ('Ciudad de México'),
            ('Coahuila'),
            ('Colima') ,
            ('Durango'),
            ('Estado de México'),
            ('Guanajuato'),
            ('Guerrero'),
            ('Hidalgo'),
            ('Jalisco'),
            ('Michoacán'),
            ('Morelos'),
            ('Nayarit'),
            ('Nuevo León'),
            ('Oaxaca'),
            ('Puebla'),
            ('Querétaro') ,
            ('Quintana Roo')  ,
            ('San Luis Potosí'),
            ('Sinaloa'),
            ('Sonora') ,
            ('Tabasco'),
            ('Tamaulipas'),
            ('Tlaxcala'),
            ('Veracruz'),
            ('Yucatán'),
            ('Zacatecas');
