<%-- <%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="java.util.Properties"%> --%>

<%@page import="action.Email"%>
<%@page import="java.util.Random"%>
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
<body>
<%
String s1=null,email=null;
s1=request.getParameter("hal");
email=request.getParameter("email");
String Id=request.getParameter("Id");

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update student set status='1' where  hallticket='"+s1+"'");
	
	if(i>0)
	{
		String sub="your usr details";  
   	   String msg="hi your haltiktno number  "+s1+"   and your are shortlisted ";
   	   Email.sendMail(sub, msg, email);
   	 %>
   	 <script type="text/javascript">
   	 
   	 alert("succes");   	 
   	 </script>
   	
   	
   	 <%
	
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

