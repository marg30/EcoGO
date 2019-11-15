<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <%@include file="head.jsp" %>
        <title>Desafíos</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <div class="row h-100">
                <div class="col-12 my-auto"> 
                    <a href="#modaldesafio" role="button" class="example-modal btn btn-success btn-lg btn-block p-4 m-3 text-large" data-target="#modaldesafio" data-toggle="modal"> Empezá tu primer desafío aca </a>
                    <!-- Otro modal del final-->
                </div>
            </div>
        </div>
        <div class="modal fade" id="modaldesafio" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">
                            Empezá por consiguiendo un cesto de basura para tus residuos reciclables                        </h5> 
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="${pageContext.request.contextPath}/gracias" method="POST">
                            <div class="form-group row"> 
                                <div class="col">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                            </div>
                                        </div> 
                                        <input id="prueba" name="prueba" type="file" class="form-control">
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="modal-footer">

                        <a href="gracias"><button name="submit" type="submit" class="btn btn-success" href="registrado.html">
                                Enviar
                            </button></a> 
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                            Cerrar
                        </button>

                        </form>
                    </div>
                </div>

            </div>

        </div>
        <%@include file="javascript.jsp" %>
    </body>
</html>
