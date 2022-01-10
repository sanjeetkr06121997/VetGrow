using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegisition
{
    public partial class Re : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            con= new SqlConnection("Data Source=Desktop-Obrh71e;initial catalog=studentinfo;Trusted_connection=true");
            //com = new SqlCommand("sp_selectalluser", con);
            //com.commandtype = commandtype.storedprocedure;
            //datatable dtb = new datatable();
            //sqldataadapter dab = new sqldataadapter(com);
            //dab.fill(dtb);
            //int i = dtb.rows.count;
            //session["count"] = i;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                com = new SqlCommand("SP_UserRegisiter1", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Email", txtEmail.Text);
                DataTable d = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(d);
                if (d.Rows.Count == 0)
                {
                    com = new SqlCommand("SP_UserRegisiter", con);
                    con.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Name", txtName.Text);
                    com.Parameters.AddWithValue("@PhoneNo", txtMobile.Text);
                    com.Parameters.AddWithValue("@Email", txtEmail.Text);
                    com.Parameters.AddWithValue("@Password", txtPassword.Text);
                    DataTable dt = new DataTable();
                    com.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    con.Close();
                }
                else
                {
                    Errormas.Text = "Email already registered";
                }

            }
            catch(Exception ex)
            {
                Exeception.Text = ex.Message;
            }

        }
        }
}