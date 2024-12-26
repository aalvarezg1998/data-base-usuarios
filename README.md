## 1. Instrucciones de instalación y configuración

1. Asegúrate de tener Docker instalado en tu máquina.
2. Clona este repositorio:

```bash
git clone https://github.com/aalvarezg1998/data-base-usuarios.git
cd data-base-usuarios
```

## 2. Construir y ejecutar el contenedor con Docker Compose

```bash
docker-compose up -d
```
## 3. Conexión a la base de datos PostgreSQL

Use cualquier manejador de base de datos o si desea hacerlo por comando

Usuario: admin
Contraseña: admin
Base de datos: db_usuarios

Si desea por Cmd
```bash
psql -h localhost -U postgres -d db_usuarios
```

## 4. Detalles adicionales

El contenedor se mantiene ejecutándose en el puerto 5432. Puedes detenerlo con:
```bash
docker-compose down
```