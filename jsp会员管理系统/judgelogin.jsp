<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>��¼��֤</title>
</head>
<body>
     <%
       String name=request.getParameter("name");
       String psd=request.getParameter("psd");
    	try{
    	       Class.forName("com.hxtt.sql.access.AccessDriver");
    	       Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");		
    	       Statement statement=conn.createStatement();
               ResultSet rs=null;
               String sql="Select * from user where name='"+name+"'and password='"+psd+"'";
               rs=statement.executeQuery(sql);
                if(name.equals("")||psd.equals(""))
                  {  out.print("<script>alert('�û���������Ϊ��,���������룡')</script>");}
               else if(rs.next())
               {
                  if(rs.getString("qx").equals("1")){
                  session.setAttribute ("name", name);
                 // out.print("��¼�ɹ���" );
                 // out.print(session.getAttribute("name") + " ��ӭ����" );
                  response.sendRedirect("mainjm2.html");}
                  else{
                   session.setAttribute ("name", name);
                 // out.print("��¼�ɹ���" );
                 // out.print(session.getAttribute("name") + " ��ӭ����" );
                  response.sendRedirect("viewMemberCard.jsp");
                  }
               }
              else{
              out.print ("<script>alert('�û���������������������룡��')</script>" );
             
             }   
    	   }
    	   catch(Exception e){
    		   out.println("�������ݿⷢ���쳣��"+e);
    	   }      
     %>
</body>
</html>