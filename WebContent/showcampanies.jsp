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

</head>
<body style="background-color:white;">

<div class="row"><br><br><br><br><br><br></div>

<div class="col-sm-3"></div>
<div class="col-sm-6">
<table border="1">
<tr>
<th>company_name</th>
<th>address</th>
<th>email</th>
<th>phone</th>

</tr>



<%
String s=null,s1=null,s2=null,s3=null;
try
{
   
   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from company");
	while(rs.next())
	{
		
		 s=rs.getString("companyname");
		 s1=rs.getString("addresss");
		 s2=rs.getString("email");
		 s3=rs.getString("mobile");
		%>
		
		<tr><td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		</tr>
		
		
		
		
			</div>
		<%
	
	}
	%>
	</table>
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