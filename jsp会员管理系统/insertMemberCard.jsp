<%@page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<title>会员卡系统</title>
</head>
<body>
<center>
      <form action="" method="post">
        <table align="center">
          <tr><td><h1>添加会员卡信息</h1></td></tr>          
          <tr><td align="right"><a href="viewMemberCard.jsp">返回</a></td></tr>
          <tr><td><hr/></td></tr>
          <tr><td>会员卡号:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="idcard"></tr><br>
          <tr><td>会员卡类型:&nbsp;&nbsp;<input type="text" name="cardtype"></td></tr>
          <tr><td>折扣级别:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="discount"></td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="重置"></td></tr>
        </table>
        <table border=1 width="560" celpadding="0" celspacing="0" >
        <tr align="center"><td>会员卡号</td><td>会员卡类型:</td><td>折扣级别:</td><td>余额</td></tr>
         <%
          request.setCharacterEncoding("gb2312");
          Class.forName("com.hxtt.sql.access.AccessDriver");
    	  Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	  Statement statement=conn.createStatement();	      
           ResultSet rst=null;
           String id=request.getParameter("idcard");
           String name=request.getParameter("cardtype");
           String sex=request.getParameter("discount");
           rst=statement.executeQuery("Select * from MemberCard");
           if((id==null||id=="")&&(name==null||name=="")&&(sex==null||sex=="")){ 
                   rst=statement.executeQuery("Select * from MemberCard");}
           else if(!(id==null||id=="")&&(name==null||name=="")&&(sex==null||sex=="")){
           String sql="insert into MemberCard(idcard,cardtype,discount) values(?,?,?)";
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setString(1,id);
           ps.setString(2,name);
           ps.setString(3,sex);
           ps.executeUpdate(); 
           }
           else{
             out.print("<script>alert('用户已注册，请重新输入！')</script>");
           }           
           try{          	  
       	        while(rst.next()) {
        	    out.println("<tr align=center>");   	
   				out.println("<td>"+rst.getString("idcard")+"</td>");
   	    		out.println("<td>"+rst.getString("cardtype")+"</td>");
   	    		out.println("<td>"+rst.getString("discount")+"</td>");
   	    	    out.println("<td>"+rst.getString("balance")+"</td>");
   				out.println("</tr>");
        }
        rst.close();
        statement.close();
        conn.close();
     }
     catch(Exception e){
        out.println(e.getMessage());
     }
     %>
       </table>
     </form> 
</body>
</html>