<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>会员卡管理</title>                   
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
  <h1>会员卡管理</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
      <a href="viewMemberCard.jsp">返回</a>
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  请输入需要删除的会员卡号：
  <input type="text" name="a">
  <input type="submit" value="删除"></form> 
  
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>会员卡号</td><td>会员卡类型</td><td>折扣级别</td><td>余额</td>
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