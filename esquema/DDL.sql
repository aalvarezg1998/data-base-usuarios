-- Crear tabla ROLES
CREATE TABLE roles (
    id          SERIAL PRIMARY KEY, 
    nombre      VARCHAR(255) NOT NULL, 
    descripcion TEXT 
);

COMMENT ON TABLE roles IS 'Tabla que almacena los roles que puede tener un usuario.';
COMMENT ON COLUMN roles.id IS 'Identificador único del rol.';
COMMENT ON COLUMN roles.nombre IS 'Nombre del rol, por ejemplo, administrador, cliente, etc.';
COMMENT ON COLUMN roles.descripcion IS 'Descripción del rol, indicando sus permisos o funciones.';

-- Crear tabla USUARIOS
CREATE TABLE usuarios (
    id                  SERIAL PRIMARY KEY, 
    nombre              VARCHAR(255) NOT NULL, 
    apellido            VARCHAR(255) NOT NULL, 
    numero_documento    VARCHAR(50) UNIQUE NOT NULL, 
    celular             VARCHAR(20), 
    fecha_nacimiento    DATE, 
    correo              VARCHAR(255) UNIQUE NOT NULL, 
    clave               TEXT NOT NULL, 
    id_rol              INT NOT NULL,
    CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES roles(id) ON DELETE CASCADE
);

COMMENT ON TABLE usuarios IS 'Tabla que almacena información básica de los usuarios.';
COMMENT ON COLUMN usuarios.id IS 'Identificador único del usuario.';
COMMENT ON COLUMN usuarios.nombre IS 'Nombre del usuario.';
COMMENT ON COLUMN usuarios.apellido IS 'Apellido del usuario.';
COMMENT ON COLUMN usuarios.numero_documento IS 'Número único de documento de identidad del usuario.';
COMMENT ON COLUMN usuarios.celular IS 'Número de teléfono celular del usuario.';
COMMENT ON COLUMN usuarios.fecha_nacimiento IS 'Fecha de nacimiento del usuario.';
COMMENT ON COLUMN usuarios.correo IS 'Correo electrónico único para el usuario.';
COMMENT ON COLUMN usuarios.clave IS 'Contraseña del usuario almacenada de forma segura.';
COMMENT ON COLUMN usuarios.id_rol IS 'Identificador del rol asignado al usuario, referenciado desde la tabla roles.';