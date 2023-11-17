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
String s=null,s1=null,s2=null,s3=null,s4=null;
%>
<div class="container-fluid">
<div class="row"><br><br></div>
<div class="row">
<div class="col-sm-3"><br></div>
<div class="col-sm-6">

<table class="table table-striped" border="1">
<tr>
<th>Student Id</th>
<th>Student Name</th>
<th>Assigned Task</th>
<th>Show Task</th>
<th colspan="2">Action</th>



</tr>

<%
try
{
	 String se=session.getAttribute("my").toString();
  String ss2=null;
   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
    Statement st1=con.createStatement();
    Statement st2=con.createStatement();
		ResultSet rs1=st1.executeQuery("select * from task where cname='"+se+"'");
	while(rs1.next())
	{
		 s1=rs1.getString("sid");
		  s2=rs1.getString("sname");
		 s3=rs1.getString("task");
		 s4=rs1.getString("taskans");
		 
		 ResultSet rs2=st2.executeQuery("select * from student where sname='"+s2+"'");
			
			while(rs2.next())
			{
				 ss2=rs2.getString("email");
		%>
	<tr>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
	
		<td><a href="selectstudforcom.jsp?sid=<%=s1%>&student_name=<%=s2%>&task=<%=s3%>&email=<%=ss2%>" class="btn btn-success">Accept</a></td><td><a href="rejectjsp.jsp?sid=<%=s1%>&student_name=<%=s2%>&task=<%=s3%>&email=<%=ss2%>" class="btn btn-danger">Reject</a>   </td>
		
	 
	 </tr>
			
		<%
			}
	}
	%>
	</table></div>
	
	<div class="col-sm-3"><br></div>
	</div>
	<%
	
	%>
	<br>
	
	
	<%
	
	con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</div>

</body>
</html>