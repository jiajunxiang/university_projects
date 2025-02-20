<%@ Page Title="" Language="C#" MasterPageFile="~/xiaoyou.master" AutoEventWireup="true" CodeFile="Usermanger.aspx.cs" Inherits="Usermanger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="name" 
        DataSourceID="SqlDataSource1" Width="496px" Height="119px">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="用户名" ReadOnly="True" 
                SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="密码" 
                SortExpression="password" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:XiaoyouConnectionString %>" 
        DeleteCommand="DELETE FROM [userinfo] WHERE [name] = @original_name AND [password] = @original_password" 
        InsertCommand="INSERT INTO [userinfo] ([name], [password]) VALUES (@name, @password)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [name], [password] FROM [userinfo]" 
        UpdateCommand="UPDATE [userinfo] SET [password] = @password WHERE [name] = @original_name AND [password] = @original_password">
        <DeleteParameters>
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

