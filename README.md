# PHP Mini Projects – Laminas API

Este repositorio contiene dos pequeños proyectos desarrollados con PHP utilizando el framework Laminas API Tools (anteriormente Apigility), como parte del aprendizaje en la creación de APIs RESTful con y sin seguridad OAuth2.


##  Tecnologías utilizadas

- PHP 8.x
- Laminas API Tools (Apigility)
- Composer
- OAuth2 (para autenticación)
- MySQL (base de datos de países)



##  Proyectos incluidos

### 1. API de Países
- API REST que permite consultar, agregar, modificar y eliminar información de una tabla de países.
- Crea endpoints como `GET /pais`, `POST /pais`, etc.
- Usa Laminas API Tools para la configuración automática del servicio.

### 2. API de Países con OAuth2
- Extiende el proyecto anterior añadiendo autenticación OAuth2.
- Protege los endpoints para que solo usuarios autenticados puedan acceder a ellos.
- Incluye flujo de generación de tokens y configuración del cliente.



##  Cómo ejecutar

1. Instalar dependencias con Composer:
   ```bash
   composer install
   ```

2. Configurar acceso a la base de datos MySQL (usar `db/paises.sql`).

3. Levantar servidor de desarrollo:
   ```bash
   php -S 0.0.0.0:8080 -t public
   ```

4. Probar endpoints desde Postman o curl.

---

##  Nota

Estos proyectos fueron creados con fines educativos para practicar la creación de APIs RESTful con Laminas y la implementación de autenticación OAuth2 en PHP.
