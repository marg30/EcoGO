<header>
    <div class="container-fluid">

        <!-- barra de navegacion -->
        <div class="row pb-5 mt-3 mb-4">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light fixed-top pt-3" style="border-bottom: 2px solid #2db300; background-color: white; padding-bottom: 20px;">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="navbar-toggler-icon"></span>
                    </button> 
                    <a class="navbar-brand" href="/EcoGO!"> <img id="logo" src="https://github.com/marg30/EcoGO/blob/master/files/ecogo.png?raw=true"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#busqueda">
                        <i class="fa fa-search"></i>
                    </button> 
                    <div class="collapse navbar-collapse" style="display: none!important;" id="busqueda">
                        <form class="form-inline">
                            <input class="form-control" placeholder="Buscar" type="text"> 
                            <button class="btn btn-success mr-2 ml-2" type="submit">
                                Buscar
                            </button>
                        </form>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="/EcoGO!/mapa">Mapa <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="nuestramision.html">Nuestra misión</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown">Aprende a reciclar</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/desafios">Desafíos</a> 
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/consejos">Tips y consejos</a> 
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/aprendeareciclar"> Cómo empezar a reciclar </a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contacto</a>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-md-auto">
                            <li class="d-none d-lg-block">
                                <form class="form-inline">
                                    <input class="form-control" placeholder="Buscar" type="text"> 
                                    <button class="btn btn-success mr-2 ml-2" type="submit">
                                        Buscar
                                    </button>
                                </form>
                            </li>
                            <%
                                if (request.getSession().getAttribute("usuario") != null) {
                            %>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="user" data-toggle="dropdown"><i class="fa fa-user-circle"></i></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left"  aria-labelledby="user">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/miusuario">Mi cuenta</a> 
                                    <a class="dropdown-item" href="consejos.html">Desafios completados</a> <a class="dropdown-item" href="#"> Ubicaciones guardadas </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"> Configuracion </a>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout"> Cerrar sesión (<%=request.getSession().getAttribute("usuario")%>) </a>
                                </div>
                            </li>
                            <%
                            } else {
                            %>
                            <!-- Button trigger modal -->
                            <li id="boton-registro"><a href="#modal" role="button" class="example-modal btn btn-success" data-target="#modal" data-toggle="modal">Registrarse</a>
                            </li>

                            <li class="dropdown" id="login">
                                <a class="nav-link dropdown-toggle text-success" id="navbarDropdownMenuLink" data-toggle="dropdown">¿Ya te registraste? Inicia sesion</a>
                                <div class="dropdown-menu">
                                    <form class="px-4 py-3" action="${pageContext.request.contextPath}/login">
                                        <div class="form-group">
                                            <label for="user">Nombre de usuario</label>
                                            <input type="text" name="user"class="form-control" id="user" placeholder="Nombre de usuario">
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Contraseña</label>
                                            <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña">
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                                                <label class="form-check-label" for="dropdownCheck">
                                                    Recordar mi cuenta
                                                </label>
                                            </div>
                                        </div>
                                        <button name="submit" type="submit" class="btn btn-success">Iniciar sesión</button>
                                    </form>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#modal" data-target="#modal" data-toggle="modal">¿No tenes cuenta? Registrate</a>
                                    <!--<a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>-->
                                </div>
                            </li>	   
                            <%
                                }
                            %>     

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>        
