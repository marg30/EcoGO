<div class="modal fade" id="modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">
                    Completa con tus datos
                </h5> 
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="EcoGO!/agregarUsuario">
                    <input type="hidden" name="id">		
                    <div class="form-group row">
                        <div class="col">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-address-card-o"></i>
                                    </div>
                                </div> 
                                <input id="nombre" name="name" placeholder="Introduzca su nombre y apellido" type="text" class="form-control" required="required">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row"> 
                        <div class="col">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-envelope-o"></i>
                                    </div>
                                </div> 
                                <input id="email" name="email" placeholder="Introduzca su correo electrónico" type="email" class="form-control" required="required">
                            </div>
                        </div>
                    </div>
                    <!--<div class="form-group row">
                        <div class="col">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                </div> 
                                <input id="number" name="fecha-de-nac" placeholder="Introduzca su fecha de nacimiento" type="date" class="form-control" required="required">
                            </div>
                        </div>
                    </div> -->
                    <div class="form-group row">
                        <div class="col">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div> 
                                <input id="username" name="username" placeholder="Cree un nombre de usuario" type="text" class="form-control" required="required">
                            </div>
                        </div>
                    </div> 
                    <div class="form-group row">
                        <div class="col">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                </div> 
                                <input id="password" name="password" placeholder="Cree una contraseña" type="password" class="form-control" required="required">
                            </div>
                        </div>
                    </div> 
            </div>
            <div class="modal-footer">

                <a href="index.html"><button name="submit" type="submit" class="btn btn-success" href="registrado.html">
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