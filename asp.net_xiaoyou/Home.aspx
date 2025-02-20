<%@ Page Title="" Language="C#" MasterPageFile="~/xiaoyou.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;&nbsp;&nbsp;
    输入查找的内容：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    选择查找的方式：<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>姓名</asp:ListItem>
        <asp:ListItem>年级</asp:ListItem>
        <asp:ListItem>专业</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
    <br />
    <br />
    <br />
</asp:Content>  
    