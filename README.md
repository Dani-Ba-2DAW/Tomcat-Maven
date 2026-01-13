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