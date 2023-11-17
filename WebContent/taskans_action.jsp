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
//String s1=request.getParameter("sid");
String s2=request.getParameter("taskans");
String id=session.getAttribute("mysid").toString();
int sii=Integer.parseInt(id);

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update task set taskans='"+s2+"',status='2' where sid='"+id+"' ");
	if(i>0)
	{
		out.println("answer updated successfully");
	}else
	{
		out.println("not sucessful");	
	}
}
catch(Exception e)
{
out.println(e);	
}
	%>
</body>
</html>