<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Home2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .style1
        {
            font-family: 华文楷体;
            font-size: x-large;
            text-align: center;
        }
        .ffffff
        {
            border-color:Blue;
          
        }
            
         </style>
</head>
<body>
    <form id="form1" runat="server">
     <h1 class="style1">
      校友信息查询系统</h1>
  <table width="970" border="0" align="center" cellpadding="6" cellspacing="0" bgcolor="FFF7EC" class="kuang_1011">
  <tbody>
    <tr>
      <td height="25" colspan="3" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="37" align="center" background="images/th_bg.gif">
          <a href="Usermanger.aspx"  target=_self class="ffffff" >用户管理</a> <span class="ffffff">|</span> 
          <a href="Classmanger.aspx" target="_blank" class="ffffff">校友管理</a> <span class="ffffff">|</span> 
        
           <a href="" target="_blank" class="ffffff">联系我们</a></td>
        </tr>
      </table>
      </td>
    </tr>
    <br />
  </tbody>
  
    <table align="center">
     <tr align="center">
         <td>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            Height="311px" Width="846px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" />
            <asp:BoundField DataField="class" HeaderText="班级" SortExpression="class" />
            <asp:BoundField DataField="grade" HeaderText="年级" SortExpression="grade" />
            <asp:BoundField DataField="major" HeaderText="专业" SortExpression="major" />
            <asp:BoundField DataField="tel" HeaderText="联系方式" SortExpression="tel" />
            <asp:BoundField DataField="address" HeaderText="地址" 
                SortExpression="address" />
            <asp:BoundField DataField="job" HeaderText="目前的工作" SortExpression="job" />
            <asp:BoundField DataField="qq" HeaderText="QQ" SortExpression="qq" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:XiaoyouConnectionString2 %>" 
            SelectCommand="SELECT * FROM [xiaoyou]"></asp:SqlDataSource>

            </tr>
    </table>
</form>
</body>
</html>
