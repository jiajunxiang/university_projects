<%@ page contentType="text/html;charset=gb2312" import="java.util.*,java.sql.*" %>
<html>
<head>
<title>��Ա��Ϣ����</title>                   
</head>
<body>
    <center>
      <form action="" method="post">
        <table align="center">
          <tr align="center"><td><h1>�޸Ļ�Ա��Ϣ</h1></td></tr>
          <tr><td align="right"><a href="viewMember.jsp">����</a></td></tr>
          <tr><td><hr/></td></tr>
           <tr><td>��������Ҫ�޸ĵĻ�Ա��:<input type="text" name="id"></td></tr>
          <tr><td>�µĻ�Ա��:&nbsp;&nbsp;<input type="text" name="name"></td></tr>
          <tr><td>�µ���ϵ��ʽ:<input type="text" name="tel"></td></tr>
          <tr><td>�µĵ�ַ:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address"></td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="����"></td></tr>
        </table><br>
       
        <table border=1 align="center" width="560" celpadding="0" celspacing="0">
        <tr align="center"><td>��Ա��</td><td>��Ա��</td><td>�Ա�</td><td>��ϵ��ʽ</td><td>��ַ</td></tr>
         <%
          request.setCharacterEncoding("gb2312");
          Class.forName("com.hxtt.sql.access.AccessDriver");
    	  Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	  Statement statement=conn.createStatement();	      
           ResultSet rst=null;
           String id=request.getParameter("id");
           String name=request.getParameter("name");
           String tel=request.getParameter("tel");
           String address=request.getParameter("address");
           rst=statement.executeQuery("Select * from Member");
           if((id==null||id=="")&&(name==null||name=="")&&(tel==null||tel=="")&&(address==null||address=="")){ 
                   rst=statement.executeQuery("Select * from Member");}
           else if(!(id==null||id=="")&&!(name==null||name=="")&&!(tel==null||tel=="")&&!(address==null||address=="")){
           String sql="update Member set name=?,tel=?,address=? where id="+id;
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setString(1,name);
           ps.setString(2,tel);
           ps.setString(3,address);
           ps.executeUpdate(); 
           out.print("<script>alert('�޸ĳɹ���')</script>");
           } 
           else{
           out.print("<script>alert('�޸�ʧ�ܣ�')</script>");
           }       
           try{          	  
       	        while(rst.next()) {
        	    out.println("<tr align=center>");   	
   				out.println("<td>"+rst.getString("id")+"</td>");
   	    		out.println("<td>"+rst.getString("name")+"</td>");
   	    		out.println("<td>"+rst.getString("sex")+"</td>");
   	    	    out.println("<td>"+rst.getString("tel")+"</td>");
   	    		out.println("<td>"+rst.getString("address")+"</td>");
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