<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>��Ա������</title>                   
</head>
<body>
     <% 
     request.setCharacterEncoding("gb2312");
     Class.forName("com.hxtt.sql.access.AccessDriver");
     Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    Statement statement=conn.createStatement();	      
    ResultSet rs=null;   
    %>
<br />
<center>
  <h1>��Ա������</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
      <a href="viewMemberCard.jsp">����</a>
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  ��������Ҫɾ���Ļ�Ա���ţ�
  <input type="text" name="a">
  <input type="submit" value="ɾ��"></form> 
  
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>��Ա����</td><td>��Ա������</td><td>�ۿۼ���</td><td>���</td>
   </tr>
    <%   
    String a=request.getParameter("a");
     if(a==null||a==""){
    String sql="select * from MemberCard";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("idcard")+"</td>");
      out.println("<td>"+rs.getString("cardtype")+"</td>");
      out.println("<td>"+rs.getString("discount")+"</td>");
      out.println("<td>"+rs.getString("balance")+"</td>");
      out.println("</tr>");
      }     
    }
    else{  
    statement.executeUpdate("delete from MemberCard where idcard='"+a+"'");
     String sql="Select * from MemberCard";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("idcard")+"</td>");
      out.println("<td>"+rs.getString("cardtype")+"</td>");
      out.println("<td>"+rs.getString("discount")+"</td>");
      out.println("<td>"+rs.getString("balance")+"</td>");
      out.println("</tr>");
      }     
    }
   %>
    </table>
   
</body>
</html>