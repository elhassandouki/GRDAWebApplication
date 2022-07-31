using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRDAWebApplication
{
    public partial class AjouterProduit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GRDAConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into Produit values('" + txtDésig.Text + "','" + txtUnité.Text + "'," + txtPU.Text + "," + DDLcodeF.Text + ")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("~/Article.aspx");
        }
    }
}