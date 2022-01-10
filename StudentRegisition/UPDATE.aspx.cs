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
    public partial class UPDATE : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int a = Convert.ToInt32(Session["id"]);
                Update(a);
            }
        }
        public void Update(int a)
        {
           
            con = new SqlConnection("Data Source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
            com = new SqlCommand("SP_SelectById", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", a);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtFatherName.Text = dt.Rows[0]["FatherName"].ToString();
           txtMotherName.Text = dt.Rows[0]["MotherName"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
            txtphoneno.Text= dt.Rows[0]["MobileNo"].ToString();

        }
        protected void txtupdate_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Session["id"]);

            con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
            com = new SqlCommand("SP_UpdateById", con);
            com.CommandType = CommandType.StoredProcedure;
            con.Open();
            com.Parameters.AddWithValue("@Id", a);
            com.Parameters.AddWithValue("@Name", txtName.Text);
            com.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
            com.Parameters.AddWithValue("@MotherName", txtMotherName.Text);
            com.Parameters.AddWithValue("@Address", txtAddress.Text);
            com.Parameters.AddWithValue("@PhoneNo", txtphoneno.Text);
            com.ExecuteNonQuery();
            Response.Redirect("DataDisplay.aspx");

        }

    }
}