/*
    Creado Por: Martin Cruz 
    Base de datos: ControlEscolarUniAng
    Fecha Creación: Septiembre 2023
    Modificaciónes:*
    ==================================================
    Fecha: 26 Septiembre 
    Cambios: se agregan mas tablas
*/


CREATE TABLE TipoUsuario(
    TipoUsuarioId INTEGER AUTO_INCREMENT,
    NombreTipo VARCHAR(50),
    FechaRegistro DATETIME DEFAULT NOW(),
    PRIMARY KEY(TipoUsuarioId)
);


CREATE TABLE Usuario(
    UsuarioId INTEGER AUTO_INCREMENT,
    NickName VARCHAR(50) UNIQUE,
    Contrasenia VARCHAR(50),
    TipoUsuarioId INTEGER,
    UltimoAcceso DATETIME,
    FechaRegistro DATETIME DEFAULT NOW(),
    Activo BOOLEAN,
    PRIMARY KEY(UsuarioId),
    CONSTRAINT fk_usuarioTipoUsuario 
    FOREIGN KEY (TipoUsuarioId) REFERENCES TipoUsuario (TipoUsuarioId)
);

CREATE TABLE Carrera(
    CarreraId INTEGER AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Clave VARCHAR(50),
    Active BOOLEAN DEFAULT 1,
    CreatedBy INTEGER DEFAULT 1,
    PRIMARY KEY(CarreraId)
);


CREATE TABLE EstatusEst(
    EstatusEstId INT AUTO_INCREMENT,
    NombreEstatus VARCHAR(50),
    Active BOOLEAN DEFAULT 1,
    PRIMARY KEY(EstatusEstId)
);

CREATE TABLE Periodo(
    PeriodoId INT AUTO_INCREMENT,
    NombrePeriodo VARCHAR(50) UNIQUE,
    PRIMARY KEY(PeriodoId)
);

CREATE TABLE Estudiante(
    EstudianteId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    APaterno VARCHAR(50),
    AMaterno VARCHAR(50),
    AnioIngreso INT,
    PeriodoId INT, 
    Celular VARCHAR(10),
    Email VARCHAR(30),
    EstatusEstId INTEGER DEFAULT 1,
    FechaNacimiento DATE,
    UsuarioId INTEGER,
    CreadoPor INTEGER,
    CarreraId INTEGER,
    clave VARCHAR(12) UNIQUE,
    PRIMARY KEY(EstudianteId),
    CONSTRAINT fk_EstudianteCarrera 
    FOREIGN KEY (CarreraId) REFERENCES Carrera(CarreraId),
    CONSTRAINT fk_EstudianteEstatusEst
    FOREIGN KEY (EstatusEstId) REFERENCES EstatusEst(EstatusEstId),
    CONSTRAINT fk_EstudianteUsuario
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId),
    CONSTRAINT fk_EstudianteUsuarioMetadata
    FOREIGN KEY (CreadoPor) REFERENCES Usuario(UsuarioId),
    CONSTRAINT fk_EstudiantePeriodo
    FOREIGN KEY (PeriodoId) REFERENCES Periodo(PeriodoId)
);

CREATE TABLE Materia(
    MateriaId INT AUTO_INCREMENT,
    Nombre VARCHAR(50) UNIQUE,
    Active boolean DEFAULT TRUE,
    Clave VARCHAR(12) UNIQUE,
    CarreraId INTEGER,
    PRIMARY KEY(MateriaId),
    CONSTRAINT fk_MateriaCarreraId
    FOREIGN KEY (CarreraId) REFERENCES Carrera(CarreraId)
);

CREATE TABLE Profesor(
    ProfesorId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    APaterno VARCHAR(50),
    AMaterno VARCHAR(50),
    Active BOOLEAN DEFAULT TRUE,
    RFC VARCHAR(30) UNIQUE,
    CarreraId INTEGER, 
    UsuarioId INTEGER,
    PRIMARY KEY(ProfesorId),
    CONSTRAINT fk_ProfesorCarreraId
    FOREIGN KEY (CarreraId) REFERENCES Carrera(CarreraId),
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId)
);

CREATE TABLE EstatusClase(
    EstatusClaseId INT AUTO_INCREMENT,
    NombreEstatus VARCHAR(50),
    PRIMARY KEY(EstatusClaseId)
);

CREATE TABLE Clase(
    ClaseId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Horario VARCHAR(500),
    MateriaId INTEGER,
    Active BOOLEAN DEFAULT TRUE,
    ProfesorId INTEGER,
    Semestre INTEGER,
    Anio DATE DEFAULT CURDATE(),
    PeriodoId INT,
    EstatusClaseId INT DEFAULT 1,
    PRIMARY KEY(ClaseId),
    CONSTRAINT fk_ClaseProfesorId
    FOREIGN KEY (ProfesorId) REFERENCES Profesor(ProfesorId),
    CONSTRAINT fk_ClaseMateriaId
    FOREIGN KEY (MateriaId) REFERENCES Materia(MateriaId),
    FOREIGN KEY (PeriodoId) REFERENCES Periodo(PeriodoId),
    FOREIGN KEY (EstatusClaseId) REFERENCES EstatusClase(EstatusClaseId)
);


