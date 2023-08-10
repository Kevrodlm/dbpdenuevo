using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoKevin.ServiceReference1;
using ProyectoKevin.ServiceReference2;

namespace ProyectoKevin
{
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Obtener los datos ingresados por el usuario
            string firstName = FirstNameTextBox.Text;
            string lastName = LastNameTextBox.Text;
            string description = DescriptionTextBox.Text;

            // Procesar la foto de perfil si se cargó
            string profilePhotoPath = string.Empty;
            if (ProfilePhotoUpload.HasFile)
            {
                string fileName = ProfilePhotoUpload.FileName;
                profilePhotoPath = "~/PerfilImages/" + fileName;
                ProfilePhotoUpload.SaveAs(Server.MapPath(profilePhotoPath));
            }

            // Cadena de conexión a la base de datos
            string connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=Registro_Sesion;Integrated Security=True;";

            // Crear la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Query SQL para insertar los datos en la tabla
                string query = "INSERT INTO UserProfiles (FirstName, LastName, ProfilePhoto, Description) VALUES (@FirstName, @LastName, @ProfilePhoto, @Description)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Agregar parámetros
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@ProfilePhoto", profilePhotoPath);
                    command.Parameters.AddWithValue("@Description", description);

                    // Ejecutar la consulta
                    command.ExecuteNonQuery();
                }
            }

            // Después de guardar los datos, podrías redirigir al usuario a la página principal
            Response.Redirect("Pagina.aspx");
        }

    }
}