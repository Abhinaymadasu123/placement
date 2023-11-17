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
<body>
<%
String s1=request.getParameter("f1");
String s2=request.getParameter("f2");
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vgse","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update student set password='"+s2+"' where ht_no='"+s1+"'");
	if(i>0)
	{
		out.println("password changed");
	}
	else
	{
		int i1=st.executeUpdate("update hod set password='"+s2+"' where hod_id='"+s1+"'");
		if(i1>0)
		{
			out.println("password changed");
		}
	else
	{
		int i2=st.executeUpdate("update faculty set password='"+s2+"' where faculty_id='"+s1+"'");
		if(i2>0)
		{
			out.println("password changed");
		}
	}
	}
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>