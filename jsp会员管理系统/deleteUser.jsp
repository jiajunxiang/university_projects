<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>�û�����</title>                   
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
  <h1>�û�����</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
      <a href="mainjm2.html">����</a>
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  ��������Ҫɾ������ͨ��¼�˻���
  <input type="text" name="a">
  <input type="submit" value="ɾ��"></form> 
  
  <table width="480" border="1" bgcolor="#33ff33">
       <tr align="center" bgcolor="#00cccc" bordercolor="#00FF00">
      <td>�û���</td><td>����</td>
   </tr>
    <%   
    String a=request.getParameter("a");
     if(a==null||a==""){
    String sql="select * from user where qx=0";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("name")+"</td>");
      out.println("<td>"+rs.getString("password")+"</td>");
      out.println("</tr>");
      }     
    }
    else{  
    statement.executeUpdate("delete from user where name="+a);
     String sql="Select * from user";
    rs=statement.executeQuery(sql);
     while(rs.next())
      {
      out.println("<tr align=center>");
      out.println("<td>"+rs.getString("name")+"</td>");
      out.println("<td>"+rs.getString("password")+"</td>");
      out.println("</tr>");
      }     
    }
   %>
    </table>
   
</body>
</html>