<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>

<%
String  name=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
%>

<table border="1">
<tr>
<th>fullname</th>
<th>hallticketno</th>
<th>mobile</th>
<th>email</th>
<th>gender</th>
<th>address</th>
<th>branch</th>
<th>year</th>
<th>Action</th>


</tr>



<%
try
{
   

   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student");
	while(rs.next())
	{
		
		name=rs.getString("sname");
		 s=rs.getString("hallticket");
		 s1=rs.getString("mobile");
		 s2=rs.getString("email");
		 s3=rs.getString("gender");
		 s4=rs.getString("addresss");
		 s5=rs.getString("branch");
		 s6=rs.getString("year");
		

		%>
		
		
		<tr>
		<td><%=name%></td>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=s5%></td>		
		<td><%=s6%></td>
		 <td><a href="task.jsp">Task</a>
	</td>
		
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
</html>