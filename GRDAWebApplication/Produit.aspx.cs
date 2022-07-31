using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GRDAWebApplication
{
    public partial class Produit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChargerProduits();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Modifier")
            {
                int rowIndex = ((GridViewRow)((Button)e.CommandSource).NamingContainer).RowIndex;
                GridView1.EditIndex = rowIndex;
                ChargerProduits();
            }
            else if (e.CommandName == "Supprimer")
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GRDAConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Delete From Produit Where Ref = " + e.CommandArgument.ToString(), con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                ChargerProduits();
            }
            else if (e.CommandName == "Enregistrer")
            {

                int rowIndex = ((GridViewRow)((Button)e.CommandSource).NamingContainer).RowIndex;

                string query = string.Format("Update Produit Set Designation = '{0}', Unite = '{1}', Prix_Unitaire = {2}, Code_Famille = {3} Where Ref = {4}",
                    ((TextBox)GridView1.Rows[rowIndex].FindControl("txtDesignation")).Text,
                    ((TextBox)GridView1.Rows[rowIndex].FindControl("txtUnite")).Text,
                    ((TextBox)GridView1.Rows[rowIndex].FindControl("txtPrixUnitaire")).Text.Replace(",","."),
                    ((DropDownList)GridView1.Rows[rowIndex].FindControl("ddlCodeFamille")).SelectedValue,
                    e.CommandArgument.ToString());
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GRDAConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                GridView1.EditIndex = -1;
                ChargerProduits();
            }
            else if (e.CommandName == "Annuler")
            {
                GridView1.EditIndex = -1;
                ChargerProduits();
            }
        }

        private void ChargerProduits()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GRDAConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("Select * From Produit", con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
            }
        }
    }
}