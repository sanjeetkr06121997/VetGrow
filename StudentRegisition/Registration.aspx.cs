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
    public partial class Regisition : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;


        protected void Page_Load(object sender, EventArgs e)
        {
            int b = Convert.ToInt32(Session["count"]);
            if(b==0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

            }

        }
        
            protected void txtSave_Click(object sender, EventArgs e)
            {

                con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
                com = new SqlCommand("SP_UserRegisition1", con);
                con.Open();
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Name", txtName.Text);
                com.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
                com.Parameters.AddWithValue("@MotherName", txtMotherName.Text);
                com.Parameters.AddWithValue("@Email", txtEmail.Text);
                com.Parameters.AddWithValue("@Password", txtPassord.Text);
                com.Parameters.AddWithValue("@MobileNo", txtPhoneNo.Text);
                com.Parameters.AddWithValue("@Address", txtAddress.Text);
                com.Parameters.AddWithValue("@Course", txtQlalification.SelectedItem.Text);
                com.Parameters.AddWithValue("@DOB", txtDOB.Text);
                com.Parameters.AddWithValue("@Gender", radbtn.SelectedItem.Text);
                com.Parameters.AddWithValue("@Country", txtCuntry.SelectedItem.Text);
                com.Parameters.AddWithValue("@State", txtState.SelectedItem.Text);
                com.Parameters.AddWithValue("@JoinDate", txtJoinDate.Text);
                com.Parameters.AddWithValue("@Fee", txtFee.Text);
                com.ExecuteNonQuery();
                con.Close();


            }
        
    }
}