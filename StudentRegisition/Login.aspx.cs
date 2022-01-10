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
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            SqlCommand com;
            con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");


           // com = new SqlCommand("select Email, Password from Tbl_UserRegisiter where Email='"+ txtEmail.Text + "' and Password='" + txtPassword.Text + "' ",con  );

            com = new SqlCommand("SP_Login", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Connection = con;
            con.Open();
            com.Parameters.AddWithValue("@Email", txtEmail.Text);
            com.Parameters.AddWithValue("@Paasword", txtPassword.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            // int i = dt.Columns.Count;
            // Session["count"] = i;
            //Session["Email"] = txtEmail.Text;
            da.Fill(dt);
            int a = Convert.ToInt32(dt.Rows.Count);
            Session["count"] = a;
           if(a!=0)
            {
                Response.Redirect("Registration.aspx");

            }
            else
            {

                ErrorMas.Text = "Either Email or password is wrong";
            }
        }
    }
}