<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<table border="1">
<tr><th>Student Id</th><th>Student Name</th><th>Percentage</th><th>Task</th></tr>
<%
String ss=session.getAttribute("my").toString();
String  s=null,s1=null,s2=null,s3=null,s4=null,s5=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from recuritment where status=1 and companyname='"+ss+"'");
	while(rs.next())
	{
	 s=rs.getString("id");
	 s1=rs.getString("student_name");
	 s2=rs.getString("rpercentage");
	 s5=rs.getString("companyname");
	 %>
	 
	 <tr><td><%=s %></td><td><%=s1 %></td><td><%=s2 %></td><td><a href="task.jsp?id=<%=s%>&student_name=<%=s1%>&rpercentage=<%=s2 %>&companyname=<%=s5%>"><input type="submit" value="Task" class="btn btn-info"></a></td></tr>
	 
	 <%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>




</table>










</div>
<div class="col-sm-3"></div>

</div>
</body>
</html>