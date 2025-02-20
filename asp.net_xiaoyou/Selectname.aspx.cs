using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Selectxiaoyou1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "server=.;database=xiaoyou;integrated security=true";
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = string.Format("select * from xiaoyou where name='{0}'", Session["aa"]);
        cmd.Connection = conn;
        conn.Open();
       
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        conn.Close();
    }
   
}