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
     String name=request.getParameter("name");
    %>
<br />
<center>
  <h1>��Ա������</h1>
  <table width="560" celpadding="0" celspacing="0">
  <tr>
  <td align="right">
       <a href="remove.jsp">ע��</a>&nbsp;&nbsp;
    </td></tr>
    <tr><td><hr/></td></tr>
  </table>  
  <form  method="post"> 
    <tr><td>�������Ա���ţ�<input type="text" name="a"></td></tr>
  <input type="submit" value="��ѯ"></form> 
  <table>
  <td align="left">
      <a href="insertMemberCard.jsp">������Ա��</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteMemberCard.jsp">ɾ��</a>
  </td></table>
  <table  border="1" width="560" celpadding="0" celspacing="0">
   <tr align="center">
      <td>��Ա����</td><td>��Ա������</td><td>�ۿۼ���</td><td>���</td><td>����</td>
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
   
      out.println("<td><a href=modifyMemberCard2.jsp>��ֵ</a></td>");
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
     
      out.println("<td><a href=modifyMemberCard2.jsp>��ֵ</a></td>");
      out.println("</tr>");
      }     
     rs.close();
    }
     
   %>
    </table>
   
</body>
</html>