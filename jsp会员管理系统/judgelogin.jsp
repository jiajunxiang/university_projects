<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>登录验证</title>
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
                  {  out.print("<script>alert('用户名或密码为空,请重新输入！')</script>");}
               else if(rs.next())
               {
                  if(rs.getString("qx").equals("1")){
                  session.setAttribute ("name", name);
                 // out.print("登录成功！" );
                 // out.print(session.getAttribute("name") + " 欢迎您！" );
                  response.sendRedirect("mainjm2.html");}
                  else{
                   session.setAttribute ("name", name);
                 // out.print("登录成功！" );
                 // out.print(session.getAttribute("name") + " 欢迎您！" );
                  response.sendRedirect("viewMemberCard.jsp");
                  }
               }
              else{
              out.print ("<script>alert('用户名或密码错误，请重新输入！！')</script>" );
             
             }   
    	   }
    	   catch(Exception e){
    		   out.println("建立数据库发生异常！"+e);
    	   }      
     %>
</body>
</html>