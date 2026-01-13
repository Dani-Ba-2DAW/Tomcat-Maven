# Práctica de Tomcat y Maven
## Instalaciónde Tomcat
Ejecutamos los siguientes comandos (la imagen es el archivo de provisión, si usas el repositorio, deberían ejecutarse todos los comandos al crear la máquina con Vagrant).
<br>
![Imagen de comandos de instalación](./img/001.png)

### Comprobación de funcionamiento
Usamos el comando **sudo service tomcat9 status** para comprobar que Tomcat está funcionando correctamente.
<br>
![Imagen de funcionamiento 1](./img/002.png)

Abrimos **[localhost:8080](http://localhost:8080)** en el navegador y se puede comprobar que funciona
<br>
![Imagen de funcionamiento 2](./img/003.png)

## Configuración de la administración
Editamos el archivo **/etc/tomcat9/tomcat-users.xml** para que quede así
<br>
![Imagen de configuración de usuarios en Tomcat](./img/004.png)

## Instalar panel administrativo
Instalamos **tomcat9-admin** (en mi cado lo he añadido a la provisión)
<br>
![Imagen de instalación de administración](./img/005.png)

### Vista gráfica
Y comprobamos que esté
<br>
![Imagen de instalación de administración](./img/006.png)
<br>
![Imagen de instalación de administración](./img/007.png)

## Despliegue manual mediante GUI
Usamos un archivo (se ha añadido a la carpeta "additions" para mejor acceso) proporcionado para esta práctica en la interfaz gráfica

Se añade aquí
<br>
![Imagen de despliegue manual GUI](./img/008.png)

Y debe quedar así
<br>
![Imagen de despliegue manual resultado](./img/009.png)

## Instalación de Maven
Instalamos **maven**
<br>
![Imagen de instalación de Maven](./img/010.png)

Y añadimos en Tomcat un usuario para la configuración
<br>
![Imagen de usuario para Maven en Tomcat](./img/011.png)

En la configuración de Maven, en **/etc/maven/settings.xml**, lo editamos para añadir las credenciales del paso anterior
<br>
![Imagen de configuración de Maven](./img/012.png)

## Creación de un proyecto
Ejecutamos el comando **mvn archetype:generate -DgroupId=com.ddm -DartifactId=ddm-test -Ddeployment -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=fa**, tiene que acabar así
<br>
![Imagen de creación de proyecto](./img/013.png)

Luego, dentro del directorio que se habrá creado (en este caso, **ddm-test**), editaremos el archivo **pom.xml** de esta forma
<br>
![Imagen de edición de metadatos del proyecto](./img/014.png)