using ProyectoKevin.ServiceReference1;
using ProyectoKevin.ServiceReference2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoKevin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void IniciarSesionBtn_Click(object sender, EventArgs e)
        {
            string correo = Email.Text;
            string password = Contrasenia.Text;

            using (Service2Client servicio = new Service2Client())
            {
                bool credencialesValidas = servicio.IniciarSesionDesdeServicio(password, correo);

                if (credencialesValidas)
                {
                    // Las credenciales son válidas, redirigir a la página de inicio o realizar alguna acción
                    HttpCookie cookie = new HttpCookie("Usuario");
                    cookie.Values["Correo"] = correo;
                    cookie.Expires = DateTime.Now.AddDays(1); // La cookie expirará en 1 día
                    Response.Cookies.Add(cookie);
                    Response.Redirect("Pagina.aspx");
                }
                else
                {
                    // Credenciales inválidas, mostrar un mensaje de error
                    MensajeLiteral.Text = "Credenciales inválidas. Por favor, inténtalo de nuevo.";
                }
            }
        }
    }
}