using ProyectoKevin.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoKevin
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegistrarseBtn_Click(object sender, EventArgs e)
        {
            string password = Clave.Text;
            string correo = Correo.Text;

            Service1Client client = new Service1Client();
            client.RegistroDatos(password, correo);
        }
    }
}