CREATE TABLE TipoActividad(
    TipoActividadId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Observaciones VARCHAR(500),
    PRIMARY KEY(TipoActividadId)
);

CREATE TABLE Actividad(
    ActividadId INTEGER AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(50),
    ClaseId INTEGER,
    ValorMaximo INTEGER,
    FechaExpiracion DATE,
    FechaRegistro DATETIME DEFAULT NOW(), 
    TipoActividadId INTEGER NOT NULL,
    Parcial INTEGER DEFAULT 1,/*Unidad*/
    PRIMARY KEY(ActividadId),
    CONSTRAINT fk_ActividadClase
    FOREIGN KEY (ClaseId) REFERENCES Clase (ClaseId),
    CONSTRAINT fk_ActividadTipoActividadId
    FOREIGN KEY (TipoActividadId) REFERENCES TipoActividad(TipoActividadId)
);

CREATE TABLE EstudianteActividad(
    EstudianteActividadId INT AUTO_INCREMENT,
    FechaRegistro DATETIME DEFAULT NOW(),
    Calificacion INTEGER,
    EstudianteId INTEGER,
    ClaseId INTEGER,
    ActividadId INTEGER, 
    PRIMARY KEY(EstudianteActividadId),
    CONSTRAINT fk_EstudianteActividadEstudiante
    FOREIGN KEY (EstudianteId) REFERENCES Estudiante (EstudianteId),
    CONSTRAINT fk_EstudianteActividadClaseId
    FOREIGN KEY (ClaseId) REFERENCES Clase(ClaseId),
    CONSTRAINT fk_EstudianteActividadActividadId
    FOREIGN KEY (ActividadId) REFERENCES Actividad(ActividadId)
);

CREATE TABLE Version(
    VersionId INTEGER AUTO_INCREMENT,
    Descripcion VARCHAR(6),
    VersionBD VARCHAR(6),
    VersionSistema INTEGER,
    Notas TEXT,
    PRIMARY KEY(VersionId)
);

CREATE TABLE Estado(
    EstadoId INTEGER AUTO_INCREMENT,
    Clave VARCHAR(50),
    Nombre VARCHAR(50) UNIQUE,
    PRIMARY KEY(EstadoId)
);


CREATE TABLE Ciudad(
    CiudadId INTEGER AUTO_INCREMENT,
    NombreCiudad VARCHAR(50) UNIQUE,
    Clave VARCHAR(50),
    EstadoId INTEGER,
    PRIMARY KEY(CiudadId)
);

CREATE TABLE Domicilio(
    DomicilioId INTEGER AUTO_INCREMENT,
    Direccion VARCHAR(100) UNIQUE,
    EstudianteId INTEGER,
    EstadoId INTEGER,
    CiudadId INTEGER,
    PRIMARY KEY(DomicilioId),
    CONSTRAINT fk_DomicilioEstudiante
    FOREIGN KEY (EstudianteId) REFERENCES Estudiante (EstudianteId),
    CONSTRAINT fk_DomicilioEstadoId
    FOREIGN KEY (EstadoId) REFERENCES Estado (EstadoId),
    CONSTRAINT fk_DomicilioCiudadId
    FOREIGN KEY (CiudadId) REFERENCES Ciudad (CiudadId)
);




/*DROP TABLE IF EXISTS EstudianteClase */
CREATE TABLE EstudianteClase(
    EstudianteClaseId INTEGER AUTO_INCREMENT,
    EstudianteId INTEGER,
    ClaseId INTEGER,
    PRIMARY KEY(EstudianteClaseId),
    CONSTRAINT fk_EstudianteClaseEstudiante
    FOREIGN KEY (EstudianteId) REFERENCES Estudiante (EstudianteId),
    CONSTRAINT fk_EstudianteClaseClase
    FOREIGN KEY (ClaseId) REFERENCES Clase (ClaseId)
);

ALTER TABLE  EstudianteActividad ADD UNIQUE (EstudianteId , ClaseId, ActividadId);

CREATE TABLE EstudianteEvaluacion(
    EstudianteEvaluacionId INTEGER AUTO_INCREMENT,
    EstudianteId INTEGER,
    ClaseId INTEGER,
    UnidadI DECIMAL(3,1),
    UnidadII DECIMAL(3,1),
    UnidadIII DECIMAL(3,1),
    PuntosExtras INTEGER,
    PRIMARY KEY(EstudianteEvaluacionId),
    CONSTRAINT fk_EstudianteEvaluacion
    FOREIGN KEY (EstudianteId) REFERENCES Estudiante (EstudianteId),
    CONSTRAINT fk_EstudianteEvaluacionClase
    FOREIGN KEY (ClaseId) REFERENCES Clase (ClaseId)
);
