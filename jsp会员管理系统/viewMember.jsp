<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>��Ա��Ϣ����</title>                   
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
  <h1>��Ա��Ϣ����</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
      <a href="mainjm2.html">����</a>&nbsp;&nbsp; <a href="remove.jsp">ע��</a>&nbsp;&nbsp;
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post">
  ѡ���ѯ��ʽ��<select>
  <option>���ջ�Ա�Ų�ѯ</option>
  <option>���ջ�Ա������ѯ</option>
  </select>
  <input type="text" name="a">
  <input type="submit" value="��ѯ"></form> 
  <table>
  <td align="left">
      <a href="insertMember.jsp">���</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="modifyMember.jsp">����</a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteMember.jsp">ɾ��</a>
  </td></table>
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>��Ա��</td><td>��Ա����</td><td>�Ա�</td><td>��ϵ��ʽ</td><td>��ַ</td>
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
    else if(a.matches("[0-9]*")){  //ƥ���Ƿ�Ϊ����
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