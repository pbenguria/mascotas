<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Mascotas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
    	<div class="container">
    		<select class="form-select" aria-label="Default select example" name="estado">
			  <option selected>Estados</option>
			  <option value="INGRESADO">Ingresado</option>
			  <option value="ALTA">Alta</option>
			</select>
    	</div>
    	<div class="container">
	        <table class="table">
	            <thead>
	                <tr>
	                    <th>Código</th>
	                    <th>Nombre</th>
	                    <th>Estado</th>
	                    <th>Fecha nacimiento</th>
	                    <th>Número de visitas</th>
	                    <th>Nombr propietario</th>
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach items="${mascotas}" var="mascota">
	                    <tr>
	                        <td><a href="/mascotas/${mascota.codigo}">${mascota.codigo}</a></td>
	                        <td>${mascota.nombre}</td>
	                        <td>${mascota.estado}</td>
	                        <td>${mascota.fechaNacimiento}</td>
	                        <td>${mascota.numeroVisitas}</td>
	                        <td>${mascota.propietarioNombre} ${mascota.propietarioApellidos}</td>
	                    </tr>
	                </c:forEach>
	            </tbody>
	        </table>
        </div>
    </body>
</html>