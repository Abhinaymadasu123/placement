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
<div class="row"><br></div>
<div class="row">
<div class="col-sm-10">
<%
String ss=session.getAttribute("my").toString();
String  name=null,sid=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
%>


<table class="table table-striped" border="1">
<tr>
<th>fullname</th>
<th>hallticketno</th>
<th>mobile</th>
<th>email</th>
<th>gender</th>
<th>address</th>
<th>branch</th>
<th>year</th>



</tr>



<%
try
{
   

   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from task where cname='"+ss+"' and status=2");
	while(rs.next())
	{
		
		
		name=rs.getString("sname");
		sid=rs.getString("sid");
		s7=rs.getString("cname");
		
		ResultSet rs1=st1.executeQuery("select * from student where id='"+sid+"'");
		while(rs1.next())
		{
		 s=rs1.getString("hallticket");
		 
		 s1=rs1.getString("mobile");
		 s2=rs1.getString("email");
		 s3=rs1.getString("gender");
		 s4=rs1.getString("addresss");
		 s5=rs1.getString("branch");
		 s6=rs1.getString("year");
		
		}
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
		
		
	 </tr>
			
		<%
	}
	%>
	</table><br></div></div></div>
	
	
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