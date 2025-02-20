using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Classmodify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       SqlConnection conn = new SqlConnection("server=.;database=Xiaoyou;integrated security=true");
        string sql = string.Format("update xiaoyou set tel='{0}',address='{1}',job='{2}',qq='{3}' where name='{4}'", TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox1.Text);
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        if (cmd.ExecuteNonQuery() != 0)
        {
            Response.Write("<script>alert('更新成功！')</script>");
            bind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            conn.Close();
        }
       
    }
    public void bind()
    {
        SqlConnection conn = new SqlConnection("server=.;database=Xiaoyou;integrated security=true");
        string sql = "select * from xiaoyou";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        conn.Close();

    
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {    
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
    }
   
}