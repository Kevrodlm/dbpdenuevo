<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarPerfil.aspx.cs" Inherits="ProyectoKevin.EditarPerfil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Profile Settings - Social Network</title>
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f8f8f8;
            background-image: url('Image3.jpg'); 
            background-size: cover;
            background-repeat: no-repeat; 
        }
        .custom-panel {
            background-color: #f5f5f5;
            border-color: #ddd;
            border-radius: 10px;
        }
       
        .custom-panel-title {
            color: #333;
        }
        .custom-panel-body {
            padding: 20px;
        }
        .custom-form-label {
            color: #666;
        }
        .custom-btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .custom-btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default custom-panel" style="margin-top: 20px;">
                    <div class="panel-heading custom-panel-title">
                        <h3 class="panel-title">Información Personal</h3>
                    </div>
                    <div class="panel-body custom-panel-body">
                        <form runat="server" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="custom-form-label">Nombres</label>
                                <asp:TextBox runat="server" ID="FirstNameTextBox" CssClass="form-control" Text="Jonh" />
                            </div>
                            <div class="form-group">
                                <label class="custom-form-label">Apellidos</label>
                                <asp:TextBox runat="server" ID="LastNameTextBox" CssClass="form-control" Text="Hamstrong" />
                            </div>
                            <div class="form-group">
                                <label class="custom-form-label">Subir foto de perfil</label>
                                <asp:FileUpload runat="server" ID="ProfilePhotoUpload" CssClass="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="custom-form-label">Descripción sobre ti</label>
                                <asp:TextBox runat="server" ID="DescriptionTextBox" CssClass="form-control" Text="Hi, I’m Jonh, I’m 36 and I work as a Digital Designer..." />
                            </div>
                            <asp:Button runat="server" ID="SaveButton" Text="Guardar Cambios" CssClass="btn btn-primary custom-btn-primary" OnClick="SaveButton_Click"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>