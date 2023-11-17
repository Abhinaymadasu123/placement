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

<div class="container-fluid">
<table class="table table-striped">
<div class="row">
<div class="col-sm-8">

<h2>company details</h2>
<tr>
<th>companyname</th>
<th>mail</th>
<th>recruitment date</th>
<th>vacancy</th>
<th>percentage</th>
<th>jobrole</th>
<th>package</th>
<th>year</th>
<th>Action</th>
</tr>
<%
String  name=null,email=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	ResultSet rs=st.executeQuery("select * from recuritment where percentage='"+s2+"' ");
	while(rs.next())
	{
		String cid=rs.getString("cid");
		
		ResultSet rs1=st1.executeQuery("select * from student where id='"+cid+"' ");
		if(rs1.next())
		{
			name=rs1.getString("companyname");
			email=rs1.getString("email");
		}
		
		 s=rs.getString("recruitmentdate");
		 //s1=rs.getString("vacancy");
		 s2=rs.getString("percentage");
		 s3=rs.getString("jobrole");
		 s4=rs.getString("package");
		 s5=rs.getString("year");
		

		%>
		
		
		<tr>
		<td><%=name%></td>
		<td><%=email%></td>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=s5%></td>
		<td>
		<a href="studentaccept.jsp?companyname=<%=name%>&mail=<%=email%>" >accept</a>
	 <a href="">reject</a></td>
	 </tr>
			
		<%
	}
	%>
	</table></div>
	
	
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