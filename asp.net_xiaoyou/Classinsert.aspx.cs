using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Classinsert : System.Web.UI.Page
{
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("server=.;database=Xiaoyou;integrated security=true");
        string sql = string.Format("insert into xiaoyou(name,sex,class,grade,major,tel,address,job,qq) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", TextBox1.Text, TextBox2.Text, TextBox3.Text,
            TextBox4.Text,TextBox5.Text,TextBox6.Text,TextBox7.Text,TextBox8.Text,TextBox9.Text);
        SqlCommand cmd=new SqlCommand(sql,conn);
        conn.Open();
        if (cmd.ExecuteNonQuery() != 0)
        {
            Response.Write("<script>alert('添加成功！')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
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
        TextBox7.Text= "";
        TextBox8.Text= "";
        TextBox9.Text= "";
    }
}