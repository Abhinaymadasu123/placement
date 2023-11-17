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
String s1=request.getParameter("name");
System.out.println(s1);
String s2=request.getParameter("pwd");
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	
	System.out.println(s2);
	ResultSet rs=st.executeQuery("select * from company where companyname='"+s1+"' and password='"+s2+"'");
	if(rs.next())
	{

		session.setAttribute("my", rs.getString("companyname"));
		session.setAttribute("cid", rs.getInt("id"));
		
	out.println("success");
		
	response.sendRedirect("companyinfo.jsp");
	}
	else{
		
		out.println("loginfail");
		
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