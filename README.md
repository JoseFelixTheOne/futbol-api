# Futbol API

Este es un proyecto de backend desarrollado con Spring Boot que proporciona una API para listar futbolistas.

## Base de Datos

Este proyecto utiliza MySQL como base de datos. En la carpeta `db` del repositorio encontrarás un archivo SQL llamado `futbol.sql`. Ejecuta este archivo SQL en tu sistema de gestión de bases de datos MySQL para crear la estructura de la base de datos necesaria para el proyecto.

## Ejecución

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/JoseFelixTheOne/futbol-api.git
    ```

2. Abre el proyecto en tu IDE favorito.

3. Configura el archivo `application.properties` o `application.yml` con la configuración de tu base de datos MySQL u otros ajustes necesarios.

4. Desde tu IDE, ejecuta la aplicación Spring Boot.

5. La aplicación se ejecutará en `http://localhost:8080`.

## Autenticación Básica

Este backend utiliza autenticación básica. Todas las rutas están protegidas. Las credenciales para acceder son:

- Usuario: user
- Contraseña: user123

## Endpoint para Listado de Futbolistas

Puedes obtener un listado de futbolistas utilizando el siguiente endpoint:

- Método: GET
- URL: `http://localhost:8080/futbolista?page=0&size=10`

Este endpoint te devolverá una lista paginada de futbolistas. Puedes ajustar los parámetros `page` y `size` para obtener diferentes páginas y tamaños de resultados.

Por ejemplo:

```bash
curl -u user:user123 http://localhost:8080/futbolista?page=0&size=10
