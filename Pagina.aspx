<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina.aspx.cs" Inherits="ProyectoKevin.Pagina" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>HOLA</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"/>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <script>
        // JavaScript
        document.addEventListener("DOMContentLoaded", function () {

            var postButton = document.querySelector(".panel-footer .btn-success");
            var postContainer = document.getElementById("postContainer");

            // Manejar clic en el botón POST
            postButton.addEventListener("click", function (event) {
                event.preventDefault(); // Evitar el comportamiento predeterminado del botón

                // Crear el nuevo elemento de publicación
                var newPost = document.createElement("div");
                newPost.classList.add("media", "inner-all", "no-margin");

                newPost.innerHTML = `
            <div class="post-container"> <!-- Agregamos la clase aquí -->
                <div class="pull-left">
                    <img src="https://dondeestudiar.pe/wp-content/uploads/2023/01/universidad-UNSA.jpg" alt="..." class="img-post2">
                </div>
                <div class="media-body">
                    <a href="#" class="h4">Escuela profesional de ciecias de la computación</a>
                    <small class="block text-muted">Estas interesado en la impresión 3D?, te invitamos este 5 de agosto a nuestra gran mañana de diseño, donde imprimiremos diversas cosas.</small>
                    <em class="text-xs text-muted">Posted on <span class="text-danger">Aug 09, 2023</span></em>
                </div>
                <!-- Formulario de comentario para la nueva publicación -->
                <form action="#" class="form-horizontal inner-all">
                    <div class="form-group has-feedback no-margin">
                        <input class="form-control" type="text" placeholder="Your comment here...">
                        <button type="submit" class="btn btn-theme fa fa-search form-control-feedback"></button>
                    </div>
                </form><!-- /.form-horizontal -->
            </div><!-- /.post-container -->
        `;

                // Agregar el nuevo elemento al contenedor
                postContainer.insertBefore(newPost, postContainer.firstChild);

                // Limpiar el área de publicación después de agregar la nueva publicación
                var textarea = document.querySelector(".panel-footer textarea");
                textarea.value = "";

                // Hacer scroll hacia abajo para mostrar la nueva publicación
                postContainer.scrollTop = postContainer.scrollHeight;
            });





            // Obtener datos del usuario desde el backend (simulado aquí)
            
            // Redirigir al usuario a la página de edición de cuenta
            document.getElementById("editAccountBtn").addEventListener("click", function () {
                // Cambiar la URL según la página de edición de cuenta
                window.location.href = "EditarPerfil.aspx";
            });

            // Redirigir al usuario a la página de inicio de sesión al hacer clic en Logout
            document.getElementById("logoutBtn").addEventListener("click", function () {
                // Cambiar la URL según la página de inicio de sesión
                window.location.href = "Login.aspx";
            });
            
        });

        


    </script>
    <style>
     body {
            background-color: #f8f8f8;
            background-image: url(https://i.pinimg.com/originals/21/af/d5/21afd5de7f42bd5a26b08f70314452e2.jpg); 
            background-size: cover;
            background-repeat: no-repeat; 
        }
     .post-container {
        background-color: #f7f7f7; /* Color de fondo */
        padding: 10px; /* Márgenes interiores */
        margin-bottom: 15px; /* Margen inferior entre publicaciones */
    }
     .media-container {
    max-height: 400px; /* Altura máxima del contenedor */
    overflow-y: auto; /* Agregar scroll vertical cuando se excede la altura máxima */
    border: 1px solid #ccc; /* Borde del contenedor */
    padding: 10px; /* Espacio interno del contenedor */
    background-color: #f5f5f5; /* Color de fondo del contenedor */
}
     </style>

</head>
<body>
    <div class="container bootstrap snippets bootdeys">
<div class="row">
    <div class="col-lg-3 col-md-3 col-sm-4">
        <!-- HTML -->
        <div class="panel rounded shadow">
            <div class="panel-body">
                <div class="inner-all">
                    <ul class="list-unstyled">
                        <li class="text-center">
                          <h4 id="profileName" class="text-capitalize"><%# UserFirstName + " " + UserLastName %></h4>
                        <img id="profileImage" class="img-circle img-responsive img-bordered-primary" src="<%# UserProfileImage %>" alt="Profile Image"/>
                        <p id="profileDescription" class="text-muted text-capitalize"><%# UserDescription %></p>
                        </li>
                        <li>
                            <a href="#" id="editAccountBtn" class="btn btn-success text-center btn-block">Editar Cuenta</a>
                        </li>
                        <li><br></li>
                        <li>
                            <div class="btn-group-vertical btn-block">
                                <a href="#" id="logoutBtn" class="btn btn-default"><i class="fa fa-sign-out pull-right"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- /.panel -->

        <div class="panel panel-theme rounded shadow">
            <div class="panel-heading">
                <div class="pull-left">
                    <h3 class="panel-title">Contact</h3>
                </div>
                <div class="pull-right">
                    <a href="#" class="btn btn-sm btn-success"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="btn btn-sm btn-success"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="btn btn-sm btn-success"><i class="fa fa-google-plus"></i></a>
                </div>
                <div class="clearfix"></div>
            </div><!-- /.panel-heading -->
            <div class="panel-body no-padding rounded">
                <ul class="list-group no-margin">
                    <li class="list-group-item"><i class="fa fa-envelope mr-5"></i> support@bootdey.com</li>
                    <li class="list-group-item"><i class="fa fa-globe mr-5"></i> www.bootdey.com</li>
                    <li class="list-group-item"><i class="fa fa-phone mr-5"></i> +6281 903 xxx xxx</li>
                </ul>
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->

    </div>
    <div class="col-lg-9 col-md-9 col-sm-8">

    <div class="profile-cover">
        <div class="cover rounded shadow no-overflow">
            <div class="inner-cover">
                <!-- Start offcanvas btn group menu: This menu will take position at the top of profile cover (mobile only). -->
                <div class="btn-group cover-menu-mobile hidden-lg hidden-md">
                    <button type="button" class="btn btn-theme btn-sm dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bars"></i>
                    </button>
                    <ul class="dropdown-menu pull-right no-border" role="menu">
                        <li class="active"><a href="#"><i class="fa fa-fw fa-clock-o"></i> <span>Timeline</span></a></li>
                        <li><a href="#"><i class="fa fa-fw fa-user"></i> <span>About</span></a></li>
                        <li><a href="#"><i class="fa fa-fw fa-photo"></i> <span>Photos</span> <small>(98)</small></a></li>
                        <li><a href="#"><i class="fa fa-fw fa-users"></i><span> Friends </span><small>(23)</small></a></li>
                        <li><a href="#"><i class="fa fa-fw fa-envelope"></i> <span>Messages</span> <small>(7 new)</small></a></li>
                    </ul>
                </div>
                <img  src="https://fondosmil.com/fondo/118645.jpg" class="img-responsive full-width" alt="cover" style="max-height:200px; width: 3840px;">
            </div>
            <ul class="list-unstyled no-padding hidden-sm hidden-xs cover-menu">
                <li class="active"><a href="#"><i class="fa fa-fw fa-clock-o"></i> <span>Timeline</span></a></li>
                <li><a href="#"><i class="fa fa-fw fa-user"></i> <span>About</span></a></li>
                <li><a href="#"><i class="fa fa-fw fa-photo"></i> <span>Photos</span> <small>(98)</small></a></li>
                <li><a href="#"><i class="fa fa-fw fa-users"></i><span> Friends </span><small>(23)</small></a></li>
                
            </ul>
        </div><!-- /.cover -->
    </div><!-- /.profile-cover -->
    <div class="divider"></div>
    <div class="panel rounded shadow">
        <form action="...">
            <textarea class="form-control input-lg no-border" rows="2" placeholder="What are you doing?..."></textarea>
        </form>
        <div class="panel-footer">
            <button class="btn btn-success pull-right mt-5">POST</button>
            <ul class="nav nav-pills">
                <li><a href="#"><i class="fa fa-user"></i></a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i></a></li>
                <li><a href="#"><i class="fa fa-camera"></i></a></li>
                <li><a href="#"><i class="fa fa-smile-o"></i></a></li>
            </ul><!-- /.nav nav-pills -->
        </div><!-- /.panel-footer -->
    </div><!-- /.panel -->

   
       <div id="postContainer" class="media inner-all no-margin">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-success rounded shadow">
                <div class="panel-heading no-border">
                    <!-- ... -->
                </div>
                <!-- Publicaciones existentes -->
                <div class="media inner-all no-margin">
                    <!-- ... Publicaciones existentes ... -->
                </div><!-- /.media -->
                <!-- Formulario de nueva publicación -->
                <div class="line no-margin"></div><!-- /.line -->
                <form action="#" class="form-horizontal inner-all">
                    <div class="form-group has-feedback no-margin">
                        <input class="form-control" type="text" placeholder="Your comment here...">
                        <button type="submit" class="btn btn-theme fa fa-search form-control-feedback"></button>
                    </div>
                </form><!-- /.form-horizontal -->
                <!-- Nueva publicación -->
                <div class="media inner-all no-margin">
                    <div class="post-container"> <!-- Agregamos la clase aquí -->
                        <div class="pull-left">
                            <img src="https://dondeestudiar.pe/wp-content/uploads/2023/01/universidad-UNSA.jpg" alt="..." class="img-post2">
                        </div>
                        <div class="media-body">
                            <a href="#" class="h4">Escuela profesional de ciecias de la computación</a>
                            <small class="block text-muted">Estas interesado en la impresión 3D?, te invitamos este 5 de agosto a nuestra gran mañana de diseño, donde imprimiremos diversas cosas.</small>
                            <em class="text-xs text-muted">Posted on <span class="text-danger">Aug 09, 2023</span></em>
                        </div>
                        <!-- Formulario de comentario para la nueva publicación -->
                        <form action="#" class="form-horizontal inner-all">
                            <div class="form-group has-feedback no-margin">
                                <input class="form-control" type="text" placeholder="Your comment here...">
                                <button type="submit" class="btn btn-theme fa fa-search form-control-feedback"></button>
                            </div>
                        </form><!-- /.form-horizontal -->
                    </div><!-- /.post-container -->
                </div><!-- /.media -->
            </div><!-- /.panel -->
        </div>
    </div>
</div>
<!-- ... -->
</div>
</div>
</div>
</div>


</body>
</html>