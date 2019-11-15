<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>EcoGO!</title>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class ="container-fluid">
            <!-- Cuadros con informacion --> 
            <div class="row m-5" id="info">
                <div class="col-md info-cuadro mr-5 mb-3">
                    <h2 class="text-center">
                        ¡Aprendé!
                    </h2>

                    <div>
                        <span>Con EcoGo! vas a prender los fundamentos del reciclaje, las 3R, qué se recicla y cómo reciclar correctamente.</span>
                    </div>

                    <p>
                        <a class="btn mas-info-tarjetas" href="${pageContext.request.contextPath}/consejos">Aprender más »</a>
                    </p>
                </div>
                <div class="col-md info-cuadro mr-5 mb-3">
                    <h2 class="text-center">
                        ¡Completá desafíos! 
                    </h2>

                    <div>
                        <span>Pone en práctica tus conocimientos y completa las actividades para seguir aprendiendo.</span>
                    </div>

                    <p>
                        <a class="btn mas-info-tarjetas" href="${pageContext.request.contextPath}/desafios"> Empezá el desafío » </a>
                    </p>
                </div>
                <div class="col-md info-cuadro mr-5 mb-3">
                    <h2 class="text-center">
                        ¡Usa nuestro mapa!
                    </h2>

                    <div>
                        <span> En EcoGO! podés fijarte dónde llevarte tus residuos a reciclar, según el material y el área donde vivís.</span>
                    </div>

                    <p>
                        <a class="btn mas-info-tarjetas" href="${pageContext.request.contextPath}/mapa">Empezá a usarlo »</a>
                    </p>
                </div>
            </div>
            <!-- Jumbotron informacion -->
            <div class="row">
                <div class="col-md-12">
                    <div class="jumbotron m-3">				
                        <h2>
                            ¿Sabías que..
                        </h2>
                        <div class="sabias-que">
                            <p>
                                En Argentina solo se recicla un 15% de los 12 millones de botellas de plástico que se desechan diariamente?
                            </p>
                            <p>
                                Además, de las 2.705.318 toneladas de residuos plásticos que se generan, solo el 5% del total de los residuos plásticos generados se reciclan, posicionando al país dentro de los 25 países que más desechos plásticos produce y en el tercer puesto de los que más genera en América Latina.
                            </p>
                        </div>
                        <br>
                        <p>
                            <a class="btn btn-success btn-large" id="aprender-mas" href="${pageContext.request.contextPath}/informacion"> Aprender más</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <a href="#modal" role="button" class="example-modal btn btn-success btn-lg btn-block p-4 m-3 text-large" data-target="#modal" data-toggle="modal">Registrate y empezá a reciclar </a>
                <!-- Otro modal del final-->
            </div>
        </div>
        <%@include file="modalRegistro.jsp" %>
        <%@include file="javascript.jsp"%>
    </body>
</html>
