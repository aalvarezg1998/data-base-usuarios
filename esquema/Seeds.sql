-- Insertar seeds en la tabla ROLES
INSERT INTO roles (nombre, descripcion) VALUES
('ADMINISTRADOR', 'Rol con permisos completos para gestionar el sistema, usuarios, y configuraciones.'),
('PROPIETARIO', 'Rol asignado a los dueños de los restaurantes, con acceso a la administración de su establecimiento.'),
('EMPLEADO', 'Rol para empleados de los restaurantes, con acceso limitado a la gestión de pedidos y operaciones diarias.'),
('CLIENTE', 'Rol asignado a los usuarios que realizan pedidos en los restaurantes.');
