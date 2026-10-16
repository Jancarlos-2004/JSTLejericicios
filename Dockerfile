FROM tomcat:9.0-jre11-temurin

# Limpiar aplicaciones de ejemplo de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar el proyecto a ROOT para acceder directamente desde la raíz (/)
COPY . /usr/local/tomcat/webapps/ROOT/

# Mantener compatibilidad si se accede con el nombre del directorio
RUN cp -r /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/JSTLejercicios_jan

# Puerto estándar de Tomcat
EXPOSE 8080

# Render asigna dinámicamente el puerto en la variable $PORT.
# Ajustamos server.xml dinámicamente antes de iniciar Tomcat.
CMD ["sh", "-c", "if [ -n \"$PORT\" ]; then sed -i \"s/port=\\\"8080\\\"/port=\\\"$PORT\\\"/g\" /usr/local/tomcat/conf/server.xml; fi && catalina.sh run"]
