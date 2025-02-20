<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>会员信息管理</title>                   
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
  <h1>会员信息管理</h1>
  <table>
  <tr>
  <td align="right" width="560" celpadding="0" celspacing="0">
      <a href="viewMember.jsp">返回</a>
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  选择删除方式：<select>
  <option>按照会员号删除</option>
  <option>按照会员姓名删除</option>
  </select>
  <input type="text" name="a">
  <input type="submit" value="删除"></form> 
  
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>会员号</td><td>会员姓名</td><td>性别</td><td>联系方式</td><td>地址</td>
   </tr>
    <%   String a=request.getParameter("a");
     if(a==null||a==""){
    String sql="Select * from Member";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("id")+"</td>");
      out.println("<td>"+rs.getString("name")+"</td>");
      out.println("<td>"+rs.getString("sex")+"</td>");
      out.println("<td>"+rs.getString("tel")+"</td>");
      out.println("<td>"+rs.getString("address")+"</td>");
      out.println("</tr>");
      }     
    }
    else if(a.matches("[0-9]*")){  //匹配是否为数字
    statement.executeUpdate("delete from Member where id="+a);
     String sql="Select * from Member";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("id")+"</td>");
      out.println("<td>"+rs.getString("name")+"</td>");
      out.println("<td>"+rs.getString("sex")+"</td>");
      out.println("<td>"+rs.getString("tel")+"</td>");
      out.println("<td>"+rs.getString("address")+"</td>");
      out.println("</tr>");
      }     
    }
     else{
     statement.executeUpdate("delete from Member where name='"+a+"'");
      String sql="Select * from Member";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("id")+"</td>");
      out.println("<td>"+rs.getString("name")+"</td>");
      out.println("<td>"+rs.getString("sex")+"</td>");
      out.println("<td>"+rs.getString("tel")+"</td>");
      out.println("<td>"+rs.getString("address")+"</td>");
      out.println("</tr>");
      }     
    }
     
   %>
    </table>
   
</body>
</html>