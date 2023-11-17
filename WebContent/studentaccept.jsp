<%@page import="action.Email"%>
<%@page import="java.util.Random"%>
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
String s1=null,eemail=null;
s1=request.getParameter("companyname");
System.out.println(s1);
eemail=request.getParameter("mail");

System.out.println(eemail);

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update companyrecruit set status=1 where company='"+s1+"'");
	
	if(i>0)
	{
		out.println(s1);
		String sub="your usr details";  
	   	   String msg="hi your haltiktno number  "+s1+"   and your are shortlisted ";
	   	   Email.sendMail(sub, msg, eemail);
  	 %>
   	 <script type="text/javascript">
   	 
   	 alert("succes");   	 
   	 </script>
   	<%		}
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