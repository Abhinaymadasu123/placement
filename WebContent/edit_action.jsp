<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
String s1=request.getParameter("f1");
String s2=request.getParameter("f2");
String s3=request.getParameter("f3");
String s4=request.getParameter("f4");
String s6=request.getParameter("f5");


try
{

	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update student set hallticket='"+s2+"',branch='"+s3+"',percentage='"+s4+"',year='"+s6+"' where sname='"+s1+"'");
	
	con.close();
	if(i>0)
	{
		out.println("successfull");
	}
	else
	out.println("error");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>