<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <title>Aprendé sobre los residuos</title>
        <style><%@include file="css/estilosinfo.css"%></</style>
        <style><%@include file="css/style.css" %></style> 
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
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
                                    <a class="list-group-item list-group-item-action" id="res-plastico">Plástico</a>
                                    <a onclick="cambiarTexto();" class="list-group-item list-group-item-action" id="res-tetrabrik">Tetra-brik</a>
                                    <a onclick="cambiarTexto('carton y papel');" class="list-group-item list-group-item-action" id="res-carton-papel"> Cartón y papel</a>
                                    <a class="list-group-item list-group-item-action" id="res-vidrio"> Vidrio </a>
                                    <a class="list-group-item list-group-item-action" id="res-metales">Metales</a>
                                    <a class="list-group-item list-group-item-action" id="res-tapitas">Tapitas</a>
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
                                    <a class="list-group-item list-group-item-action" id="res-pilas">Pilas</a>
                                    <a class="list-group-item list-group-item-action" id="res-electronicos"> Electrónicos </a>
                                    <!--<a href="#" class="list-group-item list-group-item-action" id="res-bronce"> Bronce</a>
                                    <a href="#" class="list-group-item list-group-item-action" id="res-textiles">Textiles</a>-->
                                    <a class="list-group-item list-group-item-action" id="res-aceite">Aceite</a>
                                    <a id="res-telgopor" class="list-group-item list-group-item-action">Telgopor</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">
                <button type="button" id="sidebarCollapse" class="navbar-btn ml-3" style="z-index: 1000">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div id="texto">
                    <h1> Aprendé a reciclar plástico </h1>
                    <h3> ¿Qué beneficios trae al medio ambiente su reciclaje? </h3>
                    <p> El plástico desechado que va a ríos, lagunas y océanos, mata alrededor de 1 millón de animales por año. Una botella de plástico puede tardar hasta 1000 años de biodegradarse.
                        Reciclar una botella de plástico ahorra la cantidad de energía necesaria para hacer funcionar una bombilla de 60 watts por 3 horas, y además se necesita apenas la mitad de energía que se necesita para incinerarla.</p>
                    <div class="line"></div>

                    <h3>Consejos</h3>
                    <p> El plástico debe estar limpio sin ningún rastro de lo que contenía en su interior. </p>
                    <div class="line"></div>

                    <h3>¿Qué plásticos se reciclan?</h3>
                    <p> Tapitas de Plástico, botellas de PET, envases de alimentos, sillas, bidones. </p>
                    <div class="line">
                    </div>
                    <h3>Donde reciclar</h3>
                </div>
                <div class="row">
                <a href="${pageContext.request.contextPath}/mapa" role="button" class="example-modal btn btn-success btn-block p-4 m-3">Ver mapa </a>
                <!-- Otro modal del final-->
            </div>
            </div>
            <%@include file="javascript.jsp" %>
            <script>
                function cambiarTexto(residuo) {
                    var contenido = document.getElementById("content");
                    texto.innerHTML = "<h1> Aprendé a reciclar " + residuo + "</h1><h3> ¿Qué beneficios trae al medio ambiente su reciclaje? </h3><p> Cada tonelada de papel reciclado equivale a no talar aproximadamente 20 árboles, y a no usar 1500 litros de gasoil, 4000 kilowats de energía y 25000 litros de agua. Esos 20 árboles salvados absorben un total de 110 kilos de dióxido de carbono por año. </p><div class='line'></div><h3>¿Qué se puede reciclar?</h3><p>SI: Papel blanco o de color, sobres de todo tipo de papel, formularios continuos, diarios y revistas, carpetas o biblioratos, folletos, guías telefónicas, cajas, envases. Todos limpios y secos.</p><p> NO: Servilletas, pañuelos descartables, papel de fax, planchas de etiquetas, papel fotográfico, de golosinas, papeles carbónicos, plastificado, metalizado, envoltorios de resmas de papel, papel con cintas, papeles autoadhesivos. </p><div class='line'></div>";
                }

            </script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#sidebarCollapse').on('click', function () {
                        $('#sidebar').toggleClass('active');
                        $(this).toggleClass('active');
                    });
                });
            </script>
    </body>
</html>
