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
     String name=request.getParameter("name");
    %>
<br />
<center>
  <h1>会员卡管理</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
       <a href="remove.jsp">注销</a>&nbsp;&nbsp;
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post"> 
    <tr><td>请输入会员卡号：<input type="text" name="a"></td></tr>
  <input type="submit" value="查询"></form> 
  <table>
  <td align="left">
      <a href="insertMemberCard.jsp">新增会员卡</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteMemberCard.jsp">删除</a>
  </td></table>
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>会员卡号</td><td>会员卡类型</td><td>折扣级别</td><td>余额</td><td>操作</td>
   </tr>
    <%   
    String a=request.getParameter("a");
     if(a==null||a==""){
    String sql="Select * from MemberCard";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("idcard")+"</td>");
      out.println("<td>"+rs.getString("cardtype")+"</td>");
      out.println("<td>"+rs.getString("discount")+"</td>");
      out.println("<td>"+rs.getString("balance")+"</td>");
   
      out.println("<td><a href=modifyMemberCard2.jsp>充值</a></td>");
      out.println("</tr>");
      }     
    }
     else{
    rs=statement.executeQuery("select * from MemberCard where idcard="+a);
     while(rs.next())
      {
     out.println("<tr align=center>");
      out.println("<td>"+rs.getString("idcard")+"</td>");
      out.println("<td>"+rs.getString("cardtype")+"</td>");
      out.println("<td>"+rs.getString("discount")+"</td>");
      out.println("<td>"+rs.getString("balance")+"</td>");
     
      out.println("<td><a href=modifyMemberCard2.jsp>充值</a></td>");
      out.println("</tr>");
      }     
     rs.close();
    }
     
   %>
    </table>
   
</body>
</html>