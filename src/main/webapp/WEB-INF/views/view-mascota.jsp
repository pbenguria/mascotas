<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Detalle mascota</title>
    </head>
    <body>
    	<div class="container">
	       	<h1>Datos de la mascota</h1>
	    	
	    	<p>Código: ${mascota.codigo}</p>
            <p>Nombre: ${mascota.nombre}</p>
            <p>Estado: ${mascota.estado}</p>
            <p>Fecha nacimiento: ${mascota.fechaNacimiento}</p>
            <p>Número de visitas: ${mascota.numeroVisitas}</p>
            <p>Nombr propietario: ${mascota.propietarioNombre} ${mascota.propietarioApellidos}</p>
	        
        </div>
    </body>
</html>