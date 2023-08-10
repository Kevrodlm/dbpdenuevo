<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="ProyectoKevin.Registrar" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Registro</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" />

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
    <form runat="server" method="post">
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <br />
                        <h3>Regístrate</h3>
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
                            <asp:TextBox runat="server" ID="Correo" CssClass="form-control" placeholder="correo" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="Clave" CssClass="form-control" placeholder="contraseña" TextMode="Password" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="ConfirmarClave" CssClass="form-control" placeholder="confirmar contraseña" TextMode="Password" />
                        </div>
                        <div class="form-group">
                            <asp:Button ID="RegistrarseBtn" runat="server" CssClass="btn float-right login_btn" Text="Registrarse" OnClick="RegistrarseBtn_Click" />
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            ¿Ya tienes una cuenta? <a href="Login.aspx">Iniciar Sesión</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
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
