# Usamos una imagen base
FROM openjdk:17-jdk-slim

# Establecemos la carpeta de trabajo
WORKDIR /app

# Copiamos el archivo .jar de la carpeta 'target' al contenedor
COPY target/*.jar app.jar

# Indicamos el comando que se debe ejecutar cuando se inicie el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]
