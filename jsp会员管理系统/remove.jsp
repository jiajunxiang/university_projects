<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>注销</title>
</head>
<body>
    <% 
      if(session.getAttribute("name")==null)
          out.print("");
      else
      {
         out.print("<script>alert('"+session.getAttribute("name")+"你好！用户已经被注销!')</script><br>");
        
         session.removeAttribute("name");    
       }
     %><br>
     <p ><h2 align=center><a href="login.html">重新登录</a></h2></p>
</body>
</html>
