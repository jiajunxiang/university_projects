using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class xgxt_login_xgxt_login_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButton1.Checked=RadioButton2.Checked=false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "server=.;database=Xiaoyou;integrated security=true";


        SqlCommand cmd = new SqlCommand();
        String strcmd = "select count(*) from userinfo where  name = '" + TextBox1.Text + "'and password = '" + TextBox2.Text + "'";

        cmd.Connection = conn;

        conn.Open();
        SqlCommand myCommand = new SqlCommand(strcmd, conn);
        //检索出的用户数 
        int flag = (int)myCommand.ExecuteScalar();
        if (flag > 0 && TextBox1.Text == "admin")//用户存在          
        {
            Session["name"] = TextBox1.Text;
            Response.Write("<script>alert('登录成功！');</script>");
            Response.Redirect("Home2.aspx");
        }
        else if (flag > 0 && TextBox1.Text != "admin")
        {
            Session["name"] = TextBox1.Text;
            
            Response.Write("<script>alert('登录成功！');</script>");
            Response.Redirect("Home.aspx");
        }
        else
        { Response.Write("<script>alert('登录失败！');</script>"); }
        conn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}