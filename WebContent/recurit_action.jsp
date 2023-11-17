
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC >
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
String s5=request.getParameter("f5");
String s6=request.getParameter("f6");
String cid=session.getAttribute("cid").toString();
int status=0;

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();

	int i=st.executeUpdate("insert into companyrecruit(cid,recruitmentdate,vacancy,percentage,jobrole,package,year,status) values('"+cid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+status+"')");

	if(i>0)
	{
		
		out.println("sucess");
	
			}
	else
	{
		out.println("Connection Error");
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