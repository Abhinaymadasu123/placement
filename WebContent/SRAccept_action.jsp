<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String S1=request.getParameter("companyname");
String s2=request.getParameter("recruitmentdate");
String s5=request.getParameter("rpercentage");
String s3=request.getParameter("id");
String s4=request.getParameter("student_name");
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update recuritment set status=1 where student_name='"+s4+"'");
	if(i>0)
	{
		out.println("updated");
		
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>