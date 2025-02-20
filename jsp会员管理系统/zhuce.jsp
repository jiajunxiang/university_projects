<%@ page language="java" contentType="text/html;charset=gb2312" import="java.sql.*,java.io.*"%>
<html>
<head>
<title>注册页面</title>
</head>
<body>
      <%
      	       request.setCharacterEncoding("gb2312");
               String name=request.getParameter("name");
               String psd=request.getParameter("psd");
               Class.forName("com.hxtt.sql.access.AccessDriver");
    	       Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	       Statement statement=conn.createStatement();
               if(name!=null&&psd!=null)
               {  
                 try{                 
                  String sql="insert into user(name,password,qx) values(?,?,?)";
                  PreparedStatement ps=conn.prepareStatement(sql);
                   ps.setString(1,name);
                  ps.setString(2,psd);
                  ps.setString(3,"0");
                  ps.executeUpdate();  
                  out.print("<script>alert('注册成功！')</script>"); 
                  response.sendRedirect("login.html"); }
                  catch(Exception e)
                  {
                  out.print("<script>alert('用户已注册,请重新输入！')</script>"); 
                  } 
               }
           
              
      %>
     <div style="position:absolute; width:100%; height:100%; z-index:-1; left:0; top:0;">      
    <img src="images/a.gif" height="100%" width="100%" style="left:0; top:0;">      
     </div> <br><br>
      <center>
      <h1>注册普通登录用户</h1>
      <form   method="post">
       <table width="460" cellpading="0" cellspacing="0">
          <tr align="center">
            <td>用户名：<input type=text name=name></td>
          </tr>
          <tr align="center">
            <td>密码：&nbsp;&nbsp;<input type="password" name=psd></td>
          </tr>
          <tr align="center">
            <td><br><input type="submit" value="提交" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="重置" ></td>
           
          </tr>
         </table>
     </form>
</body>
</html>