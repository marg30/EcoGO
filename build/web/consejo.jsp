<%-- 
    Document   : consejo
    Created on : 27/10/2019, 02:38:38
    Author     : maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tips y consejos </title>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row mt-4">
                <div class="offset-3 col-6 col-12-sm">
                    <div class="consejos">
                        <p class="p-3 d-flex justify-content-center align-items-center" id="consejo" style="height: 100%;">Reemplaza las BOTELLAS de plástico por botellas reutilizables y llevala SIEMPRE con vos para no tener comprar una de plastico </p>
                    </div>
                </div>
            </div>
            <div class="row pt-3">
                <div class="offset-3 col-6">
                    <div class="d-flex mb-3">
                        <button class="p-2 boton-tip prev" onclick="cambiarConsejo(-1);"> <i class="fa fa-chevron-left"></i> Tip anterior </button>
                        <button class="ml-auto p-2 boton-tip next" onclick="cambiarConsejo(1);"> Siguiente tip <i class="fa fa-chevron-right"></i> </button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function cambiarConsejo(numero) {
                var consejos = ["Reemplaza las BOTELLAS de plástico por botellas reutilizables y llevala SIEMPRE con vos para no tener comprar una de plastico", "", "Lleva con vos bolsas doblables reutilizables y decile NO a las bolsas de plástico cuando hagas las compras", "Lleva tu propio almuerzo al trabajo y evita comprar comida empaquetada.", "" ,"Decile que NO a los sorbetes de plástico."];

                numero++;

                var consejo = document.getElementById("consejo");
                consejo.innerHTML = consejos[numero];

            }
        </script>
        <%@include file="javascript.jsp" %>
    </body>
</html>
