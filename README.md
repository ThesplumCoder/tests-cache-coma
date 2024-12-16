# Pruebas para la caché de Comunidad Académica (COMA)

Conjunto de pruebas de rendimiento que se realizan sobre el proyecto COMA de 
CALUMET (UIS). Se hacen con el fin de comparar el proyecto sin y con caché en 
los módulos objetivo.

## Despliegue del entorno de pruebas

Teniendo [Docker](https://www.docker.com/) instalado podemos hacer uso del 
`docker compose`.

1. Nos situamos en la carpeta `test-environment/`.

2. Ejecutamos:

    ```bash
    docker compose up -d
    ```

3. Cambiamos todas las referencias a `localhost` como dominio de la BD por el 
nombre del contenedor de la BD. Además cambiamos la contraseña a la que aparece 
en el archivo usado en el paso 2.

4. Construimos el proyecto (archivo `.war`).

5. Copiamos el comprimido del proyecto a la carpeta `webapps` del Tomcat. Se 
debe revisar la ruta donde está montado el volumen del contenedor.

    ```bash
    cp project.war /ruta/del/volumen/tomcat/webapps/
    ```

6. Restauramos las bases de datos del contenedor de BD.

7. Nos conectamos a [Tomcat local](http://localhost:9080/).

## Copiar datos del esquema de rendimiento

Debemos asegurarnos que esté activo.
```SQL
SHOW VARIABLES LIKE 'performance_schema';
```

Si está `OFF` entonces debemos configurar la opción en `/etc/mysql/my.cnf`, 
después debemos reiniciar el servidor:
```
[mysqld]
performance_schema=ON
```

Para hacer la copia:
```
mysqldump -u root -p performance_schema > no-cache-data.sql
```

