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
    public partial class Forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            SqlCommand com;
            con = new SqlConnection("data source=desktop-obrh71e;initial catalog=studentinfo;trusted_connection=true");
            com = new SqlCommand("SP_ForgotPassword", con);
            con.Open();
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Password", txtnewPassword.Text);
            string s = Session["Email"].ToString();
            com.Parameters.AddWithValue("@Email",s );
            com.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con.Close();

        }
    }
}