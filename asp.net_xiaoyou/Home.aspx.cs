using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["aa"] = TextBox1.Text;
        if (DropDownList1.SelectedValue == "姓名")
            Response.Redirect("Selectname.aspx");      
        if (DropDownList1.SelectedValue == "年级")
            Response.Redirect("Selectgrade.aspx");
        if (DropDownList1.SelectedValue == "专业")
            Response.Redirect("Selectmajor.aspx");
       
    }
}