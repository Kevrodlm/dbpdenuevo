using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;

using ProyectoKevin.ServiceReference1;
using ProyectoKevin.ServiceReference2;

namespace ProyectoKevin
{
    public partial class Pagina : System.Web.UI.Page
    {
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserProfileImage { get; set; }
        public string UserDescription { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener la dirección de correo electrónico del usuario desde la cookie
                string userEmail = Request.Cookies["Usuario"]["Correo"];

                // Cadena de conexión a la base de datos
                string connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=Registro_Sesion;Integrated Security=True;";

                // Consulta SQL para obtener los datos del usuario desde la tabla Comprobacion
                string query = "SELECT FirstName, LastName, ProfilePhoto, Description FROM UserProfiles WHERE UserID IN (SELECT UserID FROM Comprobacion WHERE Correo = @Correo)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Agregar parámetro para la dirección de correo electrónico
                        command.Parameters.AddWithValue("@Correo", userEmail);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Asignar los valores recuperados a las variables correspondientes
                                string userFirstNameFromDatabase = reader["FirstName"].ToString();
                                string userLastNameFromDatabase = reader["LastName"].ToString();
                                string userProfileImageFromDatabase = reader["ProfilePhoto"].ToString();
                                string userDescriptionFromDatabase = reader["Description"].ToString();

                                // Asignar los valores a las propiedades
                                UserFirstName = userFirstNameFromDatabase;
                                UserLastName = userLastNameFromDatabase;
                                UserProfileImage = userProfileImageFromDatabase;
                                UserDescription = userDescriptionFromDatabase;

                                // Llamar al método DataBind para enlazar los datos a los elementos en el markup
                                DataBind();
                            }
                        }
                    }
                }
            }
        }


        /*protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener la dirección de correo electrónico del usuario desde la cookie
                string userEmail = Request.Cookies["Usuario"]["Correo"];

                // Variables para almacenar los datos del usuario
                string userFirstName = string.Empty;
                string userLastName = string.Empty;
                string userProfileImage = string.Empty;
                string userDescription = string.Empty;

                // Cadena de conexión a la base de datos
                string connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=Registro_Sesion;Integrated Security=True;";

                // Consulta SQL para obtener los datos del usuario
                string query = "SELECT FirstName, LastName, ProfilePhotoPath, Description FROM UserProfiles WHERE Correo = @Correo";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Agregar parámetro para la dirección de correo electrónico
                        command.Parameters.AddWithValue("@Correo", userEmail);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Asignar los valores recuperados a las variables correspondientes
                                userFirstName = reader["FirstName"].ToString();
                                userLastName = reader["LastName"].ToString();
                                userProfileImage = reader["ProfilePhotoPath"].ToString();
                                userDescription = reader["Description"].ToString();
                            }
                        }
                    }
                }

                // Actualizar elementos en la página con los datos del usuario
                profileName.InnerText = $"{userFirstName} {userLastName}";
                profileImage.Src = userProfileImage;
                profileDescription.InnerText = userDescription;
            }
        }*/
    }
}