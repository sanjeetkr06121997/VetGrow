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
    public partial class DataDisplay : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Session["count"]);
            if (a == 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {

                    DataShow();
                }
            }
        }
        public void DataShow()
            {
            int a = Convert.ToInt32(Session["count"]);
            if (a == 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
                com = new SqlCommand("SP_UserRegisition4", con);
                con.Open();
                com.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                int i = Convert.ToInt32(dt.Rows.Count);
                Session["countStudent"] = i;
                grdView.DataSource = dt;
                grdView.DataBind();

                con.Close();
            }
        }

        protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           if(e.CommandName== "DELETE")
             {
                string ID = e.CommandArgument.ToString();
                con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
                con.Open();
                com = new SqlCommand("SP_DeletUser", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ID",Convert.ToInt32(ID));
                com.ExecuteNonQuery();
                DataShow();
            }
            else if(e.CommandName=="UPDATE")
            {
                string ID = e.CommandArgument.ToString();
                Session["id"] = ID;
                Response.Redirect("UPDATE.aspx");
            }
        }

        protected void grdView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
} 