<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="xgxt_login_xgxt_login_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">
	<div class="header_title">
		<span class="title_con">临沂大学校友查询系统</span>
	</div>
</div>

<div id="content">
	<center>
		<div class="con">
		<div class="con_title">
			<span class="con_title_sp">欢迎登录校友信息查询系统</span>
		</div>
		<div class="con_panel">
			<div class="con_input">
                <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
			</div>
			<div class="con_input">
                <asp:Label ID="Label2" runat="server" Text="密&nbsp;&nbsp;&nbsp;码："></asp:Label>
                <asp:TextBox ID="TextBox2"
                    runat="server" TextMode="Password"></asp:TextBox>
			    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" style="text-align: right" 
                    Font-Italic="False" Font-Size="Small" NavigateUrl="~/Register.aspx" >免费注册</asp:HyperLink>
			</div>
			<div class="con_select">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="管理员" 
                    CausesValidation="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2"
                    runat="server" Text="普通用户" />
			   
			</div>
            <asp:Button ID="Button1" runat="server" Text="登录" Width="63px" 
                onclick="Button1_Click"  CssClass="submit-btn"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="重置" Width="63px" 
                CssClass="submit-btn" onclick="Button2_Click"/>
		</div>
	</div>
	</center>
</div>

<div style="text-align:center;">
<p>Copyright&copy;贾俊祥.All Rights Reserved.联系方式:158669336099</p> 
</div>
    </div>
    </form>
</body>
</html>
