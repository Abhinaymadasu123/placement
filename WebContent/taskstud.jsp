<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>
<%
String s=null,s1=null,s2=null;
%>

<table border="1">
<tr>
<th>company</th>
<th>task</th>
<th>action</th>


</tr>



<%
try
{
	
   String ss=session.getAttribute("mysid").toString();
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st1=con.createStatement();
	Statement st2=con.createStatement();
	ResultSet rs=st1.executeQuery("select * from task where sid='"+ss+"'");
	while(rs.next())
	{
		//String id=rs.getString("idd");
		//ResultSet rs1=st2.executeQuery("select * from company where id='"+id+"' ");
		//if(rs1.next())
		//{
			 //s=rs1.getString("companyname");
		//}
		s2=rs.getString("sid");
		s=rs.getString("cname");
		 s1=rs.getString("task");

		%>
		
		
		<tr>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><a href="writetask.jsp?"><input type="submit" value="Give" class="btn btn-success"></a>   </td>
		
	 
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