<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicia sesión</title>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div class="container">
  	<div class="row mt-3">
			<div class="col-12 col-lg-4 offset-lg-4 flexbox">
				<h1 class="text-center">Inicia sesión</h1>
				<p> ¿No tenes cuenta? <a href="#modal" data-target="#modal" data-toggle="modal">Registrate aca </a></p>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-4 offset-lg-4">
                            <form action="login" method="POST">
				  <div class="form-group">
				    <label for="user"> Usuario </label>
				    <div class="input-group">
				      <div class="input-group-prepend">
				        <div class="input-group-text">
				          <i class="fa fa-user"></i>
				        </div>
				      </div>
				      <input id="user" name="user" type="text" placeholder="Ingrese su nombre de usuario" required="required" class="form-control">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="password">Contraseña</label> <!--<span> <a href="olvido-password.html">¿Olvidó su contraseña?</a></span>-->
				    <div class="input-group">
				      <div class="input-group-prepend">
				        <div class="input-group-text">
				          <i class="fa fa-lock"></i>
				        </div>
				      </div>
				      <input id="password" name="password" placeholder="Ingrese su contraseña" type="password" class="form-control" required="required">
				    </div>
				  </div>
				  <!--<div class="form-group">
				      <input name="recordarme" type="checkbox"> Recordarme
				  </div>-->
				  <div class="form-group">
				    <button name="submit" type="submit" class="btn btn-success btn-lg btn-block">Iniciar sesion </button>
				  </div>
				</form>
			</div>
		</div> <!-- Aca termina el formulario -->
		<div class="row fixed-bottom d-none">
			<div class="col" style="width: 100%; height: 100px; background-color: green;"> <!-- Aca va el footer--> </div>
		</div>
	</div>
        <%@include file="modalRegistro.jsp" %>
        <%@include file="javascript.jsp" %>
    </body>
</html>


