<%@page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<title>��Ա��Ϣ����ϵͳ</title>
</head>
<body>
<center>
      <form action="" method="post">
        <table align="center">
          <tr><td><h1>��ӻ�Ա��Ϣ</h1></td></tr>          
          <tr><td align="right"><a href="viewMember.jsp">����</a></td></tr>
          <tr><td><hr/></td></tr>
          <tr><td>��Ա��:&nbsp;&nbsp;<input type="text" name="id"></tr><br>
          <tr><td>��Ա��:&nbsp;&nbsp;<input type="text" name="name"></td></tr>
          <tr><td>�Ա�:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sex"></td></tr>
          <tr><td>��ϵ��ʽ:<input type="text" name="tel"></td></tr>
          <tr><td>��ַ:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address"></td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="�ύ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="����"></td></tr>
        </table>
        <table border=1 width="560" celpadding="0" celspacing="0" >
        <tr align="center"><td>��Ա��</td><td>��Ա��</td><td>�Ա�</td><td>��ϵ��ʽ</td><td>��ַ</td></tr>
         <%
          request.setCharacterEncoding("gb2312");
        
          Class.forName("com.hxtt.sql.access.AccessDriver");
    	  Connection conn=DriverManager.getConnection("jdbc:Access:///d:/member.mdb");
    	  Statement statement=conn.createStatement();	      
           ResultSet rst=null;
           String id=request.getParameter("id");
           String name=request.getParameter("name");
           String sex=request.getParameter("sex");
           String tel=request.getParameter("tel");
           String address=request.getParameter("address");
           rst=statement.executeQuery("Select * from Member");
           if((id==null||id=="")&&(name==null||name=="")&&(sex==null||sex=="")&&(tel==null||tel=="")&&(address==null||address=="")){ 
                   rst=statement.executeQuery("Select * from Member");}
           else if(!(id==null||id=="")&&(name==null||name=="")&&(sex==null||sex=="")&&(tel==null||tel=="")&&(address==null||address=="")){
           String sql="insert into Member(id,name,sex,tel,address) values(?,?,?,?,?)";
           PreparedStatement ps=conn.prepareStatement(sql);
           ps.setString(1,id);
           ps.setString(2,name);
           ps.setString(3,sex);
           ps.setString(4,tel);
           ps.setString(5,address);
           ps.executeUpdate(); 
           }
           else{
             out.print("<script>alert('�û���ע�ᣬ���������룡')</script>");
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