<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String  name=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
%>

<h2 style="color:white;">Selected Students</h2>
<table border="1" style="color:white;">
<tr>
<th>Student id</th>
<th>Student Name</th>
<th>Company</th>



</tr>



<%
try
{
   

   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from task where status=2");
	while(rs.next())
	{
		
		name=rs.getString("sid");
		 s=rs.getString("sname");
		 s2=rs.getString("cname");
		 
		

		%>
		
		
		<tr>
		<td><%=name%></td>
		<td><%=s%></td>
	
		<td><%=s2%></td>
				
	 </tr>
			
		<%
	}
	%>
	</table><br>
	
	
	<%
	con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>