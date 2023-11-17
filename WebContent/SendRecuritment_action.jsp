<%@page import="java.sql.*"%>
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
String s1=request.getParameter("companyname");
String s2=request.getParameter("recruitmentdate");
String s5=request.getParameter("rpercentage");
String s3=request.getParameter("jobrole");
String s4=request.getParameter("package");
String s6=request.getParameter("cid");
String s7=request.getParameter("id");
String s8=request.getParameter("sname");
int status=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into recuritment(companyid,companyname,recruitmentdate,rpercentage,jobrole,package,id,student_name,status) values('"+s6+"','"+s1+"','"+s2+"','"+s5+"','"+s3+"','"+s4+"','"+s7+"','"+s8+"','"+status+"') ");
	if(i>0)
	{
		//response.sendRedirect("aftertpo.jsp");
		out.println("successfull send");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>



</body>
</html>