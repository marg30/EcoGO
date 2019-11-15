<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tus datos </title>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div>
            <div class="row mt-5 pt-3">
		<div class="col-12 col-md-2 text-center"> <!-- Imagen usuario -->
			<img src="http://localhost/images/usuario.png" alt="" id="usuario-imagen">
		</div>
		<div class="col-12 col-lg-10"> 
			<div class="row">
				<div class="col-12 col-md-2">
					<h2> Tus datos </h2>
				</div>
				<div class="col-12 col-md-4 mt-2">

					<a class="align-bottom" href="#editar-perfil" role="button" class="example-modal" data-target="#editar-perfil" data-toggle="editar-perfil"> Edita tu informacion </a>
				</div>
			</div><!-- Datos usuario -->
			<div class="row">
				<div class="col">
					
				</div>
			</div>
                        <p> Nombre: <%=request.getSession().getAttribute("usuario")%></p>
			<p> Nombre de usuario: </p>
			<p> Correo electronico: </p>
			<p> Fecha de nacimiento: </p>
			<p> Número de telefono: </p>
			<p></p>
		</div> 
	</div>
        </div>
    </body>
</html>
