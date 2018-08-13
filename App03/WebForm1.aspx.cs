using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App03
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                return;
            }
            string[] vlibros = { "Programming SQL Server 2005", "SQL Server 2005 T-SQL Programming", "Transact SQL Server 2000", "Visual Basic 2005" };
            DDLibros.DataSource = vlibros;
            DDLibros.DataBind();

        }

        public double Precio(int x)
        {
            double[] precios = {1000, 2000, 2500, 3000};
            return precios[x];
        }

        protected void DDLibros_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblPrecio.Text = Precio(Convert.ToInt32(DDLibros.SelectedIndex)).ToString();
            string xNom = DDLibros.SelectedItem.Text + ".gif";
            string xRuta = "~/Libros/" + xNom;
            ImgLibro.ImageUrl = xRuta;
            ImgLibro.AlternateText = DDLibros.SelectedItem.Text;
        }
    }
}