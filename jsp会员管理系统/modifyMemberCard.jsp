<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>会员卡管理</title>                   
</head>
<body>
    <center>
      <form action="" method="post">
        <table align="center">
          <tr align="center"><td><h1>修改会员卡信息</h1></td></tr>
          <tr><td align="right"><a href="viewMemberCard.jsp">返回</a></td></tr>
          <tr><td><hr/></td></tr>
           <tr><td>请输入需要修改的会员卡号:<input type="text" name="id"></td></tr>
          <tr><td>新的折扣级别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="tel"></td></tr><br>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="重置"></td></tr>
        </table><br>
       
        <table border=1 align="center" width="560" celpadding="0" celspacing="0">
        <tr align="center"><td>会员卡号</td><td>会员卡类型</td><td>折扣级别</td><td>余额</td></tr>
         <%
          request.setCharacterEncoding("gb2312");
          Class.forName("com.hxtt.sql.access.AccessDriver");
    	  Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	  Statement statement=conn.createStatement();	      
           ResultSet rst=null;
           String id=request.getParameter("id");
           String tel=request.getParameter("tel");
           rst=statement.executeQuery("Select * from MemberCard");
           if((id==null||id=="")&&(tel==null||tel=="")){ 
                   rst=statement.executeQuery("Select * from MemberCard");}
           else if(!(id==null||id=="")&&!(tel==null||tel=="")){
           String sql="update MemberCard set discount=? where idcard="+id;
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setString(1,tel);
           ps.executeUpdate(); 
           out.print("<script>alert('修改成功！')</script>");
           } 
           else{
           out.print("<script>alert('修改失败！')</script>");
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