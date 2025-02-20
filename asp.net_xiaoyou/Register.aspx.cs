using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "server=.;database=xiaoyou;integrated security=true";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = string.Format("insert into userinfo(name,password,qx,qq,tel,email) values('{0}','{1}',0,'{2}','{3}','{4}')", TextBox1.Text, TextBox2.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
            cmd.Connection = conn;

            conn.Open();
            if (cmd.ExecuteNonQuery() != 0)
            {
                Response.Write("<script>alert('成功注册！');</script>");

            }
            conn.Close();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text= "";
        TextBox2.Text= "";
        TextBox3.Text= "";
        TextBox4.Text= "";
        TextBox5.Text= "";
        TextBox6.Text= "";
    }
}