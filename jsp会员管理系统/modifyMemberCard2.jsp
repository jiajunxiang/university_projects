<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*,java.lang.*" %>
<html>
<head>
<title>��Ա������</title>                   
</head>
<body>
    <center>
      <form action="" method="post">
        <table align="center">
          <tr align="center"><td><h1>�޸Ļ�Ա����Ϣ</h1></td></tr>
          <tr><td align="right"><a href="viewMemberCard.jsp">����</a></td></tr>
          <tr><td><hr/></td></tr>
           <tr><td>��������Ҫ��ֵ�Ļ�Ա����:<input type="text" name="id"></td></tr>
          <tr><td>��ֵ���:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="text" name="tel"></td></tr><br>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="����"></td></tr>
        </table><br>
       
        <table border=1 align="center" width="560" celpadding="0" celspacing="0">
        <tr align="center"><td>��Ա����</td><td>��Ա������</td><td>�ۿۼ���</td><td>���</td></tr>
         <%
          
          request.setCharacterEncoding("gb2312");
          Class.forName("com.hxtt.sql.access.AccessDriver");
    	  Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	  Statement statement=conn.createStatement();	      
           ResultSet rst=null;
           String id=request.getParameter("id");
           String tel=request.getParameter("tel");
         
           if((id==null||id=="")&&(tel==null||tel=="")){ 
               rst=statement.executeQuery("Select * from MemberCard");}
           if(!(id==null||id=="")&&!(tel==null||tel=="")){
           rst=statement.executeQuery("select * from MemberCard where idcard="+id);
              if(rst.next()){
					double aa=Double.parseDouble(rst.getString("balance"))+Double.parseDouble(tel);
					String z=Double.toString(aa);	        
					String sql="update MemberCard set balance=? where idcard="+id;
                    PreparedStatement ps=conn.prepareStatement(sql);         
                    ps.setString(1,z);         
                    ps.executeUpdate();
                    out.print("<script>alert('��ֵ�ɹ���')</script>");
                    } 
                 else{
                      out.print("<script>alert('��ֵʧ�ܣ�')</script>");
                    }  
              }       
           try{   
                rst=statement.executeQuery("Select * from MemberCard");       	  
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