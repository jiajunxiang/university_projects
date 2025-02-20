<%@ Page Title="" Language="C#" MasterPageFile="~/xiaoyou.master" AutoEventWireup="true" CodeFile="Classinsert.aspx.cs" Inherits="Classinsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="性别"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="班级"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="年级"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="专业"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="手机"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="地址"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Text="工作"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="QQ号"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
&nbsp;
    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
    <br />
</asp:Content>

