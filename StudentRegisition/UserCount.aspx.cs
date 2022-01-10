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
    public partial class Total_User_Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Session["count"]);
            if (a == 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {


                SqlConnection con;
                SqlCommand com;
                con = new SqlConnection("data source=DESKTOP-OBRH71E;Initial catalog=StudentInfo;Trusted_connection=true");
                com = new SqlCommand("SP_SelectAllUser", con);
                com.CommandType = CommandType.StoredProcedure;
                DataTable dtb = new DataTable();
                SqlDataAdapter dab = new SqlDataAdapter(com);
                dab.Fill(dtb);
                int i = dtb.Rows.Count;
                Session["count"] = i;
                //com = new SqlCommand("sp_userregisition4",con);
                //con.Open();
                //// com.commandtype = commandtype.storedprocedure;
                //DataTable dt = new DataTable();
                //SqlDataAdapter da = new SqlDataAdapter(com);
                //da.Fill(dt);
                //int b= dt.Rows.Count;
                int b = Convert.ToInt32(Session["countstudent"]);
                Session["count1"] = b;
            }
        }
    }

  
    
}