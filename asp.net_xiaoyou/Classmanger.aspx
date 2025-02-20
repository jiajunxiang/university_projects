<%@ Page Title="" Language="C#" MasterPageFile="~/xiaoyou.master" AutoEventWireup="true" CodeFile="Classmanger.aspx.cs" Inherits="Classmanger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
   <table   style="height: 153px; width: 594px" align="center" >
   <tr align=center>
       <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Classmodify.aspx" 
               Font-Bold="True" Font-Size="Medium" Width="200px">更新校友信息</asp:HyperLink></td>
    </tr>
   <tr align=center>
     <td> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Classinsert.aspx"
     Font-Bold="True" Font-Size="Medium" Width="200px">添加校友信息</asp:HyperLink></td>
   </tr>
   <tr align=center>
      <td> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Classdelete.aspx"
      Font-Bold="True" Font-Size="Medium" Width="200px">删除校友信息</asp:HyperLink></td>
   </tr>
  
   
    </table></center>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
</asp:Content>


