using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Comprobacion
{
    public class RegistrarUsuario
    {
        public void Registro(string password, string correo)
        {
            string conexion = "Data Source=(localdb)\\ProjectModels;Initial Catalog=Registro_Sesion;Integrated Security=True;";
            string consulta = "INSERT INTO dbo.Comprobacion (Password, Correo)" + "VALUES (@Password, @Correo)";
            using (SqlConnection connection = new SqlConnection(conexion))
            {
                SqlCommand command = new SqlCommand(consulta, connection);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Correo", correo);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}
