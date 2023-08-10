using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Comprobacion
{
    public class EncontrarUsuario
    {
        public bool VerificarCredenciales(string password, string correo)
        {
            string conexion = "Data Source=(localdb)\\ProjectModels;Initial Catalog=Registro_Sesion;Integrated Security=True;";
            string consulta = "SELECT COUNT(*) FROM Comprobacion WHERE Password=@Password AND Correo=@Correo";
            bool credencialesValidas = false;

            using (SqlConnection connection = new SqlConnection(conexion))
            {
                SqlCommand command = new SqlCommand(consulta, connection);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Correo", correo);
                connection.Open();

                int count = (int)command.ExecuteScalar();
                credencialesValidas = count > 0;
            }

            return credencialesValidas;
        }
    }
}
