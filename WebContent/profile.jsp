<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>

</head>
<body >
<div class="container-fluid">

<div class="row">
<div class="col-sm-10">
<h2 align="center">student details</h2>
<table class="table table-striped">

<tr>
<th>name</th>
<th>hallticket</th>
<th>mobile</th>
<th>email</th>
<th>gender</th>
<th>address</th>
<th>branch</th>
<th>Percentage</th>
<th>year</th>
<th>ACTION</th>

</tr>



<%

String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null;
try
{
	
   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student where status=0");
	while(rs.next())
	{
	
		 s=rs.getString("sname");
		 s1=rs.getString("hallticket");
		 s2=rs.getString("mobile");
		 s3=rs.getString("email");
		 s4=rs.getString("gender");
		 s5=rs.getString("addresss");
		 s6=rs.getString("branch");
		 s7=rs.getString("percentage");
		 s8=rs.getString("year");

		%>
		
		
		<tr>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=s5%></td>
		<td><%=s6%></td>
		<td><%=s7%></td>
		<td><%=s8%></td>
	
	 <td><a href="statusaccept1.jsp?hal=<%=s1%>&email=<%=s3 %>&Id=<%=rs.getInt("Id")%>">accept</a>
	 <a href="statusreject1.jsp?hal=<%=s1%>">reject</a></td>
		
	 </tr>
			
		<%
	}
	%>
	</table>
	</div>
	
	
	<%
	con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</div>
</div>
</body>
</html>