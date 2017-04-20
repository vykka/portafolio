using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;
using CapaDatos.RepositoryUsuarios;
using CapaLogica.Usuario;


namespace CapaVisualizacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rut = this.rut.Text.Replace("-", "");
            string contraseña = this.pass.Text;
            UsuariosRepository lista = new UsuariosRepository();
            Encripta en = new Encripta();

            string contraEncriptada = en.Encriptar(contraseña); 
            if (lista.listaUsuario(rut, contraseña) == false)
            {
                Label1.Text = "no";
            }
            else{
                if (lista.privilegio(rut, contraseña) == "administrador")
                {
                    Session.Add("rut_administrador",rut);
                    Response.Redirect("homeAdministrador.aspx");
                }
                else if(lista.privilegio(rut, contraseña) == "cajero"){
                    Label1.Text = "Cajero";
                }
                else{
                  Label1.Text = "otro privilegio";  
                }
            }
        }
    }
}
