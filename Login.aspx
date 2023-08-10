<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoKevin.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Iniciar Sesión</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" />

    <style>
        body {
            
        }
    </style>

    <script>
        function PasswordVisibility(inputId, buttonId) {
            const input = document.getElementById(inputId);
            const button = document.getElementById(buttonId);

            if (input.type === "password") {
                input.type = "text";
                button.textContent = "Ocultar";
            } else {
                input.type = "password";
                button.textContent = "Mostrar";
            }
        }
    </script>

    <style>
    body, html {
        height: 100%;
        margin: 0;
        padding: 0;
    }
    body {
        
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        transition: background-image 1s ease-in-out;
        height: 100%;
        margin: 0;
        padding: 0;
    }
    </style>

</head>
<body>
    <div id="container" class="d-flex justify-content-center align-items-center">
    <form runat="server" method="post">
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <br />
                        <h3>Iniciar Sesión</h3>
                        <div class="d-flex justify-content-end social_icon">
                            <span><i class="fab fa-facebook-square"></i></span>
                            <span><i class="fab fa-google-plus-square"></i></span>
                            <span><i class="fab fa-twitter-square"></i></span>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" placeholder="correo" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="Contrasenia" CssClass="form-control" TextMode="Password" placeholder="contraseña" />
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="mostrarContrasenaBtn" onclick="PasswordVisibility('<%= Contrasenia.ClientID %>', 'mostrarContrasenaBtn')">Mostrar</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="IniciarSesionBtn" runat="server" CssClass="btn float-right login_btn" Text="Iniciar Sesión" OnClick="IniciarSesionBtn_Click" />
                        </div>
                        <asp:Literal ID="MensajeLiteral" runat="server" EnableViewState="false"></asp:Literal>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            ¿No tienes una cuenta? <a href="Registrar.aspx">Registrarse</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </form>
        </div>
    <script>
        const images = [
            'Image1.jpg',
            'Image2.jpg',
            'Image3.jpg'
            // Agrega aquí más nombres de archivo de imágenes
        ];

        let currentIndex = 0;
        const body = document.body;

        function changeBackgroundImage() {
            body.style.backgroundImage = `url('${images[currentIndex]}')`;
            currentIndex = (currentIndex + 1) % images.length;
        }

        // Cambia la imagen cada 5 segundos (5000 ms)
        // Puedes cambiar este valor a 10000 para cambiar cada 10 segundos
        setInterval(changeBackgroundImage, 5000);
    </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
</body>
</html>