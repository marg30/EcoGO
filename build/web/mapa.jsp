<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Barrio"%>
<%@page import="entidades.PuntoVerde" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="css/stylesidebar.css" rel="stylesheet" type="text/css"/>
        <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.0/mapbox-gl.js'></script>
        <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.0/mapbox-gl.css' rel='stylesheet' />
        <script src='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.js'></script>
        <link href='https://api.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css' rel='stylesheet' />
        <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.2.0/mapbox-gl-geocoder.min.js'></script>
        <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v4.2.0/mapbox-gl-geocoder.css' type='text/css' />
        <title>Mapa</title>
        <style><%@include file="css/stylesidebar.css"%></</style>
        <style>
            .geocoder {
                position:absolute;
                z-index:1;
                width:50%;
                left:50%;
                margin-left:-25%;
                top:20px;
            }
            .mapboxgl-ctrl-geocoder { min-width:100%; }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="modalRegistro.jsp" %>
        <div class="wrapper">
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Lista de puntos de reciclaje</h3>
                </div>

                <ul class="list-unstyled components">
                    <li class="active">
                        <% PuntoVerde punto;
                            Barrio barrio;
                            for (int numPunto = 0; numPunto < ((ArrayList<PuntoVerde>) request.getAttribute("puntos")).size(); numPunto++) {
                                punto = ((ArrayList<PuntoVerde>) request.getAttribute("puntos")).get(numPunto);
                        %>

                        <a href="#homeSubmenu<%=numPunto%>" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> <%=punto.getNombre()%></a>
                        <ul class="collapse list-unstyled" id="homeSubmenu<%=numPunto%>">
                            <li>
                                <%=punto.getDireccion()%>
                            </li>
                            <li>
                                <%=punto.getBarrio().get_nombre()%> </a>
                            </li>
                        </ul>
                        <% };%>
                    </li>
                    <li>
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSdrzQDbTX54JkxoaUi9eaO1HXjrwY8OgEQ2cCLLPCrcdruepQ/viewform"> ¿No encuentra un punto de cerca de su barrio? Si sos de capital podes pedir que un punto movil pase por tu barrio acá</a>
                    </li>
                    <li>
                        <a href="https://www.buenosaires.gob.ar/agenciaambiental/puntos-verdes/punto-verde-movil/cronograma-de-puntos-verdes-moviles">  Fijate el cronograma de los Puntos Moviles aca</a>
                    </li>
                </ul>
            </nav>
            <!-- Page Content Holder -->
            <div id="content">
                <div class="row" style="height:100vh;">
                    <div class="col-md-2 pr-0">
                        <h5 class="select">Elegí qué reciclar</h5>
                        <div id="accordion">
                            <div class="card"> <!-- Lista de residuos secos -->
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Residuos secos</button>
                                    </h5>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <div class="list-group">
                                            <a onclick="crearMarket('azul');"class="list-group-item list-group-item-action" id="res-plastico">Plástico</a>
                                            <a  onclick="crearMarket('naranja');" class="list-group-item list-group-item-action" id="res-tetrabrik">Tetra-brik</a>
                                            <a onclick="crearMarket('marron');" class="list-group-item list-group-item-action" id="res-carton-papel"> Cartón y papel</a>
                                            <a onclick="crearMarket('celeste');" class="list-group-item list-group-item-action" id="res-vidrio"> Vidrio </a>
                                            <a onclick="crearMarket('gris');" class="list-group-item list-group-item-action" id="res-metales">Metales</a>
                                            <a onclick="crearMarket('rojo');" class="list-group-item list-group-item-action" id="res-tapitas">Tapitas</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card"> <!-- Lista de residuos especiales --> 
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> Residuos especiales </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <div class="list-group">
                                            <a onclick="crearMarket('amarillo');" class="list-group-item list-group-item-action" id="res-pilas">Pilas</a>
                                            <a onclick="crearMarket('rosa')" class="list-group-item list-group-item-action" id="res-electronicos"> Electrónicos </a>
                                            <!--<a href="#" class="list-group-item list-group-item-action" id="res-bronce"> Bronce</a>
                                            <a href="#" class="list-group-item list-group-item-action" id="res-textiles">Textiles</a>-->
                                            <a onclick="crearMarket('aceite')" class="list-group-item list-group-item-action" id="res-aceite">Aceite</a>
                                            <a id="res-telgopor" onclick="crearMarket('verde');" class="list-group-item list-group-item-action">Telgopor</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h5 class="select"> Elegí tu zona </h5>
                        <div id="accordion2">
                            <div class="card"> <!-- Lista de residuos secos -->
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> Comuna </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion2">
                                    <div class="card-body">
                                        <div class="list-group">
                                            <a class="list-group-item list-group-item-action" >Comuna 1</a>
                                            <a class="list-group-item list-group-item-action" >Comuna 2</a>
                                            <a class="list-group-item list-group-item-action" >Comuna 3</a>
                                            <a class="list-group-item list-group-item-action" >Comuna 4</a>
                                            <a class="list-group-item list-group-item-action" >Comuna 5</a>
                                            <a class="list-group-item list-group-item-action" >Comuna 6</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card"> <!-- Lista de residuos secos -->
                                <div class="card-header" id="headingFour">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"> Barrio </button>
                                    </h5>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion2">
                                    <div class="card-body">
                                        <div class="list-group">
                                            <a onclick="crearMarket('azul');"class="list-group-item list-group-item-action" id="res-plastico">Plástico</a>
                                            <a  onclick="crearMarket('naranja');" class="list-group-item list-group-item-action" id="res-tetrabrik">Tetra-brik</a>
                                            <a onclick="crearMarket('marron');" class="list-group-item list-group-item-action" id="res-carton-papel"> Cartón y papel</a>
                                            <a onclick="crearMarket('celeste');" class="list-group-item list-group-item-action" id="res-vidrio"> Vidrio </a>
                                            <a onclick="crearMarket('gris');" class="list-group-item list-group-item-action" id="res-metales">Metales</a>
                                            <a href="#" class="list-group-item list-group-item-action" id="res-tapitas">Tapitas</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 col-12">
                        <div id='map'></div>
                        <div id='geocoder' class='geocoder'></div>
                        <button type="button" id="sidebarCollapse" class="navbar-btn ml-3" style="position: fixed; right: 0; z-index: 1000">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                    </div>
                </div>
            </div>
            <%@include file="javascript.jsp"%>
            <%@include file="javascriptmapa.jsp" %>
            <script src="js/mapa.js" type="text/javascript"></script>
    </body>
</html>
