<%@ page language="java" contentType="text/html;charset=gb2312" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>�û�����</title>
</head>
<body>
      <%
               Class.forName("com.hxtt.sql.access.AccessDriver");
    	       Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	       Statement statement=conn.createStatement();	      
               ResultSet rs=null;
               String sql="Select * from user";
               rs=statement.executeQuery(sql);
      %>
   <center> 
    <br/>
    <h1>�û�����</h1>
    <table width="460" celpadding="0" celspacing="0">
    <tr><td align="right">
      <a href="mainjm2.html">����</a>&nbsp;&nbsp; <a href="remove.jsp">ע��</a>&nbsp;&nbsp;
    </td></tr>
    <tr><td><hr/></td></tr>
    </table>
     <br/>
     <table width="480" border="1" bgcolor="#33ff33">
       <tr align="center" bgcolor="#00cccc" bordercolor="#00FF00">
         <td>�û���</td><td>��&nbsp;��</td>
       </tr>
     <% 
           while(rs.next()){
           out.println("<tr align=center>");	
		   out.println("<td>"+rs.getString("name")+"</td>");
		   out.println("<td>"+rs.getString("password")+"</td>");
		   out.println("</tr>");
           }
        
     rs.close();
     statement.close();
     conn.close();
    
      %>
     </table>      
</body>
</html>