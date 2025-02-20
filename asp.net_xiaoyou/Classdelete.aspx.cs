using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Classdelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    void bind()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "server=.;database=Xiaoyou;integrated security=true";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "select * from xiaoyou";

        conn.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "server=.;database=Xiaoyou;integrated security=true";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = string.Format("delete from xiaoyou where name='{0}'" ,TextBox1.Text);
        cmd.Connection = conn;
        conn.Open();
        if (cmd.ExecuteNonQuery() != 0)
        {
            Response.Write("<script>alert('删除成功！')</script>");
            TextBox1.Text = "";
            conn.Close();
        }
        else
        {
            Response.Write("<script>alert('删除失败，没有此人！')</script>");
        }
        bind();
    }
}