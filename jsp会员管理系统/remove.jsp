<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
<title>ע��</title>
</head>
<body>
    <% 
      if(session.getAttribute("name")==null)
          out.print("");
      else
      {
         out.print("<script>alert('"+session.getAttribute("name")+"��ã��û��Ѿ���ע��!')</script><br>");
        
         session.removeAttribute("name");    
       }
     %><br>
     <p ><h2 align=center><a href="login.html">���µ�¼</a></h2></p>
</body>
</html>
