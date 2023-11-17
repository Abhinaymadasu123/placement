<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("password");
String idd=request.getParameter("id");
String ss;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student where sname='"+s1+"' and password='"+s2+"'");

if(rs.next())
{
session.setAttribute("mysid",rs.getString("id"));
response.sendRedirect("student.jsp");
}

else
{
	
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