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
String s1=request.getParameter("id");
int sid=Integer.parseInt(s1);
String s2=request.getParameter("student_name");
String s3=request.getParameter("rpercentage");
String s4=request.getParameter("companyname");
String s5=request.getParameter("task");
int status=0;
String ans="Answer";
System.out.println(s1);
//String s6=session.getAttribute("my").toString();
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into task(sid,task,taskans,sname,cname,status) values('"+s1+"','"+s5+"','"+ans+"','"+s2+"','"+s4+"','"+status+"') ");
	con.close();
	if(i>0)
	{
		out.println("sucessfull");	
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