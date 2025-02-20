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
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
      <a href="mainjm2.html">返回</a>&nbsp;&nbsp; <a href="remove.jsp">注销</a>&nbsp;&nbsp;
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  选择查询方式：<select>
  <option>按照会员号查询</option>
  <option>按照会员姓名查询</option>
  </select>
  <input type="text" name="a">
  <input type="submit" value="查询"></form> 
  <table>
  <td align="left">
      <a href="insertMember.jsp">添加</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="modifyMember.jsp">更新</a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteMember.jsp">删除</a>
  </td></table>
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
    rs=statement.executeQuery("select * from Member where id="+a);
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
     rs.close();
    }
     else{
    rs=statement.executeQuery("select * from Member where name='"+a+"'");
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
     rs.close();
    }
     
   %>
    </table>
   
</body>
</html>